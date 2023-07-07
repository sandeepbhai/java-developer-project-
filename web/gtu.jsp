<%-- 
    Document   : gtu
    Created on : Feb 28, 2023, 10:56:36 AM
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
            
            #list-example{
                border: 3px solid crimson;
                 
            }
            
            #list-example1{
                border: 4px solid springgreen 
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
        
     <div class="row">
         <div class="col-4 my-3 text-center" > <h3 id="list-example1" class=" primary-background text-white">SEM-1 & 2 </h3>
             <br>
    <div id="list-example" class="list-group">
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-1">PPS(3110003)</a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-2">BASIC ELECTRONICS(3110016)</a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-3">MATHS-1(3110014)</a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">ENVIRONMENT SCIENCE(3110007)</a>
       <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">ENGINEERING GRAPHICS & D(3110013)</a>
        <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">BASIC MECHANICAL(3110006)</a>
         <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">MATHS-2(3110015)</a>
          <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">BASIC ELECTICAL(3110016)</a>
           <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">PHYSICS (3110018)</a>
    </div>
  </div>
         
         
         
         
          <div class="col-4 my-3 text-center" > <h3 id="list-example1"  class=" primary-background text-white">SEM-3 </h3>
             <br>
    <div id="list-example" class="list-group">
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-1">3130004 - Effective Technical Communication </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-2">3130006 -Probability and Statistics </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-3">3130007 -Indian Constitution </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-4"> 3130702-Data Structures</a>
       <a class="list-group-item list-group-item-action primary-background" href="#list-item-4"> 3130703-Database Management Systems </a>
        <a class="list-group-item list-group-item-action primary-background" href="#list-item-4"> 3130704 - Digital Fundamentals</a>
          <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
          <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
          <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
    </div>
  </div>
         
         
         
         <div class="col-4 my-3 text-center" > <h3  id="list-example1" class=" primary-background text-white">SEM-4 </h3>
             <br>
    <div id="list-example" class="list-group">
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-1">2140705 - Object Oriented Programming With C++ </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-2">3140702- Operating System </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-3"> 3140705 - Object Oriented Programming - I </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">  	3140707 - Computer Organization & Architecture </a>
       <a class="list-group-item list-group-item-action primary-background" href="#list-item-4"> 3140708 - Discrete Mathematics </a>
        <a class="list-group-item list-group-item-action primary-background" href="#list-item-4"> 	3140709 - Principles Of Economics And Management  </a>
          <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
           <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
            <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
    </div>
  </div>
         
         
         
         
         
         
         
         
         
         
     </div> 
     
     <div class="row">
         
         
         
         <div class="col-4 my-3 text-center" > <h3 id="list-example1"  class=" primary-background text-white">SEM-5 </h3>
             <br>
    <div id="list-example" class="list-group">
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-1"> 3150703 - Analysis And Design Of Algorithms </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-2"> 3150709 - Professional Ethics </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-3"> 3150710 - Computer Networks  </a>
      <a class="list-group-item list-group-item-action primary-background" href="https://drive.google.com/file/d/1lKeW_gloXZC1r8ZcUjBa7gS6NIpsJkVo/view?usp=share_link"> 3150711 - Software Engineering  </a>
       <a class="list-group-item list-group-item-action primary-background" href="#list-item-4"> 3150712 - Computer Graphics  </a>
        <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">3150713 - Python for Data Science </a>
         <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">3150714 - Cyber Security</a>
           <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
            <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
             <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
    </div>
  </div>
         
    
         
         
         
         
         
          <div class="col-4 my-3 text-center" > <h3 id="list-example1"  class=" primary-background text-white">SEM-6</h3>
             <br>
    <div id="list-example" class="list-group">
      <a class="list-group-item list-group-item-action primary-background" href="">2160704 - Theory of Computation </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-2"> 2160707 - Advanced Java </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-3">2160708 - Web Technology  </a>
      <a class="list-group-item list-group-item-actionpr primary-background
         " href="#list-item-4">3160704 - Theory of Computation  </a>
       <a class="list-group-item list-group-item-action primary-background" href="#list-item-4"> 3160707 - Advance java Programming  </a>
        <a class="list-group-item list-group-item-action primary-background" href="#list-item-4"> 3160712 - Microprocessor and Interfacing  </a>
         <a class="list-group-item list-group-item-action primary-background " href="#list-item-4">3160713 - WEB Programming </a>
          <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">3160714 - Data Mining </a>
         <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
          <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">3160716 - IOT and Applications </a>
    </div>
  </div>
         
         
        <div class="col-4 my-3 text-center" > <h3 id="list-example1" class=" primary-background text-white">SEM-7 </h3>
             <br>
    <div id="list-example" class="list-group">
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-1">2170701 - Complier Design  </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-2">2170709 - Information and Network Security </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-3">2170710 - Mobile Computing and Wireless Communication </a>
      <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">2170715 - Data Mining and Business Intelligence</a>
       <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">3170701 - Compiler Design  </a>
        <a class="list-group-item list-group-item-action primary-background " href="#list-item-4">3170710 - Mobile Computing and Wireless communication</a>
         <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">3170716 - Artificial Intelligence </a>
          <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">3170722 - Big Data Analytics  </a>
           <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">3170726 - Mobile Application Development </a>
    </div>
  </div>
         
         
         <div class="col-4 my-3 text-center" > <h3  id="list-example1" class=" primary-background text-white">SEM-8 </h3>
             <br>
    <div id="list-example" class="list-group">
      <a class="list-group-item  primary-background list-group-item-action" href="#list-item-1">2180703 - Artificial Intelligence </a>
      <a class="list-group-item primary-background list-group-item-action" href="#list-item-2">2180712 - Cloud Infrastructure and Services </a>
      <a class="list-group-item  primary-background list-group-item-action" href="#list-item-3">2180713 - Web Data Management  </a>
      <a class="list-group-item primary-background  list-group-item-action" href="#list-item-4">2180714 - iOS Programming </a>
       <a class="list-group-item  primary-background list-group-item-action" href="#list-item-4">2180715 - Android Programming </a>
         <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
          <a class="list-group-item list-group-item-action primary-background" href="#list-item-4"> Coming Soon</a>
           <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
            <a class="list-group-item list-group-item-action primary-background" href="#list-item-4">Coming Soon </a>
    </div>
  </div>    
      
         
         
     </div>
        
     
        
    </body>
</html>
