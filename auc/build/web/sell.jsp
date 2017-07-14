<%-- 
    Document   : sell
    Created on : 22 Apr, 2016, 2:00:07 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("user")==null)
        response.sendRedirect("login.jsp");
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
                        <form class="form-horizontal" method="post" enctype="multipart/form-data" action="sellprocess.jsp">
                            <div class="control-group">
                                <label class="control-label" for="name1">Name <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="name1" placeholder="Name">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="type">Type <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="type" placeholder="Type">
                                </div>
                            </div>	
                            <div class="control-group">
                                <label class="control-label" for="description">Description </label>
                                <div class="controls">
                                    <textarea name="description" cols="26" rows="3" placeholder="Description"></textarea>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="minbid">Minimum Bid <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="minbid" placeholder="Minimum Bid Price">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="end">End Date and Time <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="end" placeholder="YYYY-MM-DD HH:MM:SS">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="descfile">Description File <sup>*</sup></label>
                                <div class="controls">
                                    <input type="file"  name="descfile"/> 
                                </div>
                            </div>
                            
                            <div class="control-group">
                                <label class="control-label" for="image">Image <sup>*</sup></label>
                                <div class="controls">
                                    <input type="file"  name="image"/> 
                                </div>
                            </div>


                            <p><sup>*</sup>Required field	</p>

                            <div class="control-group">
                                <div class="controls">
                                    <input class="btn btn-large btn-success" type="submit" value="Sell" />
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