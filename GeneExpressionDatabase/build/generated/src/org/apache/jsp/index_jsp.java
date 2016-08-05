package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Arrays;
import java.io.File;
import java.util.Scanner;
import java.util.HashSet;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <title>Gene Expression Database</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n");
      out.write("  <link rel=\"shortcut icon\" href=\"aesthetic/bloodcells.ico\" type=\"image/x-icon\" />\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("  <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("  \n");
      out.write("  <style>\n");
      out.write("      body {\n");
      out.write("          font-family: Century Gothic, sans-serif;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      .bg-1 {\n");
      out.write("          background-color: rgb(100, 4, 143);\n");
      out.write("          color: white;\n");
      out.write("          font-size: 20px;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      .bg-1 .btn, .bg-3 .btn {\n");
      out.write("          background-color: rgb(100, 4, 143);\n");
      out.write("          color: white;\n");
      out.write("          border: 1px solid white;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      .bg-1 .btn:hover, .bg-3 .btn:hover {\n");
      out.write("          background-color: white;\n");
      out.write("          color: rgb(100, 4, 143);\n");
      out.write("          border: 1px solid rgb(100, 4, 143);\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      .bg-2 {\n");
      out.write("          background-color: rgb(209, 87, 150);\n");
      out.write("          color: white;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      .bg-2 .btn {\n");
      out.write("          background-color: rgb(209, 87, 150);\n");
      out.write("          color: white;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      .bg-2 .btn:hover {\n");
      out.write("          background-color: white;\n");
      out.write("          color: rgb(209, 87, 150);\n");
      out.write("          border: 1px solid rgb(209, 87, 150);\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      .bg-3 {\n");
      out.write("          background-color: white;\n");
      out.write("          color: rgb(100, 4, 143);\n");
      out.write("          font-size: 1.7em;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      .container-fluid {\n");
      out.write("          padding: 70px;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      select {\n");
      out.write("          text-align: center;\n");
      out.write("          border: 1px solid rgb(100, 4, 143);\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      option {\n");
      out.write("          padding: 5px;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      input[type=\"text\"] {\n");
      out.write("          padding: 30px 10px;\n");
      out.write("          line-height: 30px;\n");
      out.write("          font-size: 20px;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      h4 {\n");
      out.write("          line-height: 30px;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      #choice {\n");
      out.write("          font-size: 100%;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      #choice .glyphicon {\n");
      out.write("          font-size: 15vw;\n");
      out.write("          padding-top: 50px;\n");
      out.write("          padding-bottom: 25px;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      #choice .btn {\n");
      out.write("          width: 100%;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      #choice .col-sm-4 {\n");
      out.write("          padding: 3% 0% 3% 5%;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      #choice .col-sm-6 {\n");
      out.write("          text-align: left;\n");
      out.write("          padding: 1% 10%;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      #text .glyphicon {\n");
      out.write("          font-size: 15vw;\n");
      out.write("          padding: 5% 5% 10%;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      #text input[type=\"submit\"] {\n");
      out.write("          padding: 15px 20px;\n");
      out.write("          line-height: 30px;\n");
      out.write("          font-size: 20px;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      #text input[type=\"text\"] {\n");
      out.write("          width: 70%;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      #options .glyphicon-big {\n");
      out.write("          font-size: 12vw;\n");
      out.write("          padding-top: 3vw;\n");
      out.write("          padding-bottom: 3vw;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      .jumbotron {\n");
      out.write("          background-color: rgb(100, 4, 143);\n");
      out.write("          padding: 100px 50px;\n");
      out.write("          margin-bottom: 0;\n");
      out.write("          color: white;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      .jumbotron .btn {\n");
      out.write("          background-color: transparent;\n");
      out.write("          color: white;\n");
      out.write("          border: 1px solid white;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      .jumbotron .btn:hover {\n");
      out.write("          background-color: rgba(255, 255, 255, 0.25);\n");
      out.write("  </style>\n");
      out.write("  \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"jumbotron text-center\">\n");
      out.write("        <h1>Gene Expression Database of Hematopoietic Cells</h1>\n");
      out.write("        <br><br>\n");
      out.write("        <img src=\"aesthetic/bloodcells.png\" alt=\"blood cells\">\n");
      out.write("        <br><br><br><br>\n");
      out.write("        <p>An aggregation of open-source data sets from various studies investigating the gene expression of hematopoietic stem cells.</p>\n");
      out.write("        <br>\n");
      out.write("        <form action=\"#options\">\n");
      out.write("            <button class=\"btn btn-default btn-lg\">\n");
      out.write("                    <span class=\"glyphicon glyphicon-search\"></span>\n");
      out.write("                    &nbsp Search the database\n");
      out.write("            </button>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div class=\"container-fluid bg-2 text-center\" id=\"options\">\n");
      out.write("        <h2>Search Options</h2>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("                <span class=\"glyphicon glyphicon-pencil glyphicon-big\"></span>\n");
      out.write("                <h4>Text Box Search</h4>\n");
      out.write("                <p>Type the HGNC symbol into a search box to find the corresponding gene(s) and/or similarly named genes.</p>\n");
      out.write("                <br>\n");
      out.write("                <form action=\"#text\">\n");
      out.write("                    <button class=\"btn btn-default btn-lg\">\n");
      out.write("                        GO <span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("                    </button>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("                <span class=\"glyphicon glyphicon-list-alt glyphicon-big\"></span>\n");
      out.write("                <h4>Drop-down Menu</h4>\n");
      out.write("                <p>Select the HGNC symbol from a drop&#8209;down menu to find the corresponding gene(s) and/or similarly named genes.</p>\n");
      out.write("                <br>\n");
      out.write("                <form action=\"#choice\">\n");
      out.write("                    <button class=\"btn btn-default btn-lg\">\n");
      out.write("                        GO <span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("                    </button>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("                <span class=\"glyphicon glyphicon-globe glyphicon-big\"></span>\n");
      out.write("                <h4>Browse All Genes</h4>\n");
      out.write("                <p>Just kidding! This feature is currently unavailable and will probably stay that way. Why would you even do this?</p>\n");
      out.write("                <br>\n");
      out.write("                <form action=\"#\">\n");
      out.write("                    <button class=\"btn btn-default btn-lg\">\n");
      out.write("                        GO <span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("                    </button>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <br><br>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div class=\"container-fluid bg-3 text-center\" id=\"choice\">\n");
      out.write("        ");

            HashSet<String> symbols = new HashSet<String>();
            Scanner r = new Scanner(new File("C:\\Users\\zhangaa\\Documents\\"
                    + "GSE42414\\genes_symbolsonly.csv")).useDelimiter(",");
            r.nextLine();

            while (r.hasNextLine()) {
                String str = r.nextLine();
                if (str.equals("")) {
                    str = "UNKNOWN";
                }
                symbols.add(str);
            }
            String[] organizedSymbols = new String[10];
            organizedSymbols = symbols.toArray(organizedSymbols);
            Arrays.sort(organizedSymbols);
        
      out.write("\n");
      out.write("        <h2>Search Using Drop-down Menu</h2>\n");
      out.write("        <div class=\"row\">\n");
      out.write("<!--            \n");
      out.write("            <div class=\"col-sm-1\">\n");
      out.write("                        \n");
      out.write("            </div>\n");
      out.write("-->\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("                <span class=\"glyphicon glyphicon-list-alt glyphicon-big\"></span>\n");
      out.write("                <h4>Select the HGNC symbol in the form. Use&nbsp;<kbd>ctrl&nbsp;+&nbsp;click</kbd>&nbsp;to select multiple symbols.</h4>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-6 form-group\">\n");
      out.write("                <br>\n");
      out.write("                <form name=\"submit\" action=\"geneSearchResults.jsp\" role=\"form\">\n");
      out.write("                    <select name=\"symbol\" size=\"20\" class=\"form-control\" multiple required>\n");
      out.write("                        ");

                            for (String s : organizedSymbols) {
                        
      out.write("\n");
      out.write("                        <option>");
      out.print( s);
      out.write("</option>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                    <br>\n");
      out.write("                    <input class=\"btn btn-default btn-lg\" type=\"submit\" value=\"search\" />\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("                    \n");
      out.write("            <div class=\"col-sm-2\">\n");
      out.write("                        \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("                    \n");
      out.write("    <div class=\"container-fluid bg-2 text-center\" id=\"text\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-3\">\n");
      out.write("                        \n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("               <br><br><br><br><br><br>\n");
      out.write("               <h2>Search Box</h2> \n");
      out.write("               <br>\n");
      out.write("               <h4>Type the HGNC symbol in the search bar below. If searching for multiple symbols, use <kbd>,</kbd> to separate keywords.</h4>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("                <span class=\"glyphicon glyphicon-pencil\"></span>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-1\">\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-12\">\n");
      out.write("                <form name=\"submit\" action=\"geneSearchResults.jsp\" role=\"form\" class=\"form-inline\">\n");
      out.write("                    <p>\n");
      out.write("                        <input type=\"text\" name=\"symbol\" class=\"form-control\" required /> \n");
      out.write("                        &nbsp;&nbsp;\n");
      out.write("                        <input type=\"submit\" value=\"search\" class=\"btn btn-default btn-md\" />\n");
      out.write("                    </p>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>           \n");
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
