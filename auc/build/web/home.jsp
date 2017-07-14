<%-- 
    Document   : home
    Created on : 15 Apr, 2016, 2:35:44 AM
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
    <div id="mainBody">
        <div class="container">
            <div class="row">
                <div class="span9">		
                    <%                        if (request.getParameter("srchFld") == null) {
                            out.println("<h4>Latest Products </h4>");
                        }
                    %>
                    <ul class="thumbnails">
                        <%                            DataAccess da = new DataAccess();
                            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                            Date date = new Date();
                            ArrayList list;
                            if (request.getParameter("srchFld") == null) {
                                list = da.getItems(dateFormat.format(date));
                                int i;
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
                                            if(((HashMap) list.get(i)).get("description").toString().length()<35){
                                                out.println(((HashMap) list.get(i)).get("description").toString()+"&nbsp;");
                                            }
                                            else{
                                                out.println(((HashMap) list.get(i)).get("description").toString().substring(0, 32)+"...");
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
                            } else if (request.getParameter("srchFld").isEmpty()) {
                                out.println("<b><h4>Please write something in search field!<h4/><b/>");
                            } else {
                                //list = da.execute("select * from item where '" + dateFormat.format(date) + "' < end and (name='" + request.getParameter("srchFld") + "' or type='"+request.getParameter("srchFld")+"') order by itemid desc");
                                list = da.searchItem(dateFormat.format(date),request.getParameter("srchFld"),request.getParameter("srchFld"));
                                int i;
                                if (list.isEmpty()) {
                                    out.println("<b><h4>Sorry nothing found!<h4/><b/>");
                                } else {
                                    for (i = 0; i < list.size(); i++) {
                                        out.println("<li class=\"span3\">"
                                                + "<div class=\"thumbnail\">"
                                                + "<a  href=\"product_details.jsp?id="
                                                + ((HashMap) list.get(i)).get("itemid").toString()
                                                + "\"><img src=\""
                                                + ((HashMap) list.get(i)).get("image").toString()
                                                + "\" alt=\"\"/></a>"
                                                + "<div class=\"caption\">"
                                                + "<h5>" + ((HashMap) list.get(i)).get("name").toString() + "</h5>"
                                                + "<p>"
                                                );
                                            if(((HashMap) list.get(i)).get("description").toString().length()<35){
                                                out.println(((HashMap) list.get(i)).get("description").toString()+"&nbsp;");
                                            }
                                            else{
                                                out.println(((HashMap) list.get(i)).get("description").toString().substring(0, 32)+"...");
                                            }
                                    out.println("</p>"
                                                + "<h4 style=\"text-align:center\"><a class=\"btn btn-primary\">$"
                                        );
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
                                }
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