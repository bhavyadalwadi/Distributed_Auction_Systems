package UBean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author Abhishek
 */
public class DataAccess implements DataHandler, java.io.Serializable {

    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/Auction";
    static final String USER = "root";
    static final String PASS = "";
    static long timeStamp = 0;

    public DataAccess() {
    }

    /*public static void main(String[] args) {
     DataAccess da = new DataAccess();
     da.executeUpdate("insert into item (name,type,description,minbid,end,sellerid) values ('d','d','d','0','2016-04-30','0')");
     }*/
    @Override
    public int executeUpdate(String sql) {
        Connection conn = null;
        Statement stmt = null;
        int key = 0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = (Statement) conn.createStatement();
            key = stmt.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                key = rs.getInt(1);
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try
        return key;
    }

    @Override
    public ArrayList execute(String sql) {
        Connection conn = null;
        Statement stmt = null;
        ArrayList list = new ArrayList();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = (Statement) conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            ResultSetMetaData md = rs.getMetaData();
            int columns = md.getColumnCount();
            while (rs.next()) {
                HashMap row = new HashMap(columns);
                for (int i = 1; i <= columns; ++i) {
                    row.put(md.getColumnName(i), rs.getObject(i));
                    //  System.out.print(md.getColumnName(i));
                }
                list.add(row);
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try
        return list;
    }

    @Override
    public ArrayList verifyUser(String s1, String s2) {
        return execute("select * from user where email='" + s1 + "' and password='" + s2 + "'");
    }

    @Override
    public ArrayList searchItem(String s1, String s2, String s3) {
        return execute("select * from item where '" + s1 + "' < end and (name='" + s2 + "' or type='" + s3 + "') order by itemid desc");
    }

    @Override
    public ArrayList getItems(String s1) {
        return execute("select * from item where '" + s1 + "' < end order by itemid desc");
    }

    @Override
    public ArrayList getItemDetails(String s1) {
        return execute("select * from item where itemid='" + s1 + "'");
    }

    @Override
    public ArrayList getUserDetails(String s1) {
        return execute("select * from user where userid='" + s1 + "'");
    }
    
    @Override
    public ArrayList getHosted(String s1) {
        return execute("select * from item where sellerid='" + s1 + "' order by end desc,itemid desc");
    }

    @Override
    public boolean putBid(String s1, String s2, String s3, long l) {
        ArrayList list = getItemDetails(s3);
        if (Double.parseDouble(s1) > Double.parseDouble(((HashMap) list.get(0)).get("maxbid").toString()) && Double.parseDouble(s1) >= Double.parseDouble(((HashMap) list.get(0)).get("minbid").toString())) {
            timeStamp = l;
            executeUpdate("update item set maxbid='" + s1 + "',buyerid='" + s2 + "' where itemid='" + s3 + "'");
            return true;
        }
        if (l < timeStamp && Double.parseDouble(s1) == Double.parseDouble(((HashMap) list.get(0)).get("maxbid").toString()) && Double.parseDouble(s1) >= Double.parseDouble(((HashMap) list.get(0)).get("minbid").toString())) {
            timeStamp = l;
            executeUpdate("update item set maxbid='" + s1 + "',buyerid='" + s2 + "' where itemid='" + s3 + "'");
            return true;
        }
        return false;
    }
}
