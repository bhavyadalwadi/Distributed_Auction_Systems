<%-- 
    Document   : updtprocess
    Created on : 23 Apr, 2016, 8:53:40 PM
    Author     : Abhishek
--%>

<%@page import="UBean.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("user")==null)
        response.sendRedirect("login.jsp");
    if(request.getParameter("name1").isEmpty()||request.getParameter("name2").isEmpty()||request.getParameter("email").isEmpty()||request.getParameter("pass").isEmpty()||request.getParameter("phn").isEmpty()||request.getParameter("gen").isEmpty()||request.getParameter("addr").isEmpty()||request.getParameter("pncd").isEmpty()||request.getParameter("city").isEmpty()||request.getParameter("state").isEmpty()){
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
        request.getRequestDispatcher("profile.jsp").include(request, response);
    }
    DataAccess da = new DataAccess();
    da.executeUpdate("update user set firstname='"
            + request.getParameter("name1") + "',lastname='"
            + request.getParameter("name2") + "',email='"
            + request.getParameter("email") + "',password='"
            + request.getParameter("pass") + "',phone='"
            + request.getParameter("phn") + "',gender='"
            + request.getParameter("gen") + "',address='"
            + request.getParameter("addr") + "',pincode='"
            + request.getParameter("pncd") + "',city='"
            + request.getParameter("city") + "',state='"
            + request.getParameter("state") + "' where userid='"+((UBean.User)(session.getAttribute("user"))).getUserid()+"'");
    response.sendRedirect("profile.jsp");
%>