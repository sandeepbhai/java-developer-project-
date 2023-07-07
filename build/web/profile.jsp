<%-- 
    Document   : profile
    Created on : Feb 19, 2023, 11:31:13 PM
    Author     : HELLO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.entites.Category"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.entites.Message"%>
<%@page import="com.tech.blog.entites.User"%>
<%@page errorPage="error.jsp" %>
<%
    User user= (User)session.getAttribute("currentuser");
    if(user==null){
    
    response.sendRedirect("login.jsp");
    
    }
    
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            
            
             body{
               background: url(img/ml.jpeg);
               background-attachment: fixed;
               background-size: cover;
                  
            }  
            
        </style>
        
        
        
    </head>
    <body>
       
        
        
        
        
        
           <nav class="navbar navbar-expand-lg navbar-dark primary-background ">
  <div class="container-fluid">
      <a class="navbar-brand" href="#"><span class="fa fa-asterisk"></span>Code Hub</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp"><span class="fa fa-bank"></span>Home</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <span class="	fa fa-bars text-white"></span>   Categories
          </a>
          <ul class="dropdown-menu primary-background text-center">
            <li><a class="dropdown-item" href="#">Programming language</a></li>
            <li><a class="dropdown-item" href="#">Project implemention</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">DSA with JAVA</a></li>
          </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white" href="contect.jsp"><span class="fa fa-address-card text-white"></span>Contact</a>
        </li>
      
        
         <li class="nav-item">
            <a class="nav-link text-white" href="#!" data-bs-toggle="modal" data-bs-target="#add-post"><span class="fa fa-plus-square text-white"></span>ASK/ANS Doubt</a>
        </li>
      
        
        
        

      
        
      </ul>
        <ul class="navbar-nav mr-right">
            
            <li>
                 <a class="nav-link text-white" href="#!" data-bs-toggle="modal" data-bs-target="#profile-modal"><span class="fa fa-user-circle text-white"></span><%= user.getName() %></a>
                
            </li>
            <li>
                 <a class="nav-link text-white" href="Logoutservlet"><span class="fa fa-user text-white "></span>Logout</a>
                
            </li>
            
            
        </ul>
  </div>
</nav> 
                 
       
                            <%

                                Message s = (Message) session.getAttribute("msg");

                                if (s != null) {

                            %>

                            <div class="alert <%= s.getCssClass() %>" role="alert">
                                <%=  s.getContent()%>
                            </div>

                            <%   
                                session.removeAttribute("msg");
                                }
                            %>
        
                <!--main body--> 
                
                <main>
                    
                    <div class="container">
                       
                        <div class="row mt-4">
                            <div class="col-md-4">
                                
                                <div class="list-group">
                                    <a href="#"   onclick="getpost(0,this)" class="  c-link list-group-item list-group-item-action active" aria-current="true">
    All Post
  </a>
                                    
                                    <%  

             PostDao d = new PostDao(ConnectionProvider.getConnection());                    
             ArrayList<Category> list1 = d.getallCategory();
               for(Category c:list1){
                                        
             %>                           
             <a href="#"  onclick="getpost(<%= c.getCid() %>,this)" class=" c-link list-group-item list-group-item-action"><%= c.getName()  %></a>               
                           <%
                           
                                        } 

                                    %>                              
                                    
                                    


</div>
                                
                            </div>
                            
                                    <div class="col-md-8 text-white" >
                                
                                 <div class ="container text-center" id="loader">
                                    
                                     <i class="fa fa-refresh fa-4x fa-spin text-white"> </i>
                                     <h3 class="mt-2 text-white">Loading..</h3>
                                     
                                 </div>
                                        
                                        <div class="container-fluid" id="post-container">
                                            
                                            
                                            
                                        </div>
                                      
                                 
                                
                            </div>
                        </div>
                        
                        
                    </div>
                    
                    
                    
                    
                </main>
                
                
                
                
                <!--main body end-->
                 
                 
                 
            <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="profile-modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header primary-background text-white">
         
           <h1 class="modal-title fs-5" id="staticBackdropLabel">Techblog</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <div class="container text-center">
              
              <img src="pics/<%= user.getProfile() %>" class="img-fluid" style="border-radius:50%;max-width: 150px;;">
              <br>
              
                <h1 class="modal-title fs-5" id="staticBackdropLabel"><%=  user.getName()%></h1>
                
                <div id="profile-details">
                <table class="table">
  
  <tbody>
    <tr>
      <th scope="row">Id</th>
      <td><%= user.getId() %></td>
      
    </tr>
    <tr>
      <th scope="row">Email</th>
      <td><%= user.getEmail()%></td>
     
    </tr>
    <tr>
      <th scope="row">Gender</th>
      <td><%= user.getGender() %></td>
    </tr>
  </tbody>
</table>
                </div>         
    
    <div id="profile-edit" style="display:none">
        
        <h3>Please Edit Carefully</h3>
        
        <form action="Editservlet" method="post" enctype="multipart/form-data" >
            
            <table class="table">
                
                 <tr>
      <th scope="row">Id</th>
      <td><%= user.getId() %></td>
      
    </tr>
    
     <tr>
      <th scope="row">Email</th>
      <td><input type="email"  class="form-control"name="user_email" value="<%= user.getEmail()  %>"</td>
      
    </tr>
    
            
  <tr>
      <th scope="row">Name</th>
      <td><input type="text"  class="form-control"name="user_name" value="<%= user.getName() %>" </td>
      
    </tr>
    
      <tr>
      <th scope="row">Password</th>
      <td><input type="password"  class="form-control"name="user_password" value="<%= user.getPassword()  %>" </td>
      
    </tr>
    
      <tr>
      <th scope="row">Gender</th>
      <td><%= user.getGender().toUpperCase()  %></td>
      
    </tr>
              
      <tr>
      <th scope="row">New Profile pic :</th>
      <td><input type="file"  class="form-control"name="image" </td>
      
    </tr>
    
     
    
                
            </table>
      
      <div class="container">
          
          <button type="submit" class="btn btn-outline-primary">SAVE</button>
      </div>
            
        </form>
        
        
        
        
    </div>









    
          </div>
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button  id="edit-profile-btn"type="button" class="btn btn-primary">EDIT</button>
      </div>
    </div>
  </div>
</div>     
                 
                 
                 
                 
                 
                 
                 
                 
           

      
                 
                 
                 
                 
 

<!-- Modal -->
<div class="modal fade" id="add-post" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header ">
        <h1 class="modal-title fs-5 " id="exampleModalLabel">Ask OR Answer Doubt </h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
          <form id="add-post-form" action="Addpostservlet" method="post">
           
              <div class="form-group">
                      
                  <select class="form-control" name="cid">
                  
                      <option selected="disable" >----Select Category---</option>
                      <%
                          PostDao postd = new PostDao(ConnectionProvider.getConnection());
                          
                          ArrayList<Category> list = postd.getallCategory();
                               
                          for(Category c:list){
                          
                          %>
                          
                          <option value="<%= c.getCid()  %>">
                              <%= c.getName()  %>
                          </option>
                          <%
                              
                          }


                          %>
                  
              </select>
                  
              </div>
              <br>
              <div class="form-group">
                  
                  <input  name="ptitle"type="text" placeholder="1.Enter post Title" class="form-control"/> 
                  
                  </div> 
              
               <div class="form-group">
                  
                   <textarea name="pcontent"class="form-control"  style="height:200px;" placeholder="2.Enter Your Question/Answer" ></textarea> 
                  
                  </div> 
              
              
              <div class="form-group">
                  
                  <label>3.Enter Your Problem Code OR solution Code(IF Possible)</label>
                  <textarea   name="pcode"  style="height:200px;" placeholder=" 3.Enter Your Problem Code OR solution Code(IF Possible)"  class="form-control" > </textarea>
                  
                  </div> 
              
              <div class="form-group">
                  <label> 4.Upload Your Ans OR Question Pic </label>
                  <br>
                  <input type="file" name="pic">
                  
              </div>
              <div class="container text-center" >
                  
                  <button type="submit" class="btn btn-outline-primary">POST</button>
                  
                  
              </div>
              
          </form>
          
          
          
      </div>
      
    </div>
  </div>
</div>         
                 
               
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
  
        
        
        
        
        
        
        
                
        <script
  src="https://code.jquery.com/jquery-3.6.3.min.js"
  integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
  crossorigin="anonymous"></script>
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
       




        <script src="js/myjs.js" type="text/javascript"></script>
        
        
        <script>
            
            let editstatus= false;
          
          $(document).ready(function(){
              $('#edit-profile-btn').click(function(){
                  
              if(editstatus== false){
                  
                  
                   $("#profile-details").hide()
               $("#profile-edit").show();
               
               editstatus=true;
              }
              else{
                  
                   $("#profile-details").show()
                   
               $("#profile-edit").hide();
               editstatus= false;
                  
                  
              }
                  
              })
              
              
          });
          
          
        </script>   
        
       
         
         <script>
             
             $(document).ready(function(e){
                 
               $("#add-post-form").on("submit",function(event){
                   
                   event.preventDefault();
                   
                   let form = new FormData(this);
                   
                   $.ajax({
                       
                       url:"Addpostservlet",
                       type:'POST',
                       data:form,
                       success : function(data, textStatus, jqXHR){
                          
                            console.log(data);
                            if (data.trim() == 'done')
                            {
                                
                                swal("Good job!", "Post successfully :)", "success");
                            }else{
                                
                               
                            }
                           
                           
                       },
                       error : function(jqXHR, textStatus, errorThrown){
                           
                          
                           
                           
                       },
                       
                       processData : false,
                       contentType: false
                       
                       
                   })
                   
               })  
             })
             
             
             
             
         </script>
         
        
        <!--loading post-->
        
        
        
        <script>
            
            function getpost(catid,temp){
                $("#loader").show();
                $("#post-container").hide()
                $(".c-link").removeClass('active')
                
                
                 $.ajax({
                
                       url:"load_post.jsp",
                       data:{cid:catid},
                       success : function(data, textStatus, jqXHR){
                
                                 $("#loader").hide();
                                 $("#post-container").show();
                                 $("#post-container").html(data)
                                 $(temp).addClass('active')
                
            }
                    
                   
               })
               
                
                
                
                
                
            }
            
           $(document).ready(function(){
              let allPostref = $('.c-link')[0] 
             getpost(0,allPostref)
              
               
               
               
           }) 
            
            
            
            
            
            
            
            
        </script>
        
        
        
        
        
        
        
  
        
        
        
    </body>
</html>
