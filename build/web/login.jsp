

<%@page import="com.tech.blog.entites.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link href="css/mystyel.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>

            .banner{

                clip-path: polygon(50% 0%, 100% 0, 100% 89%, 80% 100%, 20% 100%, 0 89%, 0 0);
            }

        </style>



    </head>
    <body>

        <%@include file="normalnav.jsp" %>
        <main class="d-flex align-items-center primary-background banner " style="height:70vh">
            <div class="container">

                <div class="row">
                    <div class="col-md-4 offset-md-4">

                        <div class="card">

                            <div class="card-header primary-background text-white text-center">
                                <span class="fa fa-user-plus fa-3x"></span> 
                                <p>Login here</p> 

                            </div>


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





                            <div class="card-body">
                                <form action="Loginservlet" method="post">
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                                        <input  name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                        <input  name="password" required type="password" class="form-control" id="exampleInputPassword1">
                                    </div>










                                    <div class="mb-3 form-check">


                                    </div>
                                    <div class="container text-center">

                                        <button type="submit" class="btn btn-primary">Login</button> 

                                    </div>
                                </form>
                            </div>




                        </div>



                    </div> 


                </div>


            </div>




        </main>







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
