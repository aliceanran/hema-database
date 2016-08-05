<%-- 
    Document   : newindex
    Created on : Jul 25, 2016, 10:45:15 AM
    Author     : zhangaa
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.util.HashSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Database Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="shortcut icon" href="aesthetic/bloodcells.ico" type="image/x-icon" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="aesthetic/homepage.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">
    
    <script> //taken from the bootstrap tutorial on w3schools.com
    $(document).ready(function(){
        // Add smooth scrolling to all links in jumbotron + footer link
        $(".jumbotron a, footer a, #options a").on('click', function(event) {

        // Make sure this.hash has a value before overriding default behavior
        if (this.hash !== "") {

            // Prevent default anchor click behavior
            event.preventDefault();

            // Store hash
            var hash = this.hash;

            // Using jQuery's animate() method to add smooth page scroll
            // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 900, function(){

                // Add hash (#) to URL when done scrolling (default click behavior)
                window.location.hash = hash;
                });
            } // End if
        });
    })
    </script>

</head>

<body>
    <div class="jumbotron" id="top">
        <div class="text-left">
            <h1>Gene Expression Database of Hematopoietic Cells</h1>
            <hr>
            <p>An aggregation of open-source data sets from various studies investigating the gene expression of hematopoietic stem cells.</p>
            <br>

            <form action="#options">
                <button class="btn btn-default btn-lg">
                    <span class="glyphicon glyphicon-search"></span>
                    &nbsp Search the database
                </button>
            </form>
        </div>
        <div class="text-center">
            <a href="#options" class="hvr-sink" title="go down">
                <span class="glyphicon glyphicon-chevron-down"></span>
            </a> 
        </div>
    </div>
    
    <div class="container-fluid bg-2 text-center" id="options">
        <h2>Search Options</h2>
        <br>
        <div class="row">
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-pencil glyphicon-big"></span>
                <h4>Text Box Search</h4>
                <p>Type the HGNC symbol into a search box to find the corresponding gene(s) and/or similarly named genes.</p>
                <br>
                <a class="btn btn-default btn-lg" href="#text">
                    GO <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-list-alt glyphicon-big"></span>
                <h4>Drop-down Menu</h4>
                <p>Select the HGNC symbol from a drop&#8209;down menu to find the corresponding gene(s) and/or similarly named genes.</p>
                <br>
                <a class="btn btn-default btn-lg" href="#choice">
                    GO <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-globe glyphicon-big"></span>
                <h4>About</h4>
                <p>Background information about the project and potential future applications. Currently unavailable.</p>
                <br>
                <a class="btn btn-default btn-lg" href="#top">
                    GO <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
            
        </div>
        <br><br>
    </div>
    
    <div class="container-fluid bg-3 text-center" id="choice">
        <%
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
        %>
        <h2>Search Using Drop-down Menu</h2>
        <div class="row">
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-list-alt glyphicon-big"></span>
                <h4>Select the HGNC symbol in the form. Use&nbsp;<kbd>ctrl&nbsp;+&nbsp;click</kbd>&nbsp;to select multiple symbols.</h4>
            </div>
            <div class="col-sm-6 form-group">
                <br>
                <form name="submit" action="geneSearchResults.jsp" role="form" target="_blank">
                    <select name="symbol" size="20" class="form-control" multiple required>
                        <%
                            for (String s : organizedSymbols) {
                        %>
                        <option><%= s%></option>
                        <%
                            }
                        %>
                    </select>
                    <br>
                    <input class="btn btn-default btn-lg" type="submit" value="search" />
                </form>
            </div>      
            <div class="col-sm-2">
                        
            </div>

        </div>
    </div>
                    
    <div class="container-fluid bg-2 text-center" id="text">
        <div class="row">
            <div class="col-sm-3">
                        
            </div>
            <div class="col-sm-4">
                <br><br><br><br><br>
                <h2>Search Box</h2> 
                <br>
                <h4>Type the HGNC symbol in the search bar below. If searching 
                    for multiple symbols, use <kbd>,</kbd> to separate keywords.</h4>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-pencil"></span>
            </div>
            <div class="col-sm-1">
                
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <form name="submit" action="geneSearchResults.jsp" role="form" class="form-inline" target="_blank" >
                    <p>
                        <input type="text" name="symbol" class="form-control" required /> 
                        &nbsp;&nbsp;
                        <input type="submit" value="search" class="btn btn-default btn-md" />
                    </p>
                </form>
            </div>
        </div>
    </div> 
    <footer class="container-fluid text-center bg-1">
        <a href="#top" title="top" class="hvr-float">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a>
        <p>Bootstrap Theme Made By Alice Zhang</p>
    </footer>
</body>
</html>