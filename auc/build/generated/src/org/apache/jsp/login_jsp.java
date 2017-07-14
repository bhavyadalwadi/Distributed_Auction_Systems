package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/head.jsp");
    _jspx_dependants.add("/foot.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Bootshop online Shopping cart</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <link id=\"callCss\" rel=\"stylesheet\" href=\"themes/bootshop/bootstrap.min.css\" media=\"screen\"/>\n");
      out.write("        <link href=\"themes/css/base.css\" rel=\"stylesheet\" media=\"screen\"/>\n");
      out.write("        <!-- Bootstrap style responsive -->\t\n");
      out.write("        <link href=\"themes/css/bootstrap-responsive.min.css\" rel=\"stylesheet\"/>\n");
      out.write("        <link href=\"themes/css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <!-- Google-code-prettify -->\t\n");
      out.write("        <link href=\"themes/js/google-code-prettify/prettify.css\" rel=\"stylesheet\"/>\n");
      out.write("        <!-- fav and touch icons -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"themes/images/ico/favicon.ico\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"themes/images/ico/apple-touch-icon-144-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"themes/images/ico/apple-touch-icon-114-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"themes/images/ico/apple-touch-icon-72-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"themes/images/ico/apple-touch-icon-57-precomposed.png\">\n");
      out.write("        <style type=\"text/css\" id=\"enject\"></style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div id=\"welcomeLine\" class=\"row\">\n");
      out.write("                    <div class=\"span6\">Welcome!<strong>");

                        if(session.getAttribute("user")!=null)
                            out.print(((UBean.User)(session.getAttribute("user"))).getFirstname()+" "+((UBean.User)(session.getAttribute("user"))).getLastname());
                        else
                            out.print("User");
                    
      out.write("</strong></div>\n");
      out.write("                </div>\n");
      out.write("                <!-- Navbar ================================================== -->\n");
      out.write("                <div id=\"logoArea\" class=\"navbar\">\n");
      out.write("                    <div class=\"navbar-inner\">\n");
      out.write("                        <a class=\"brand\" href=\"home.jsp\"><img src=\"themes/images/logo.png\" alt=\"Bootsshop\"/></a>\n");
      out.write("                        <form class=\"form-inline navbar-search\" method=\"get\" action=\"home.jsp\" >\n");
      out.write("                            <input name=\"srchFld\" class=\"srchTxt\" type=\"text\" />\n");
      out.write("                            <button type=\"submit\" id=\"submitButton\" class=\"btn btn-primary\">Go</button>\n");
      out.write("                        </form>\n");
      out.write("                        <ul id=\"topMenu\" class=\"nav pull-right\">\n");
      out.write("                            <li class=\"\"><a href=\"home.jsp\">Home</a></li>\n");
      out.write("                            <li class=\"\"><a href=\"sell.jsp\">Sell</a></li>\n");
      out.write("                            <li class=\"\"><a href=\"won.jsp\">Won</a></li>\n");
      out.write("                            <li class=\"\"><a href=\"profile.jsp\">Profile</a></li>\n");
      out.write("                            <li class=\"\"><a href=\"hosted.jsp\">Hosted</a></li>\n");
      out.write("                            <li class=\"\">\n");
      out.write("                                ");

                        if(session.getAttribute("user")!=null)
                            out.print("<a href=\"logout.jsp\" role=\"button\" style=\"padding-right:0\"><span class=\"btn btn-large btn-success\">Logout</span></a>");
                        else
                            out.print("<a href=\"login.jsp\" role=\"button\" style=\"padding-right:0\"><span class=\"btn btn-large btn-success\">Login</span></a>");
                    
      out.write("\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
      out.write("  \n");
      out.write("    <div id=\"mainBody\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"span9\">\n");
      out.write("                    <h3> Login</h3>\t\n");
      out.write("                    <hr class=\"soft\"/>\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"span4\">\n");
      out.write("                            <div class=\"well\">\n");
      out.write("                                <h5>CREATE YOUR ACCOUNT</h5><br/>\n");
      out.write("                                <!--Enter your e-mail address to create an account.<br/><br/><br/>-->\n");
      out.write("                                <form action=\"register.jsp\">\n");
      out.write("                                    <div class=\"controls\">\n");
      out.write("                                        <button type=\"submit\" class=\"btn block\">Create Your Account</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"span1\"> &nbsp;</div>\n");
      out.write("                        <div class=\"span4\">\n");
      out.write("                            <div class=\"well\">\n");
      out.write("                                <h5>ALREADY REGISTERED ?</h5>\n");
      out.write("                                <form action=\"loginprocess.jsp\" method=\"POST\">\n");
      out.write("                                    <div class=\"control-group\">\n");
      out.write("                                        <label class=\"control-label\" for=\"inputEmail1\">Email</label>\n");
      out.write("                                        <div class=\"controls\">\n");
      out.write("                                            <input class=\"span3\"  type=\"text\" name=\"inputEmail1\" placeholder=\"Email\"/>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"control-group\">\n");
      out.write("                                        <label class=\"control-label\" for=\"inputPassword1\">Password</label>\n");
      out.write("                                        <div class=\"controls\">\n");
      out.write("                                            <input type=\"password\" class=\"span3\"  name=\"inputPassword1\" placeholder=\"Password\"/>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"control-group\">\n");
      out.write("                                        <div class=\"controls\">\n");
      out.write("                                            <button type=\"submit\" class=\"btn\">Sign in</button>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\t\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <script src=\"themes/js/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"themes/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"themes/js/google-code-prettify/prettify.js\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"themes/js/bootshop.js\"></script>\n");
      out.write("    <script src=\"themes/js/jquery.lightbox-0.5.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Themes switcher section ============================================================================================= -->\n");
      out.write("    <div id=\"secectionBox\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"themes/switch/themeswitch.css\" type=\"text/css\" media=\"screen\" />\n");
      out.write("        <script src=\"themes/switch/theamswitcher.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\n");
      out.write("        <div id=\"themeContainer\">\n");
      out.write("            <div id=\"hideme\" class=\"themeTitle\">Style Selector</div>\n");
      out.write("            <div class=\"themeName\">Oregional Skin</div>\n");
      out.write("            <div class=\"images style\">\n");
      out.write("                <a href=\"themes/css/#\" name=\"bootshop\"><img src=\"themes/switch/images/clr/bootshop.png\" alt=\"bootstrap business templates\" class=\"active\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"businessltd\"><img src=\"themes/switch/images/clr/businessltd.png\" alt=\"bootstrap business templates\" class=\"active\"></a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"themeName\">Bootswatch Skins (11)</div>\n");
      out.write("            <div class=\"images style\">\n");
      out.write("                <a href=\"themes/css/#\" name=\"amelia\" title=\"Amelia\"><img src=\"themes/switch/images/clr/amelia.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"spruce\" title=\"Spruce\"><img src=\"themes/switch/images/clr/spruce.png\" alt=\"bootstrap business templates\" ></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"superhero\" title=\"Superhero\"><img src=\"themes/switch/images/clr/superhero.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"cyborg\"><img src=\"themes/switch/images/clr/cyborg.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"cerulean\"><img src=\"themes/switch/images/clr/cerulean.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"journal\"><img src=\"themes/switch/images/clr/journal.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"readable\"><img src=\"themes/switch/images/clr/readable.png\" alt=\"bootstrap business templates\"></a>\t\n");
      out.write("                <a href=\"themes/css/#\" name=\"simplex\"><img src=\"themes/switch/images/clr/simplex.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"slate\"><img src=\"themes/switch/images/clr/slate.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"spacelab\"><img src=\"themes/switch/images/clr/spacelab.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"united\"><img src=\"themes/switch/images/clr/united.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <p style=\"margin:0;line-height:normal;margin-left:-10px;display:none;\"><small>These are just examples and you can build your own color scheme in the backend.</small></p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"themeName\">Background Patterns </div>\n");
      out.write("            <div class=\"images patterns\">\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern1\"><img src=\"themes/switch/images/pattern/pattern1.png\" alt=\"bootstrap business templates\" class=\"active\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern2\"><img src=\"themes/switch/images/pattern/pattern2.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern3\"><img src=\"themes/switch/images/pattern/pattern3.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern4\"><img src=\"themes/switch/images/pattern/pattern4.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern5\"><img src=\"themes/switch/images/pattern/pattern5.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern6\"><img src=\"themes/switch/images/pattern/pattern6.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern7\"><img src=\"themes/switch/images/pattern/pattern7.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern8\"><img src=\"themes/switch/images/pattern/pattern8.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern9\"><img src=\"themes/switch/images/pattern/pattern9.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern10\"><img src=\"themes/switch/images/pattern/pattern10.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern11\"><img src=\"themes/switch/images/pattern/pattern11.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern12\"><img src=\"themes/switch/images/pattern/pattern12.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern13\"><img src=\"themes/switch/images/pattern/pattern13.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern14\"><img src=\"themes/switch/images/pattern/pattern14.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern15\"><img src=\"themes/switch/images/pattern/pattern15.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern16\"><img src=\"themes/switch/images/pattern/pattern16.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern17\"><img src=\"themes/switch/images/pattern/pattern17.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern18\"><img src=\"themes/switch/images/pattern/pattern18.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern19\"><img src=\"themes/switch/images/pattern/pattern19.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("                <a href=\"themes/css/#\" name=\"pattern20\"><img src=\"themes/switch/images/pattern/pattern20.png\" alt=\"bootstrap business templates\"></a>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <span id=\"themesBtn\"></span>\n");
      out.write("</html>\n");
      out.write("  \n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
