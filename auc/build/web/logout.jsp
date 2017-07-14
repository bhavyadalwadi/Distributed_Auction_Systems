<%-- 
    Document   : logout
    Created on : 22 Apr, 2016, 11:29:13 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("user")!=null)
        session.removeAttribute("user");
    response.sendRedirect("home.jsp");
    %>