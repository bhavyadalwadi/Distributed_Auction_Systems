<%-- 
    Document   : loginprocess
    Created on : 6 Apr, 2016, 12:05:38 AM
    Author     : Abhishek
--%>

<%@page import="java.lang.Integer"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="usr" class="UBean.User"/>  
<jsp:useBean id="da" class="UBean.DataAccess"/> 

<%
    //out.print("1"+request.getParameterNames().hasMoreElements());
    //out.println(request.getParameter("inputEmail1") + request.getParameter("inputPassword1"));
    if (request.getParameter("inputEmail1")==null || request.getParameter("inputPassword1")==null || request.getParameter("inputEmail1").isEmpty() || request.getParameter("inputPassword1").isEmpty()) {
        out.println("<div class=\"container\">"
                + "<div class=\"row\">"
                + "<div class=\"span9\">"
                + "<div class=\"row\">"
                + "<div class=\"span5\">"
                + "</div>"
                + "<div class=\"span4\">"
                + "<div class=\"well\">"
                + "<h5>Please enter your credentials!</h5>"
                + "</div>"
                + "</div>"
                + "</div>"
                + "</div>"
                + "</div>"
                + "</div>");
        request.getRequestDispatcher("login.jsp").include(request, response);
    } else {
        //ArrayList list = da.execute("select * from user where email='" + request.getParameter("inputEmail1") + "' and password='" + request.getParameter("inputPassword1") + "'");
        ArrayList list = da.verifyUser(request.getParameter("inputEmail1"),request.getParameter("inputPassword1"));
        if (!list.isEmpty()) {
            //out.println("You r successfully logged in");
            usr.setUserid(Integer.parseInt(((HashMap) list.get(0)).get("userid").toString()));
            usr.setEmail(((HashMap) list.get(0)).get("email").toString());
            usr.setPassword(((HashMap) list.get(0)).get("password").toString());
            usr.setFirstname(((HashMap) list.get(0)).get("firstname").toString());
            usr.setLastname(((HashMap) list.get(0)).get("lastname").toString());
            session.setAttribute("user", usr);
            //out.println(usr.getFirstname() + " " + usr.getLastname());
            response.sendRedirect("home.jsp");
        } else {
            out.println("<div class=\"container\">"
                    + "<div class=\"row\">"
                    + "<div class=\"span9\">"
                    + "<div class=\"row\">"
                    + "<div class=\"span5\">"
                    + "</div>"
                    + "<div class=\"span4\">"
                    + "<div class=\"well\">"
                    + "<h5>Please enter valid credentials!</h5>"
                    + "</div>"
                    + "</div>"
                    + "</div>"
                    + "</div>"
                    + "</div>"
                    + "</div>");
            request.getRequestDispatcher("login.jsp").include(request, response);
        }
    }
%>  