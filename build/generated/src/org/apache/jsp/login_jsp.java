package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      			"errorpage.jsp", true, 8192, true);
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"rescources/css/bootstrap.css\" type=\"text/css\"/>\n");
      out.write("        <link href=\"rescources/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <script src=\"rescources/js/jquery.validate.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(function () {\n");
      out.write("                // highlight\n");
      out.write("                var elements = $(\"input[type!='submit'], textarea, select\");\n");
      out.write("                elements.focus(function () {\n");
      out.write("                    $(this).parents('li').addClass('highlight');\n");
      out.write("                });\n");
      out.write("                elements.blur(function () {\n");
      out.write("                    $(this).parents('li').removeClass('highlight');\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                $(\"#forgotpassword\").click(function () {\n");
      out.write("                    $(\"#password\").removeClass(\"required\");\n");
      out.write("                    $(\"#login\").submit();\n");
      out.write("                    $(\"#password\").addClass(\"required\");\n");
      out.write("                    return false;\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                $(\"#login\").validate()\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"navbar navbar-inverse\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-inverse-collapse\">\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">RHCS</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"navbar-collapse collapse navbar-inverse-collapse\">\n");
      out.write("                <ul class=\"nav navbar-nav\">\n");
      out.write("                    <li><a  href=\"Home.jsp\">Home</a></li>\n");
      out.write("                    <li class=\"active\"><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                    <li><a href=\"Diagnosis.jsp\">Diagnosis</a></li>\n");
      out.write("                    <li><a href=\"#\">Emergency</a></li>\n");
      out.write("                    <li><a href=\"Reg.jsp\">Register</a></li>\n");
      out.write("                    <li><a href=\"announce.jsp\">Announcements</a></li>\n");
      out.write("                    <li><a href=\"data.jsp\">Data View</a></li>\n");
      out.write("                </ul>\n");
      out.write("                <form class=\"navbar-form navbar-left\">\n");
      out.write("                    <input type=\"text\" class=\"form-control col-lg-8\" placeholder=\"Search\">\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                    <li class=\"dropdown\">\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Dropdown <b class=\"caret\"></b></a>\n");
      out.write("                        <ul class=\"dropdown-menu\">\n");
      out.write("                            <li><a href=\"#\">Action</a></li>\n");
      out.write("                            <li><a href=\"#\">Another action</a></li>\n");
      out.write("                            <li><a href=\"#\">Something else here</a></li>\n");
      out.write("                            <li class=\"divider\"></li>\n");
      out.write("                            <li><a href=\"#\">Separated link</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <form class=\"form-horizontal\" style=\"width: 50%\" id=\"login\" action=\"Verify.do\" method=\"POST\">\n");
      out.write("            <fieldset>\n");
      out.write("                <legend>Login</legend>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"inputEmail\" class=\"col-lg-2 control-label\">Email</label>\n");
      out.write("                    <div class=\"col-lg-10\">\n");
      out.write("                        <input type=\"text\" name=\"email\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\" id=\"email\" required=\"true\" placeholder=\"Email\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"inputPassword\" class=\"col-lg-2 control-label\">Password</label>\n");
      out.write("                    <div class=\"col-lg-10\">\n");
      out.write("                        <input type=\"password\" name=\"password\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\" required=\"true\" minlength=\"8\" maxlength=\"16\" id=\"password\" placeholder=\"Password\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\" style=\"margin-top: 5%\">\n");
      out.write("                            <div class=\"col-lg-10 col-lg-offset-2\">\n");
      out.write("                                <button type=\"reset\" class=\"btn btn-default\">Cancel</button>\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-primary\">Submit</button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        </fieldset>\n");
      out.write("                        </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <script src=\"http://code.jquery.com/jquery-1.10.2.js\"></script>\n");
      out.write("                        <script src=\"http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.js\"></script>\n");
      out.write("                        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $(\"a.dropdown-toggle\").click(function (ev) {\n");
      out.write("                    $(\"a.dropdown-toggle\").dropdown(\"toggle\");\n");
      out.write("                    return false;\n");
      out.write("                });\n");
      out.write("                $(\"ul.dropdown-menu a\").click(function (ev) {\n");
      out.write("                    $(\"a.dropdown-toggle\").dropdown(\"toggle\");\n");
      out.write("                    return false;\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("                        </script>  \n");
      out.write("                        </body>\n");
      out.write("                        </html>\n");
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
