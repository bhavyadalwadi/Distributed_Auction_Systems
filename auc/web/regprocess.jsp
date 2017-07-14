<%-- 
    Document   : regprocess
    Created on : 23 Apr, 2016, 1:52:30 AM
    Author     : Abhishek
--%>

<%@page import="UBean.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getParameter("name1").isEmpty()||request.getParameter("name2").isEmpty()||request.getParameter("email").isEmpty()||request.getParameter("pass")==null||request.getParameter("phn").isEmpty()||request.getParameter("gen").isEmpty()||request.getParameter("addr").isEmpty()||request.getParameter("pncd").isEmpty()||request.getParameter("city").isEmpty()||request.getParameter("state").isEmpty()){
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
        request.getRequestDispatcher("register.jsp").include(request, response);
    }
    DataAccess da = new DataAccess();
    da.executeUpdate("INSERT INTO user (firstname, lastname, email, password, phone, gender, address, pincode, city, state) VALUES ('"
            + request.getParameter("name1") + "','"
            + request.getParameter("name2") + "','"
            + request.getParameter("email") + "','"
            + request.getParameter("pass") + "','"
            + request.getParameter("phn") + "','"
            + request.getParameter("gen") + "','"
            + request.getParameter("addr") + "','"
            + request.getParameter("pncd") + "','"
            + request.getParameter("city") + "','"
            + request.getParameter("state") + "')");
    response.sendRedirect("login.jsp");
%>
