<%-- 
    Document   : head
    Created on : 6 Apr, 2016, 2:53:19 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Bootshop online Shopping cart</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
        <link href="themes/css/base.css" rel="stylesheet" media="screen"/>
        <!-- Bootstrap style responsive -->	
        <link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
        <link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css">
        <!-- Google-code-prettify -->	
        <link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
        <!-- fav and touch icons -->
        <link rel="shortcut icon" href="themes/images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png">
        <style type="text/css" id="enject"></style>
    </head>
    <body>
        <div id="header">
            <div class="container">
                <div id="welcomeLine" class="row">
                    <div class="span6">Welcome!<strong><%
                        if(session.getAttribute("user")!=null)
                            out.print(((UBean.User)(session.getAttribute("user"))).getFirstname()+" "+((UBean.User)(session.getAttribute("user"))).getLastname());
                        else
                            out.print("User");
                    %></strong></div>
                </div>
                <!-- Navbar ================================================== -->
                <div id="logoArea" class="navbar">
                    <div class="navbar-inner">
                        <a class="brand" href="home.jsp"><img src="themes/images/logo.png" alt="Bootsshop"/></a>
                        <form class="form-inline navbar-search" method="get" action="home.jsp" >
                            <input name="srchFld" class="srchTxt" type="text" />
                            <button type="submit" id="submitButton" class="btn btn-primary">Go</button>
                        </form>
                        <ul id="topMenu" class="nav pull-right">
                            <li class=""><a href="home.jsp">Home</a></li>
                            <li class=""><a href="sell.jsp">Sell</a></li>
                            <li class=""><a href="won.jsp">Won</a></li>
                            <li class=""><a href="profile.jsp">Profile</a></li>
                            <li class=""><a href="hosted.jsp">Hosted</a></li>
                            <li class="">
                                <%
                        if(session.getAttribute("user")!=null)
                            out.print("<a href=\"logout.jsp\" role=\"button\" style=\"padding-right:0\"><span class=\"btn btn-large btn-success\">Logout</span></a>");
                        else
                            out.print("<a href=\"login.jsp\" role=\"button\" style=\"padding-right:0\"><span class=\"btn btn-large btn-success\">Login</span></a>");
                    %>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>