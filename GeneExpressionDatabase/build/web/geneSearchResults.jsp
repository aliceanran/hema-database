<%-- 
    Document   : geneSearchResults
    Created on : Jul 12, 2016, 1:44:41 PM
    Author     : zhangaa
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>results</title>
        <link rel="stylesheet" href="aesthetic/simple.css" type="text/css" />
        <style>
            body {
                background-color: #f8f2b7;
            }
        </style>
    </head>
    
    <body style="text-align: center">
        <jsp:useBean id="mygenesearch" scope="request" class="beans.GeneSearchBySymbolBean" />
        <% 
            mygenesearch.setSymbol(request.getParameterValues("symbol"));
        %>
        <h1>Gene Search Results</h1>
        
        <p><i>You searched for HGNC symbol<jsp:getProperty name="mygenesearch" 
                         property="symbol" />. Click row for more information.</i><br>
        </p>
        
        <table align="center">
            <thead>
                <tr><th>GeneID</th><th>Ensembl ID</th><th>HGNC Symbol</th><th>Chromosome</th>
                    <th>Start</th><th>End</th></tr>
            </thead>
            <tbody>
                
            <%
                List<Object> rows = mygenesearch.getDb_Data();
                
                for (int i = 0; i < rows.size(); i++) {   
                    mygenesearch.setObj(rows.get(i));
            %>
                <tr>
                    <td>
                        <a href="http://www.ncbi.nlm.nih.gov/gene/?term=<%= mygenesearch.getId()%>"
                           target="_blank" class="tablelink" title="NCBI Gene"><%= mygenesearch.getId()%></a>
                    </td>
                    <td><a href="http://useast.ensembl.org/Homo_sapiens/Gene/Summary?g=<%= mygenesearch.getEnsembl()%>"
                           target="_blank" class="tablelink" title="Ensembl Summary"><%= mygenesearch.getEnsembl()%></a>
                    </td>
                    <td>
                        <a href="expression.jsp?symbol=<%= mygenesearch.getHgnc()%>&id=<%= mygenesearch.getId()%>" 
                           target="_blank" class="tablelink" title="Expression"><%= mygenesearch.getHgnc()%></a>
                    </td>
                    <td>
                        <a class="tablelink"><%= mygenesearch.getChromosome()%></a>
                    </td>
                    <td>
                        <a class="tablelink"><%= mygenesearch.getStart()%></a>
                    </td>
                    <td>
                        <a class="tablelink"><%= mygenesearch.getEnd()%></a>
                    </td>
                </tr> 
            <%
                }
            %>
            
            
            </tbody>
        </table>
        <p style="line-height: 20px">
            go back: &nbsp
            <a href="index.jsp?#choice">drop-down</a> &nbsp
            <a href="index.jsp?#text">text box</a> &nbsp
            <a href="index.jsp">index</a>
        </p> 
    </body>
</html>