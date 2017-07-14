<%-- 
    Document   : login
    Created on : 5 Apr, 2016, 9:53:06 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="head.jsp" %>  
    <div id="mainBody">
        <div class="container">
            <div class="row">
                <div class="span9">
                    <h3> Login</h3>	
                    <hr class="soft"/>

                    <div class="row">
                        <div class="span4">
                            <div class="well">
                                <h5>CREATE YOUR ACCOUNT</h5><br/>
                                <!--Enter your e-mail address to create an account.<br/><br/><br/>-->
                                <form action="register.jsp">
                                    <div class="controls">
                                        <button type="submit" class="btn block">Create Your Account</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="span1"> &nbsp;</div>
                        <div class="span4">
                            <div class="well">
                                <h5>ALREADY REGISTERED ?</h5>
                                <form action="loginprocess.jsp" method="POST">
                                    <div class="control-group">
                                        <label class="control-label" for="inputEmail1">Email</label>
                                        <div class="controls">
                                            <input class="span3"  type="text" name="inputEmail1" placeholder="Email"/>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="inputPassword1">Password</label>
                                        <div class="controls">
                                            <input type="password" class="span3"  name="inputPassword1" placeholder="Password"/>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <button type="submit" class="btn">Sign in</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>
        </div>
    </div>
    <%@ include file="foot.jsp" %>  
</body>
</html>