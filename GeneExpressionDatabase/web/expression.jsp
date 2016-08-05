<%-- 
    Document   : expression
    Created on : Jul 27, 2016, 3:03:29 PM
    Author     : zhangaa
--%>

<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.File"%>
<%@page import="java.awt.Font"%>
<%@page import="java.awt.Color"%>
<%@page import="java.awt.Graphics2D"%>
<%@page import="java.awt.image.BufferedImage"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>gene expression</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="shortcut icon" href="aesthetic/bloodcells.ico" type="image/x-icon" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
        <style>
            body {
                font-family: Century Gothic, sans-serif;
            }
            
            .container-fluid {
                padding: 30px;
            }
            
            table, td, th {
                border-collapse: collapse;
                text-align: center;
                border: 1px solid black;
                height: 35px;
                padding: 5px;
            }

            table {
                width: 50%;
            }
            
            #fig {
                padding-left: 25vw;
            }
            
            #key {
                padding-left: 0;
                padding-top: 400px;
                text-align: left
            }
            
            .low {
                background-color: rgb(2, 67, 63);
            }
            
            .avg {
                background-color: rgb(119, 100, 159);
            }
            
            .high {
                background-color: rgb(236, 133, 255);
            }
        </style>
        
    </head>
    <body>
        <jsp:useBean id="exp" scope="request" class="beans.GeneExpressionBean" />
        <jsp:setProperty name="exp" property="*" />
        <div class="container-fluid text-center">
            <h1>Gene Expression of <jsp:getProperty name="exp" property="symbol"/></h1>
       
        <%
            exp.getDb_Data();
            BufferedImage bImage = exp.getNewFig();
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write( bImage, "jpg", baos );
            baos.flush();
            byte[] imageInByteArray = baos.toByteArray();
            baos.close();
            String b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(imageInByteArray);
        %>
            <div class="row">
                <div class="col-sm-8" id="fig">
                    <img src="data:image/jpg;base64, <%=b64%>" alt="<jsp:getProperty name="exp" property="symbol"/>" 
                     width="800" height="600">
                </div>
                <div class="col-sm-4" id="key">
                    <p><kbd class="low">&nbsp;&nbsp;</kbd> low values are in dark blue</p>
                    <p><kbd class="avg">&nbsp;&nbsp;</kbd> average values are in purple</p>
                    <p><kbd class="high">&nbsp;&nbsp;</kbd> high values are in light pink</p>
                </div>
            </div>
            <table align="center">
                <thead>
                    <tr>
                        <th>GeneID</th>
                        <th><%=exp.celltypes[0]%></th>
                        <th><%=exp.celltypes[1]%></th>
                        <th><%=exp.celltypes[2]%></th>
                        <th><%=exp.celltypes[3]%></th>
                        <th><%=exp.celltypes[4]%></th>
                        <th><%=exp.celltypes[5]%></th>
                        <th><%=exp.celltypes[6]%></th>
                        <th><%=exp.celltypes[7]%></th>
                        <th><%=exp.celltypes[8]%></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><jsp:getProperty name="exp" property="id"/></td>
                        <td><%= exp.getCell(0) %></td>
                        <td><%= exp.getCell(1) %></td>
                        <td><%= exp.getCell(2) %></td>
                        <td><%= exp.getCell(3) %></td>
                        <td><%= exp.getCell(4) %></td>
                        <td><%= exp.getCell(5) %></td>
                        <td><%= exp.getCell(6) %></td>
                        <td><%= exp.getCell(7) %></td>
                        <td><%= exp.getCell(8) %></td>
                    </tr>
                </tbody>
            </table>
            
        </div>
    </body>
</html>
