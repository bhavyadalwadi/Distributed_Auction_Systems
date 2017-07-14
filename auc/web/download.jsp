<%-- 
    Document   : download
    Created on : 22 Apr, 2016, 1:38:57 PM
    Author     : Abhishek
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="UBean.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getQueryString() == null || request.getQueryString().split("=").length != 2) {
        response.sendRedirect("home.jsp");
    }
    DataAccess da = new DataAccess();
    ArrayList list;
    list = da.getItemDetails(request.getQueryString().split("=")[1]);
    String filename = ((HashMap) list.get(0)).get("descfile").toString();
    response.setContentType("APPLICATION/OCTET-STREAM");
    response.setHeader("Content-Disposition", "attachment; filename=\"" + request.getQueryString().split("=")[1]+filename.substring(filename.lastIndexOf("."),filename.length()) + "\"");
    //response.sendRedirect(filename.replace("/", "\\"));
    java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filename.replace("/", "\\"));

    int i;
    while ((i = fileInputStream.read()) != -1) {
        out.write(i);
    }
    fileInputStream.close();
%>