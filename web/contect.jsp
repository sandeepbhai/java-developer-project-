<%-- 
    Document   : contect
    Created on : Feb 28, 2023, 9:24:54 AM
    Author     : HELLO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link href="css/mystyel.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <style>
            
            .banner-background{
              
                clip-path: polygon(50% 0%, 100% 0, 100% 95%, 70% 92%, 43% 100%, 0 100%, 0 0);
            }
            
            .pic{
           
                border-radius: 80%;
                height:100px; 
              
                
            }
            
            
             body{
               background: url(img/ml.jpeg);
               background-attachment: fixed;
               background-size: cover;
                  
            }  
            
        </style>
        
        
    </head>
    <body>
          <%@include file="normalnav.jsp" %>
     
          <main>
              <div class="container " align="center">
                  
                  <div class="row mt-5 ">
                      
                      <div class="col-md-5 offset-md-3 ">
                          <div class="card">
                              
                              <div class="card-header text-center primary-background text-white">
                                  
                                  <img  class="pic"src="img/developer.png" alt=""/>
                                  <h3>Developer</h3>
                                  
                              </div>
                              
                              
                              <div class="card-body">
                                 
                                 
                                    
                                 <table class="table">
 
  <tbody>
    <tr>
      <th scope="row">*</th>
      <td>Name:</td>
      <td>Ram Sandip</td>
      
    </tr>
    <tr>
      <th scope="row">*</th>
      <td>Founder of :</td>
      <td> <a href="index.jsp">Code Hub</a> </td>
     
    </tr>
    <tr>
      <th scope="row">*</th>
      <td>Email:</td>
      <td><a href="#!">ramsandeep90900@gmail.com</a></td>
      
    </tr>
    <tr>
      <th scope="row">*</th>
      <td>Phone :</td>
      <td><a href="#!">7990808249</a></td>
      
    </tr>
  </tbody>
</table>
                                  
                                  
                              </div>
                              
                              <div class="card-footer text-center text-white primary-background">
                                  
                                  <h4>Thank you..</h4>
                                  
                              </div>
                          </div>
                          
                      </div>
                      
                  </div> 
                  
                  
                  
              </div>
              
              
              
          </main>
          
          
          
          
    </body>
</html>
