package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class pie_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <script type=\"text/javascript\" src=\"https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1','packages':['annotationchart']}]}\"></script>\n");
      out.write("    <script type='text/javascript'>\n");
      out.write("      google.load('visualization', '1', {'packages':['annotationchart']});\n");
      out.write("      google.setOnLoadCallback(drawChart);\n");
      out.write("      function drawChart() {\n");
      out.write("        var data = new google.visualization.DataTable();\n");
      out.write("        data.addColumn('date', 'Date');\n");
      out.write("        data.addColumn('number', 'Kepler-22b mission');\n");
      out.write("        data.addColumn('string', 'Kepler title');\n");
      out.write("        data.addColumn('string', 'Kepler text');\n");
      out.write("        data.addColumn('number', 'Gliese 163 mission');\n");
      out.write("        data.addColumn('string', 'Gliese title');\n");
      out.write("        data.addColumn('string', 'Gliese text');\n");
      out.write("        data.addRows([\n");
      out.write("          [new Date(2314, 2, 15), 12400, undefined, undefined,\n");
      out.write("                                  0, undefined, undefined],\n");
      out.write("          [new Date(2314, 2, 16), 24045, 'Lalibertines', 'First encounter',\n");
      out.write("                                  0, undefined, undefined],\n");
      out.write("          [new Date(2314, 2, 17), 35022, 'Lalibertines', 'They are very tall',\n");
      out.write("                                  0, 'Gallantors', 'First Encounter'],\n");
      out.write("          [new Date(2314, 2, 18), 12284, 'Lalibertines', 'Attack on our crew!',\n");
      out.write("                                  0, 'Gallantors', 'Statement of shared principles'],\n");
      out.write("          [new Date(2314, 2, 19), 8476, 'Lalibertines', 'Heavy casualties',\n");
      out.write("                                  0, 'Gallantors', 'Mysteries revealed'],\n");
      out.write("          [new Date(2314, 2, 20), 0, 'Lalibertines', 'All crew lost',\n");
      out.write("                                  0, 'Gallantors', 'Omniscience achieved']\n");
      out.write("        ]);\n");
      out.write("\n");
      out.write("        var chart = new google.visualization.AnnotationChart(document.getElementById('chart_div'));\n");
      out.write("\n");
      out.write("        var options = {\n");
      out.write("          displayAnnotations: true\n");
      out.write("          \n");
      out.write("        };\n");
      out.write("\n");
      out.write("        chart.draw(data, options);\n");
      out.write("      }\n");
      out.write("    </script>\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("    <div id='chart_div' style='width: 900px; height: 500px;'></div>\n");
      out.write("  </body>\n");
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
