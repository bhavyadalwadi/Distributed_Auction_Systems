<%-- 
    Document   : won
    Created on : 23 Apr, 2016, 4:04:00 AM
    Author     : Abhishek
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="UBean.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="head.jsp" %> 
    <div id="mainBody">
        <div class="container">
            <div class="row">
                <div class="span9">
                    <%out.println("<h4>Auctions won by you </h4>");%>
                    <ul class="thumbnails">
                        <%    if (session.getAttribute("user") == null) {
                                response.sendRedirect("login.jsp");
                            }
                            DataAccess da = new DataAccess();
                            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                            Date date = new Date();
                            int i;
                            ArrayList list = da.execute("select * from item where end<='" + dateFormat.format(date) + "' and buyerid='" + ((UBean.User) (session.getAttribute("user"))).getUserid() + "' order by end desc,itemid desc");
                            for (i = 0; i < list.size(); i++) {
                                out.println("<li class=\"span3\">"
                                        + "<div class=\"thumbnail\">"
                                        + "<a  href=\"product_details.jsp?id="
                                        + ((HashMap) list.get(i)).get("itemid").toString()
                                        + "\"><img src=\""
                                        + ((HashMap) list.get(i)).get("image").toString()
                                        + "\" alt=\"\" style=\"width:160px !important;height:160px !important;\"/></a>"
                                        + "<div class=\"caption\">"
                                        + "<h5>" + ((HashMap) list.get(i)).get("name").toString() + "</h5>"
                                        + "<p>");
                                if (((HashMap) list.get(i)).get("description").toString().length() < 35) {
                                    out.println(((HashMap) list.get(i)).get("description").toString()+"&nbsp;");
                                } else {
                                    out.println(((HashMap) list.get(i)).get("description").toString().substring(0, 32) + "...");
                                }
                                out.println("</p>"
                                        + "<h4 style=\"text-align:center\"><a class=\"btn btn-primary\">$");
                                if (Double.parseDouble(((HashMap) list.get(i)).get("maxbid").toString()) > Double.parseDouble(((HashMap) list.get(i)).get("minbid").toString())) {
                                    out.println(((HashMap) list.get(i)).get("maxbid").toString());
                                } else {
                                    out.println(((HashMap) list.get(i)).get("minbid").toString());
                                }
                                out.println("</a></h4>"
                                        + "</div>"
                                        + "</div>"
                                        + "</li>");
                            }
                        %>
                    </ul>	
                </div>
            </div>
        </div>
    </div>
    <%@ include file="foot.jsp" %> 
</body>
</html>