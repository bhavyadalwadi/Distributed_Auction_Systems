<%-- 
    Document   : updtitem
    Created on : 24 Apr, 2016, 12:58:39 AM
    Author     : Abhishek
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="UBean.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
    }
    if (request.getQueryString() == null || request.getQueryString().split("=").length != 2) {
        response.sendRedirect("hosted.jsp");
    }
    DataAccess da = new DataAccess();
    ArrayList list = da.execute("select * from item where itemid='" + request.getQueryString().split("=")[1] + "'");
%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="head.jsp" %>
    <div id="mainBody">
        <div class="container">
            <div class="row">

                <div class="span9">
                    <h3> Item details</h3>	
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
                        <form class="form-horizontal" method="post" enctype="multipart/form-data" action="updtitmprc.jsp?id=<%out.print(request.getQueryString().split("=")[1]);%>">
                            <div class="control-group">
                                <label class="control-label" for="name1">Name </label>
                                <div class="controls">
                                    <input type="text" name="name1" value="<%out.print(((HashMap) list.get(0)).get("name").toString());%>" placeholder="Name">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="type">Type </label>
                                <div class="controls">
                                    <input type="text" name="type" value="<%out.print(((HashMap) list.get(0)).get("type").toString());%>" placeholder="Type">
                                </div>
                            </div>	
                            <div class="control-group">
                                <label class="control-label" for="description">Description </label>
                                <div class="controls">
                                    <textarea name="description" cols="26" rows="3" placeholder="Description"><%out.print(((HashMap) list.get(0)).get("description").toString());%></textarea>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="minbid">Minimum Bid </label>
                                <div class="controls">
                                    <input type="text" name="minbid" value="<%out.print(((HashMap) list.get(0)).get("minbid").toString());%>" placeholder="Minimum Bid Price">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="end">End Date and Time </label>
                                <div class="controls">
                                    <input type="text" name="end" value="<%out.print(((HashMap) list.get(0)).get("end").toString());%>" placeholder="YYYY-MM-DD HH:MM:SS">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Current Description File </label>
                                <div class="controls">
                                    <%out.print("<u><a href=\"download.jsp?id=" + request.getQueryString().split("=")[1] + "\">Description File</a></u>");%>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="descfile">Description File </label>
                                <div class="controls">
                                    <input type="file"  name="descfile"/>                              
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Current Image </label>
                                <div class="controls">
                                    <%out.println("<img src=\""
                                                + ((HashMap) list.get(0)).get("image").toString()
                                                + "\" alt=\"\" style=\"width:160px !important;height:160px !important;\"/>");%>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="image">Image </label>
                                <div class="controls">
                                    <input type="file"  name="image"/>
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