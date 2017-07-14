/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UBean;

import java.rmi.RMISecurityManager;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.util.ArrayList;

/**
 *
 * @author Abhishek
 */
public class DataAccess implements java.io.Serializable {

    public DataAccess() {
    }

    public static void main(String[] args) {
     DataAccess da=new DataAccess();
     System.out.println(da.searchItem("2016-04-24","fa","fa").get(0));
     }
    public int executeUpdate(String sql) {
        int result = 0;
        try {
            DataHandler da = getDataHandler();
            result = da.executeUpdate(sql);
        } catch (Exception e) {
            System.out.println("DataClient exception: " + e);
        }
        return result;
    }

    public ArrayList execute(String sql) {
        ArrayList result = new ArrayList();
        try {
            DataHandler da = getDataHandler();

            result = da.execute(sql);

        } catch (Exception e) {
            System.out.println("DataClient exception: " + e);
        }
        return result;
    }

    private DataHandler getDataHandler() {
        DataHandler dh = null;
        try {
            //System.setProperty("java.rmi.server.codebase","file:/D:/AucDataServer/build/classes/aucdataserver");
            System.setProperty("java.security.policy", "file:/D:/auc/src/java/UBean/security.policy");
            System.setSecurityManager(new RMISecurityManager());
            Registry registry = LocateRegistry.getRegistry(1099);
            dh = (DataHandler) registry.lookup("Data");
            //hello = (AdditionInterface)Naming.lookup("rmi://localhost/Data");
        } catch (Exception e) {
            System.out.println("DataClient exception: " + e);
        }
        return dh;
    }

    public ArrayList verifyUser(String s1, String s2) {
        ArrayList result = new ArrayList();
        try {
            DataHandler da = getDataHandler();
            result = da.verifyUser(s1, s2);
        } catch (Exception e) {
            System.out.println("DataClient exception: " + e);
        }
        return result;
    }
    
    public ArrayList searchItem(String s1, String s2,String s3) {
        ArrayList result = new ArrayList();
        try {
            DataHandler da = getDataHandler();
            result = da.searchItem(s1, s2,s3);
        } catch (Exception e) {
            System.out.println("DataClient exception: " + e);
        }
        return result;
    }
    
    public ArrayList getItems(String s1) {
        ArrayList result = new ArrayList();
        try {
            DataHandler da = getDataHandler();
            result = da.getItems(s1);
        } catch (Exception e) {
            System.out.println("DataClient exception: " + e);
        }
        return result;
    }
    
    public ArrayList getItemDetails(String s1) {
        ArrayList result = new ArrayList();
        try {
            DataHandler da = getDataHandler();
            result = da.getItemDetails(s1);
        } catch (Exception e) {
            System.out.println("DataClient exception: " + e);
        }
        return result;
    }
    
    public ArrayList getUserDetails(String s1) {
        ArrayList result = new ArrayList();
        try {
            DataHandler da = getDataHandler();
            result = da.getUserDetails(s1);
        } catch (Exception e) {
            System.out.println("DataClient exception: " + e);
        }
        return result;
    }
    
    public ArrayList getHosted(String s1) {
        ArrayList result = new ArrayList();
        try {
            DataHandler da = getDataHandler();
            result = da.getHosted(s1);
        } catch (Exception e) {
            System.out.println("DataClient exception: " + e);
        }
        return result;
    }
    
    public boolean putBid(String s1,String s2,String s3,long l) {
        boolean result = false;
        try {
            DataHandler da = getDataHandler();
            result = da.putBid(s1,s2,s3,l);
        } catch (Exception e) {
            System.out.println("DataClient exception: " + e);
        }
        return result;
    }
}
