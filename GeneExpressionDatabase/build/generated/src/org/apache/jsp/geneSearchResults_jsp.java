package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;

public final class geneSearchResults_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            tr:hover {\n");
      out.write("                color: rgb(146,228,71);\n");
      out.write("                text-decoration: line-through;\n");
      out.write("                font-style: italic;\n");
      out.write("                /* background-color: rgb(157, 48, 68); */\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            a:hover {\n");
      out.write("                text-decoration: line-through;\n");
      out.write("                font-style: italic;\n");
      out.write("                color: rgb(21,149,132);\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            th {\n");
      out.write("                background-color: rgb(211, 149, 242);\n");
      out.write("                color: black;\n");
      out.write("                text-decoration: none;\n");
      out.write("                font-style: normal;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            body {\n");
      out.write("                font-family: \"Courier New\", Courier, monospace;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .cool {\n");
      out.write("                text-align: center;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            table, td, th {\n");
      out.write("                border-collapse: collapse;\n");
      out.write("                text-align: center;\n");
      out.write("                border: 1px solid black;\n");
      out.write("                height: 35px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            table {\n");
      out.write("                width: 50%;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            a:link {\n");
      out.write("                color: rgb(138, 132, 30);\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body style=\"text-align: center\">\n");
      out.write("        ");
      beans.geneSearchBySymbolBean mygenesearch = null;
      synchronized (request) {
        mygenesearch = (beans.geneSearchBySymbolBean) _jspx_page_context.getAttribute("mygenesearch", PageContext.REQUEST_SCOPE);
        if (mygenesearch == null){
          mygenesearch = new beans.geneSearchBySymbolBean();
          _jspx_page_context.setAttribute("mygenesearch", mygenesearch, PageContext.REQUEST_SCOPE);
        }
      }
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("mygenesearch"), "symbol", request.getParameter("symbol"), request, "symbol", false);
      out.write("\n");
      out.write("        <h1>Gene Search Results</h1>\n");
      out.write("        <p style=\"font-style: italic\">You searched for HGNC symbol \n");
      out.write("            ");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((beans.geneSearchBySymbolBean)_jspx_page_context.findAttribute("mygenesearch")).getSymbol())));
      out.write("</p>\n");
      out.write("        <table align=\"center\">\n");
      out.write("            <thead>\n");
      out.write("                <tr><th>ID</th><th>Ensembl ID</th><th>Chromosome</th>\n");
      out.write("                    <th>Start</th><th>End</th></tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                \n");
      out.write("            ");

                List<Object> rows = mygenesearch.getDb_Data();
                
                for (int i = 0; i < rows.size(); i++) {   
                    mygenesearch.setObj(rows.get(i));
            
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print( mygenesearch.getId());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print( mygenesearch.getEnsembl());
      out.write("</td> \n");
      out.write("                    <td>");
      out.print( mygenesearch.getChromosome());
      out.write("</td> \n");
      out.write("                    <td>");
      out.print( mygenesearch.getStart());
      out.write("</td> \n");
      out.write("                    <td>");
      out.print( mygenesearch.getEnd());
      out.write("</td> \n");
      out.write("                </tr> \n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("            \n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
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
