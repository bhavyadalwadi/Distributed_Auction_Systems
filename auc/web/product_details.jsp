<%-- 
    Document   : product_details
    Created on : 16 Apr, 2016, 1:35:33 AM
    Author     : Abhishek
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="UBean.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="head.jsp" %>
    <%        if (request.getQueryString() == null || request.getQueryString().split("=").length != 2) {
            response.sendRedirect("home.jsp");
        }
        DataAccess da = new DataAccess();
        //ArrayList list = da.execute("select * from item where itemid='" + request.getQueryString().split("=")[1] + "'");
        ArrayList list = da.getItemDetails(request.getQueryString().split("=")[1]);
    %>
    <div id="mainBody">
        <div class="container">
            <div class="row">
                <div class="span9">
                    <div class="row">	  
                        <div id="gallery" class="span3">
                            <a href="<%out.print(((HashMap) list.get(0)).get("image").toString());%>">
                                <img src="<%out.print(((HashMap) list.get(0)).get("image").toString());%>" style="width:100%" alt="Fujifilm FinePix S2950 Digital Camera"/>
                            </a>
                        </div>
                        <div class="span6">
                            <h3><%out.print(((HashMap) list.get(0)).get("name").toString());%>  </h3>
                            <small><%out.print(((HashMap) list.get(0)).get("type").toString());%></small>
                            <hr class="soft"/>
                            <%out.print("<form class=\"form-horizontal qtyFrm\" action=\"bidprocess.jsp?id=" + request.getQueryString().split("=")[1] + "\" method=\"post\">");%>
                            <div class="control-group">
                                <label class="control-label"><span>Current bid: $<%
                                    if (Double.parseDouble(((HashMap) list.get(0)).get("maxbid").toString()) > Double.parseDouble(((HashMap) list.get(0)).get("minbid").toString())) {
                                        out.print(((HashMap) list.get(0)).get("maxbid").toString());
                                    } else {
                                        out.print(((HashMap) list.get(0)).get("minbid").toString());
                                    }
                                        %></span></label>
                                        <%
                                            Date date = new Date();
                                            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                                            if (date.before(dateFormat.parse(((HashMap) list.get(0)).get("end").toString()))) {
                                                out.print("<div class=\"controls\">"
                                                        + "<input type=\"text\" name=\"bid\" class=\"span1\" placeholder=\"Bid Price\"/>"
                                                        + "<button type=\"submit\" class=\"btn btn-large btn-primary\">Bid</button>"
                                                        + "</div>");
                                            } else {
                                                if (((HashMap) list.get(0)).get("buyerid") == null) {
                                                    out.print("<label class=\"control-label\"><span> Auction failed!</span></label>");
                                                } else {
                                                    //ArrayList list1 = da.execute("select * from user where userid='" + ((HashMap) list.get(0)).get("buyerid").toString() + "'");
                                                    ArrayList list1 = da.getUserDetails(((HashMap) list.get(0)).get("buyerid").toString());
                                                    out.print("<label class=\"control-label\"><span> Buyer:" + ((HashMap) list1.get(0)).get("firstname").toString() + " " + ((HashMap) list1.get(0)).get("lastname").toString() + "</span></label>");
                                                    }
                                                }%>
                            </div>
                            </form>

                            <hr class="soft"/>
                            <p>
                                <%out.println(((HashMap) list.get(0)).get("description").toString());%>
                            </p>
                            <br class="clr"/>
                            <hr class="soft"/>
                            <p>
                                <%out.println("End time:"+((HashMap) list.get(0)).get("end").toString());%>
                            </p>
                            <br class="clr"/>
                            <hr class="soft"/>
                            <%out.print("<a href=\"download.jsp?id=" + request.getQueryString().split("=")[1] + "\">Download full description</a>");%>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
    </div>
    <%@ include file="foot.jsp" %> 
</body>
</html>