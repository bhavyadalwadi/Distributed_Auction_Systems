<%-- 
    Document   : profile
    Created on : 23 Apr, 2016, 8:31:49 PM
    Author     : Abhishek
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="UBean.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
    }
    DataAccess da = new DataAccess();
    ArrayList list = da.getUserDetails(((UBean.User) (session.getAttribute("user"))).getUserid()+"");
%>
<html>
    <%@ include file="head.jsp" %>
    <div id="mainBody">
        <div class="container">
            <div class="row">

                <div class="span9">
                    <h3> Profile</h3>	
                    <div class="well">
                        <!--
                        <div class="alert alert-info fade in">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
                         </div>
                        <div class="alert fade in">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
                         </div>
                         <div class="alert alert-block alert-error fade in">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <strong>Lorem Ipsum is simply</strong> dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
                         </div> -->
                        <form class="form-horizontal" method="post" action="updtprocess.jsp">
                            <div class="control-group">
                                <label class="control-label" for="name1">First Name </label>
                                <div class="controls">
                                    <input type="text" name="name1" value="<%out.print(((HashMap) list.get(0)).get("firstname").toString());%>" placeholder="First Name" value="<%out.print(((HashMap) list.get(0)).get("firstname").toString());%>">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="name2">Last Name </label>
                                <div class="controls">
                                    <input type="text" name="name2" value="<%out.print(((HashMap) list.get(0)).get("lastname").toString());%>" placeholder="Last Name">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="email">E-mail </label>
                                <div class="controls">
                                    <input type="text" name="email" value="<%out.print(((HashMap) list.get(0)).get("email").toString());%>" placeholder="E-mail">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="pass">Password </label>
                                <div class="controls">
                                    <input type="password" name="pass" value="<%out.print(((HashMap) list.get(0)).get("password").toString());%>" placeholder="Password">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="phn">Phone </label>
                                <div class="controls">
                                    <input type="text" name="phn" value="<%out.print(((HashMap) list.get(0)).get("phone").toString());%>" placeholder="Phone">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="gen">Gender </label>
                                <div class="controls">
                                    <%
                                        if (((HashMap) list.get(0)).get("gender").toString().equals("Male")) {
                                            out.print("<input type=\"radio\" name=\"gen\" value=\"Male\" checked>&nbsp;Male&nbsp;"
                                                    + "<input type=\"radio\" name=\"gen\" value=\"Female\" >&nbsp;Female");
                                        } else {
                                            out.print("<input type=\"radio\" name=\"gen\" value=\"Male\">&nbsp;Male&nbsp;"
                                                    + "<input type=\"radio\" name=\"gen\" value=\"Female\" checked>&nbsp;Female");
                                        }
                                    %>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="addr">Address </label>
                                <div class="controls">
                                    <textarea name="addr" cols="26" rows="3" placeholder="Address"><%out.print(((HashMap) list.get(0)).get("address").toString());%></textarea>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="pncd">Pincode </label>
                                <div class="controls">
                                    <input type="text" name="pncd" value="<%out.print(((HashMap) list.get(0)).get("pincode").toString());%>" placeholder="Pincode">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="city">City </label>
                                <div class="controls">
                                    <input type="text" name="city" value="<%out.print(((HashMap) list.get(0)).get("city").toString());%>" placeholder="City">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="state">State </label>
                                <div class="controls">
                                    <input type="text" name="state" value="<%out.print(((HashMap) list.get(0)).get("state").toString());%>" placeholder="State">
                                </div>
                            </div>

                            <div class="control-group">
                                <div class="controls">
                                    <input class="btn btn-large btn-success" type="submit" value="Update" />
                                </div>
                            </div>		
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <%@ include file="foot.jsp" %>
</body>
</html>