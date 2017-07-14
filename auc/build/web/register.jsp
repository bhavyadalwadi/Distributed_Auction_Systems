<%-- 
    Document   : register
    Created on : 23 Apr, 2016, 1:32:32 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="head.jsp" %>
    <div id="mainBody">
        <div class="container">
            <div class="row">

                <div class="span9">
                    <h3> Register</h3>	
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
                        <form class="form-horizontal" method="post" action="regprocess.jsp">
                            <div class="control-group">
                                <label class="control-label" for="name1">First Name <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="name1" placeholder="First Name">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="name2">Last Name <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="name2" placeholder="Last Name">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="email">E-mail <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="email" placeholder="E-mail">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="pass">Password <sup>*</sup></label>
                                <div class="controls">
                                    <input type="password" name="pass" placeholder="Password">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="phn">Phone <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="phn" placeholder="Phone">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="gen">Gender <sup>*</sup></label>
                                <div class="controls">
                                    <input type="radio" name="gen" value="Male" checked>&nbsp;Male&nbsp;
                                    <input type="radio" name="gen" value="Female" >&nbsp;Female
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="addr">Address <sup>*</sup></label>
                                <div class="controls">
                                    <textarea name="addr" cols="26" rows="3" placeholder="Address"></textarea>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="pncd">Pincode <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="pncd" placeholder="Pincode">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="city">City <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="city" placeholder="City">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="state">State <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" name="state" placeholder="State">
                                </div>
                            </div>
                            <p><sup>*</sup>Required field	</p>

                            <div class="control-group">
                                <div class="controls">
                                    <input class="btn btn-large btn-success" type="submit" value="Register" />
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