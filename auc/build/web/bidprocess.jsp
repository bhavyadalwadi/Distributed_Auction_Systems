<%-- 
    Document   : bidprocess
    Created on : 23 Apr, 2016, 2:14:25 AM
    Author     : Abhishek
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="UBean.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
    }
    if (request.getQueryString() == null || request.getQueryString().split("=").length != 2) {
        response.sendRedirect("home.jsp");
    }
    DataAccess da = new DataAccess();
    if (da.putBid(request.getParameter("bid"), ((UBean.User) (session.getAttribute("user"))).getUserid() + "", request.getQueryString().split("=")[1], (new Date()).getTime())) {
        out.println("<div class=\"container\"><div class=\"row\"><div class=\"span3\"></div><div class=\"span6\"><h3>Your bid is successfully placed!</h3></div></div></div>");
    } else {
        out.println("<div class=\"container\"><div class=\"row\"><div class=\"span3\"></div><div class=\"span6\"><h3>Try higher bid!</h3></div></div></div>");
    }
    RequestDispatcher rd = request.getRequestDispatcher("product_details.jsp?id=" + request.getQueryString().split("=")[1]);
    //out.println(response..getHeader("Location"));
    //String a[]=(String[])response.getHeaderNames().toArray();
    rd.include(request, response);
%>