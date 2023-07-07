<%-- 
    Document   : error
    Created on : Feb 19, 2023, 10:26:30 PM
    Author     : HELLO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry something wrong </title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link href="css/mystyel.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <style>
            
            .banner-background{
              
                clip-path: polygon(50% 0%, 100% 0, 100% 95%, 70% 92%, 43% 100%, 0 100%, 0 0);
            }
            
        </style>
        
    </head>
    <body>
        <div class="container text-center">
            
          
            <img src="img/computer.png" class="img-fluid" alt=""/>
            <h3> SOrry . Something went wrong...../</h3>
            <%= exception %>
            <a href="index.jsp" class="btn primary-background btn-lg text-white mt-3">Home</a>
            
            
        </div>
    </body>
</html>
