<%-- 
    Document   : buffer
    Created on : 23 Apr, 2016, 12:36:39 AM
    Author     : Abhishek
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Date d=new Date();
    long l1=d.getTime();
    l1=l1+5000;
    long l2=d.getTime();
    while(l1>l2){
        l2=(new Date()).getTime();
    }
    response.sendRedirect("product_details.jsp?id="+request.getQueryString().split("=")[1]);
    %>