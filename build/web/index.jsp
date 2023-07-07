<%-- 
    Document   : index
    Created on : Feb 17, 2023, 2:20:28 PM
    Author     : HELLO
--%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entites.Post"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.entites.User"%>
<%@page import="com.tech.blog.dao.LikeDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
       
        <%@include file="normalnav.jsp" %>
     
        <div class="container-fluid p-0 m-0 banner-background">
            
            <div class="jumbotron primary-background text-white" >
                <div class="container">
                    
                    
                    
               
                    <h3 class="display-3"> Welcome to  Code Hub</h3>
               
                <p> Welcome to World of Coding, and interview preparation </p>
                
                <p>Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let programmers write once, run anywhere (WORA),[17] meaning that compiled Java code can run on all platforms that support Java without the need to recompile.</p>
                
                <button class="btn btn-outline-light btn-lg"><span class="	fa fa-handshake-o"></span>Start it Free</button>
                
                <a href="login.jsp" class="btn btn-outline-light btn-lg"><span class="	fa fa-user fa-spin"></span>Log in</a>
            </div>
                 </div> 
                 
            
            
        </div>
        
        <div class="container">
            
          
            
        
           <div class="row  mt-4">
                
                <div class="col-md-4">
                    
                    <div class="card">
  
                        <div class="card-header primary-background text-white text-center">
                          <h4>Java programming </h4>  
                            
                        </div>
  <div class="card-body">
    
    <p class="card-text">Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let programmers write once, run anywhere (WORA),[17] meaning that compiled Java code can run on all platforms that support Java without the need to recompile..</p>
    <a href="program.jsp" class="btn btn-primary">Read more.</a>
  </div>
</div>
                    
                </div>
               
                
                
                 <div class="col-md-4">
                    
                    <div class="card">
                          <div class="card-header primary-background text-white text-center">
                          <h4>Python programming </h4>  
                            
                        </div>
  
  <div class="card-body">
    
    <p class="card-text"> Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation.[33]

Python is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly procedural), object-oriented and functional programming. It is often described as a "batteries included" language due to its comprehensive standard library   </p>
    <a href="program.jsp" class="btn btn-primary">Read more.</a>
  </div>
</div>
                    
                </div>
                
                
                <div class="col-md-4">
                    
                    <div class="card">
                        
                          <div class="card-header primary-background text-white text-center">
                          <h4>Node js  </h4>  
                            
                        </div>
  
  <div class="card-body">
   
    <p >  Node.js is a cross-platform, open-source server environment that can run on Windows, Linux, Unix, macOS, and more. Node.js is a back-end JavaScript runtime environment, runs on the V8 JavaScript Engine, and executes JavaScript code outside a web browser.

Node.js lets developers use JavaScript to write command line tools and for server-side scripting.</p>
  
     <a href="program.jsp" class="btn btn-primary">Read more.</a>
  </div>
</div>
                    
                </div> 
                
                
            </div>
            
            
            <div class="row">
                 <div class="col-md-4">
                    
                    <div class="card">
                          <div class="card-header primary-background text-white text-center">
                          <h4>React Js </h4>  
                            
                        </div>
  
  <div class="card-body">
   
    <p>  React (also known as React.js or ReactJS) is a free and open-source front-end JavaScript library[3] for building user interfaces based on components. It is maintained by Meta (formerly Facebook) and a community of individual developers and companies.   </p>
    <a href="program.jsp" class="btn btn-primary">Read more.</a>
  </div>
</div>
                    
                </div>
                
               <div class="col-md-4">
                    
                    <div class="card">
                          <div class="card-header primary-background text-white text-center">
                          <h4>Machine learning </h4>  
                            
                        </div>
  
  <div class="card-body">
   
    <p>  Machine learning (ML) is a field of inquiry devoted to understanding and building methods that "learn" – that is, methods that leverage data to improve performance on some set of tasks.[1] It is seen as a part of artificial intelligence.

Machine learning algorithms build a model based on sample data, known as training data, in order to make predictions or decisions without being explicitly programmed to do so  </p>
    <a href="program.jsp" class="btn btn-primary">Read more.</a>
  </div>
</div>
                    
                </div>  
                   
                
                 <div class="col-md-4">
                    
                    <div class="card">
                          <div class="card-header primary-background text-white text-center">
                          <h4> JSP and SERVLET </h4>  
                            
                        </div>
  
  <div class="card-body">
   
    <p>  A Jakarta Servlet (formerly Java Servlet) is a Java software component that extends the capabilities of a server. Although servlets can respond to many types of requests, they most commonly implement web containers for hosting web applications on web servers and thus qualify as a server-side servlet web API. Such web servlets are the Java counterpart to other dynamic web content technologies such as PHP and ASP.NET.    </p>
    <a href="program.jsp" class="btn btn-primary">Read more.</a>
  </div>
</div>
                    
                </div>
                 
            
            
            
            
        </div>    
        </div>
            
        
        
        
        
        
        
     
        
        
        
        <script
  src="https://code.jquery.com/jquery-3.6.3.min.js"
  integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
  crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        
        <script src="js/myjs.js" type="text/javascript"></script>
        
        
        <script>
          
        </script>   
    </body>
</html>
