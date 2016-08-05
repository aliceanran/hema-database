package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Arrays;
import java.io.File;
import java.util.Scanner;
import java.util.HashSet;

public final class geneChoiceBoxSearch_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
    HashSet<String> symbols = new HashSet<String>();
    Scanner r = new Scanner(new File("C:\\Users\\zhangaa\\Documents\\"
            + "GSE42414\\genes_symbolsonly.csv")).useDelimiter(",");
    r.nextLine();

    while (r.hasNextLine()) {
        String str = r.nextLine();
        if (str.equals("")) str = "UNKNOWN";
        symbols.add(str);
    }
    String[] organizedSymbols = new String[10];
    organizedSymbols = symbols.toArray(organizedSymbols);
    Arrays.sort(organizedSymbols);

      out.write("\n");
      out.write("                \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>search genes</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"aesthetic/simple.css\" />\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                background-color: #fddefb;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <h1>Search Genes - Dropdown List</h1>\n");
      out.write("        <p><kbd>Ctrl + click</kbd> to select multiple GeneIDs</p>\n");
      out.write("        \n");
      out.write("        <form name=\"submit\" action=\"geneSearchResults.jsp\">\n");
      out.write("            <select name=\"symbol\" size=\"20\" multiple required>\n");
      out.write("                ");

                    for (String s : organizedSymbols) {
                
      out.write("\n");
      out.write("                        <option>");
      out.print( s );
      out.write("</option>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("            </select><br><br>\n");
      out.write("            <input type=\"submit\" value=\"search\" />\n");
      out.write("        </form>\n");
      out.write("           \n");
      out.write("\n");
      out.write("\n");
      out.write("        <p style=\"line-height:10px\">\n");
      out.write("            <br>\n");
      out.write("            <a href=\"geneTextBoxSearch.jsp\"><small>switch to text input</small></a>\n");
      out.write("            <br><br>\n");
      out.write("            <a href=\"index.jsp\"><small>back to home page</small></a>\n");
      out.write("        </p>\n");
      out.write("            \n");
      out.write("    </body>\n");
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
