package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    session = request.getSession(false);
    if (session == null) {
        request.getRequestDispatcher("login.jsp").forward(request, response);
        return;
    }
    String status = (String) session.getAttribute("status");
    if (status == null || !status.equals("valid")) {
        request.getRequestDispatcher("login.jsp").forward(request, response);
        return;
    }

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"rescources/css/bootstrap.css\" type=\"text/css\"/>\n");
      out.write("        <link href=\"rescources/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("        <script src=\"rescources/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"rescources/js/bootswatch.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"rescources/js/jquery-1.10.2.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>RHCS-Home</title>\n");
      out.write("        <script>\n");
      out.write("            (function (i, s, o, g, r, a, m) {\n");
      out.write("                i['GoogleAnalyticsObject'] = r;\n");
      out.write("                i[r] = i[r] || function () {\n");
      out.write("                    (i[r].q = i[r].q || []).push(arguments)\n");
      out.write("                }, i[r].l = 1 * new Date();\n");
      out.write("                a = s.createElement(o),\n");
      out.write("                        m = s.getElementsByTagName(o)[0];\n");
      out.write("                a.async = 1;\n");
      out.write("                a.src = g;\n");
      out.write("                m.parentNode.insertBefore(a, m)\n");
      out.write("            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');\n");
      out.write("\n");
      out.write("            ga('create', 'UA-60757234-1', 'auto');\n");
      out.write("            ga('send', 'pageview');\n");
      out.write("\n");
      out.write("        </script>\n");
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
      out.write("                    <li class=\"active\" ><a  href=\"Home.jsp\">Home</a></li>\n");
      out.write("                    <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                    <li><a href=\"Diagnosis.jsp\">Diagnosis</a></li>\n");
      out.write("                    <li><a href=\"#\">Emergency</a></li>\n");
      out.write("                    <li><a href=\"Reg.jsp\">Register</a></li>\n");
      out.write("                    <li><a href=\"announce.jsp\">Announcements</a></li>\n");
      out.write("                    <li><a href=\"data.jsp\">Data View</a></li>\n");
      out.write("                </ul>\n");
      out.write("                <form class=\"navbar-form navbar-left\">\n");
      out.write("                    <input type=\"text\" class=\"form-control col-lg-8\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Search\">\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                    <form class=\"navbar-form navbar-left\" action=\"LogOut.do\">\n");
      out.write("                        <input type=\"submit\" id=\"loading-example-btn\" data-loading-text=\"Loading...\" class=\"btn btn-primary\" value=\"Log Out\"/>\n");
      out.write("\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div  class=\"jumbotron\">\n");
      out.write("            <div  style=\"margin-left: 1%\">\n");
      out.write("                <h1 style=\"color:crimson;\">Rural Health Care System</h1>\n");
      out.write("                <p>The nature by itself is a highly complex arrangement of certain basic patterns like fibonacci, fractals, spirals, etc., Though these patterns have been identified and categorized, understanding their behavior has been a highly complex and challenging task. This system such natural patterns occuring in a natural medical anomaly are used to identify the disease that could affect a human being.<br>The system keeps track of new patterns and their geographical origin and issues a timely warning if a new epidemic outbreak is being detected. </p>\n");
      out.write("                <blockquote>\n");
      out.write("                    <p><strong><em>It has become appallingly obvious that our technology has exceeded our humanity.</em></strong></p>\n");
      out.write("                    <small>Albert Einstein<cite title=\"Source Title\"> on Technological Advancements</cite></small>\n");
      out.write("                </blockquote>\n");
      out.write("                <p id=\"demo\">Click the button to get your position:</p>\n");
      out.write("\n");
      out.write("                <p><a  class=\"btn btn-primary btn-lg\">Start</a>\n");
      out.write("                    <a class=\"btn btn-success btn-lg\"  onclick=\"getLocation()\">Track Location</a></p>\n");
      out.write("\n");
      out.write("                <div id=\"mapholder\"></div>\n");
      out.write("\n");
      out.write("                <script>\n");
      out.write("                    var x = document.getElementById(\"demo\");\n");
      out.write("\n");
      out.write("                    function getLocation() {\n");
      out.write("                        if (navigator.geolocation) {\n");
      out.write("                            navigator.geolocation.getCurrentPosition(showPosition, showError);\n");
      out.write("                        } else {\n");
      out.write("                            x.innerHTML = \"Geolocation is not supported by this browser.\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    function showPosition(position) {\n");
      out.write("                        var latlon = position.coords.latitude + \",\" + position.coords.longitude;\n");
      out.write("\n");
      out.write("                        var img_url = \"http://maps.googleapis.com/maps/api/staticmap?center=\"\n");
      out.write("                                + latlon + \"&zoom=14&size=400x300&sensor=false\";\n");
      out.write("                        document.getElementById(\"mapholder\").innerHTML = \"<img src='\" + img_url + \"'>\";\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    function showError(error) {\n");
      out.write("                        switch (error.code) {\n");
      out.write("                            case error.PERMISSION_DENIED:\n");
      out.write("                                x.innerHTML = \"User denied the request for Geolocation.\"\n");
      out.write("                                break;\n");
      out.write("                            case error.POSITION_UNAVAILABLE:\n");
      out.write("                                x.innerHTML = \"Location information is unavailable.\"\n");
      out.write("                                break;\n");
      out.write("                            case error.TIMEOUT:\n");
      out.write("                                x.innerHTML = \"The request to get user location timed out.\"\n");
      out.write("                                break;\n");
      out.write("                            case error.UNKNOWN_ERROR:\n");
      out.write("                                x.innerHTML = \"An unknown error occurred.\"\n");
      out.write("                                break;\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"alert alert-dismissable alert-warning\">\n");
      out.write("                    <button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>\n");
      out.write("                    <h4>Important Announcement</h4>\n");
      out.write("                    <p><strong>EBOLA</strong> new disease outbreak in Africa. Treatment and cure unavailable. Precautions : <a href=\"#\">Click Here</a></p>\n");
      out.write("                </div>        \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"http://code.jquery.com/jquery-1.10.2.js\"></script>\n");
      out.write("        <script src=\"http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.js\"></script>\n");
      out.write("        <script>\n");
      out.write("                    $(document).ready(function () {\n");
      out.write("                        $(\"a.dropdown-toggle\").click(function (ev) {\n");
      out.write("                            $(\"a.dropdown-toggle\").dropdown(\"toggle\");\n");
      out.write("                            return false;\n");
      out.write("                        });\n");
      out.write("                        $(\"ul.dropdown-menu a\").click(function (ev) {\n");
      out.write("                            $(\"a.dropdown-toggle\").dropdown(\"toggle\");\n");
      out.write("                            return false;\n");
      out.write("                        });\n");
      out.write("                    });\n");
      out.write("        </script>  \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
