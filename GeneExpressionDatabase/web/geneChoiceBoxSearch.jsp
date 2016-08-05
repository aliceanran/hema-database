<%-- 
    Document   : geneChoiceBoxSearch
    Created on : Jul 12, 2016, 9:43:52 AM
    Author     : zhangaa
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.util.HashSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
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
%>
                
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search genes</title>
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <style>
            body {
                background-color: #fddefb;
                text-align: center;
            }
        </style>
    </head>
    
    <body>
        <h1>Search Genes - Dropdown List</h1>
        <p><kbd>Ctrl + click</kbd> to select multiple GeneIDs</p>
        
        <form name="submit" action="geneSearchResults.jsp">
            <select name="symbol" size="20" multiple required>
                <%
                    for (String s : organizedSymbols) {
                %>
                        <option><%= s %></option>
                <%
                    }
                %>
            </select><br><br>
            <input class="w3-btn" type="submit" value="search" />
        </form>
           
<%--    
        <form action="geneTextBoxSearch.jsp">
            <input type="submit" value="text input" />
        </form>
--%>

        <p style="line-height:10px">
            <br>
            <a href="geneTextBoxSearch.jsp"><small>switch to text input</small></a>
            <br><br>
            <a href="index.jsp"><small>back to home page</small></a>
        </p>
            
    </body>
</html>