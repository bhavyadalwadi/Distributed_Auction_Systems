<%-- 
    Document   : updtitmprc
    Created on : 24 Apr, 2016, 2:00:10 AM
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
    if (request.getQueryString() == null || request.getQueryString().split("=").length != 2) {
            response.sendRedirect("home.jsp");
        }
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
        request.getRequestDispatcher("updtitem.jsp?id="+request.getQueryString().split("=")[1]).include(request, response);
    }
    da.executeUpdate("update item set name='"
            + m.getParameter("name1") + "',type='"
            + m.getParameter("type") + "',description='"
            + m.getParameter("description") + "',minbid='"
            + m.getParameter("minbid") + "',end='"
            + m.getParameter("end") + "' where itemid='" +request.getQueryString().split("=")[1] + "'");
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
    if (f1!=null && f1.exists()) {
        File f3 = new File(f1.getParentFile().getAbsolutePath() + File.separator + request.getQueryString().split("=")[1] + f1.getName());
        f1.renameTo(f3);
        da.executeUpdate("update item set descfile='" + f3.getAbsolutePath().replaceAll("\\\\", "/") + "' where itemid='" + request.getQueryString().split("=")[1] + "'");
    }
    if (f2!=null && f2.exists()) {
        File f4 = new File(f2.getParentFile().getAbsolutePath() + File.separator + request.getQueryString().split("=")[1] + f2.getName());
        f2.renameTo(f4);
        da.executeUpdate("update item set image='themes/temp1/" + f4.getName().toString() + "' where itemid='" + request.getQueryString().split("=")[1] + "'");
    }
    response.sendRedirect("buffer.jsp?id=" + request.getQueryString().split("=")[1]);
%>