<%-- 
    Document   : index
    Created on : Jun 30, 2016, 4:01:14 PM
    Author     : zhangaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gene Expression Database of Hematopoietic Cells</title>
        <link rel="stylesheet" type="text/css" href="aesthetic/simple.css" >
        <style>
            body {
                background-color: #f0e5de;
            }
            
            h1 {
                line-height: 80px;
            }
        </style>
    </head>
    <body>
        <%--
        <h1>Hello, Cells!!</h1>
        --%>
        <h1>Gene Expression Database of Hematopoietic Cells</h1>
        
        <img src="aesthetic/bloodcells.png" alt="blood cells">
        
        <h3>Search genes</h3>
        <ul style="list-style-position: inside; line-height: 20px">
            <li>by HGNC symbol: &nbsp
                <a href="geneChoiceBoxSearch.jsp" >Drop-down menu</a> &nbsp
                <a href="geneTextBoxSearch.jsp" >Text input</a>
            </li>
        </ul>
        
    </body>
</html>
