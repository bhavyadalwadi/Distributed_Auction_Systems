<%-- 
    Document   : sellprocess
    Created on : 22 Apr, 2016, 3:07:42 AM
    Author     : Abhishek
--%>
<%@page import="java.lang.Math"%>
<%@page import="UBean.DataAccess"%>
<%@page import="java.io.File"%>
<%@page import="java.nio.file.Path"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
    }
    DataAccess da = new DataAccess();
    MultipartRequest m = new MultipartRequest(request, "D:\\auc\\web\\themes\\temp1", 5024 * 1024, new FileRenamePolicy() {
        @Override
        public File rename(File arg0) {
            boolean result;
            result = arg0.renameTo(new File(arg0
                    .getParentFile().getAbsolutePath()
                    + File.separator + Math.random() * 1000 + arg0.getName()));
            if (result) {
                //System.out.println("Renamed");
            }
            return arg0;
        }
    });
    if (m.getParameter("name1").isEmpty() || m.getParameter("type").isEmpty() || m.getParameter("minbid").isEmpty() || m.getParameter("end").isEmpty()) {
        out.print("<div class=\"container\">"
                + "<div class=\"row\">"
                + "<div class=\"span9\">"
                + "<div class=\"well\">"
                + "<div class=\"form-horizontal\">"
                + "<h5><p><sup>*</sup>Please fill required fields</p></h5>"
                + "</div>"
                + " </div>"
                + "</div>"
                + "</div>"
                + "</div>");
        request.getRequestDispatcher("sell.jsp").include(request, response);
    }
    int key = da.executeUpdate("insert into item (name,type,description,minbid,end,sellerid) values ('"
            + m.getParameter("name1") + "','"
            + m.getParameter("type") + "','"
            + m.getParameter("description") + "','"
            + m.getParameter("minbid") + "','"
            + m.getParameter("end") + "','"
            + ((UBean.User) (session.getAttribute("user"))).getUserid() + "')");
    //response.sendRedirect(""+key);
    /*response.sendRedirect("insert into item (name,type,description,minbid,end,sellerid) values ('"
     +request.getParameter("name1")+"','"
     +request.getParameter("type")+"','"
     +request.getParameter("description")+"','"
     +request.getParameter("minbid")+"','"
     +request.getParameter("end")+"','"
     +((UBean.User)(session.getAttribute("user"))).getUserid()+"')");*/
    File f1 = m.getFile("descfile");
    File f2 = m.getFile("image");
    if (f1==null || f2==null || !f1.exists() || !f2.exists()) {
        out.print("<div class=\"container\">"
                + "<div class=\"row\">"
                + "<div class=\"span9\">"
                + "<div class=\"well\">"
                + "<div class=\"form-horizontal\">"
                + "<h5><p><sup>*</sup>Please fill required fields</p></h5>"
                + "</div>"
                + " </div>"
                + "</div>"
                + "</div>"
                + "</div>");
        request.getRequestDispatcher("sell.jsp").include(request, response);
    }
    File f3 = new File(f1.getParentFile().getAbsolutePath() + File.separator + key + f1.getName());
    f1.renameTo(f3);
    File f4 = new File(f2.getParentFile().getAbsolutePath() + File.separator + key + f2.getName());
    f2.renameTo(f4);
    da.executeUpdate("update item set image='themes/temp1/" + f4.getName().toString() + "',descfile='" + f3.getAbsolutePath().replaceAll("\\\\", "/") + "' where itemid='" + key + "'");
    response.sendRedirect("buffer.jsp?id=" + key);
%>