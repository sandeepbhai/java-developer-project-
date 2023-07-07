<%-- 
    Document   : register
    Created on : Feb 18, 2023, 9:49:12 AM
    Author     : HELLO
--%>

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

                clip-path: polygon(50% 0%, 100% 0, 100% 95%, 70% 92%, 43% 100%, 0 100%, 0 0);
            }

        </style>




    </head>
    <body>
        <%@include file="normalnav.jsp" %>
        <main class="d-flex align-items-center primary-background  p-5 " >    

            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">

                        <div class="card">
                            <div class="card-header text-center primary-background ">
                                <span class="fa fa-user fa-2x"></span>
                                <p>Register here</p>
                            </div>  
                            <div class="card-body">




                                <form id="reg" action="Register" method="POST">


                                    <div class="mb-3">
                                        <label for="user_name" class="form-label">User Name</label>
                                        <input name="user_name" type="text" class="form-control" id="user_name">
                                    </div>





                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                                        <input  name="user_email"type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                    </div>


                                    <div class="mb-3">
                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                        <input name="user_password" type="password" class="form-control" id="exampleInputPassword1">
                                    </div>

                                    <div class="form-group">

                                        <label  for="gender">Select Gender</label>
                                        <br>
                                        <input type="radio"  id="gender"name="gender" value="male">Male
                                        <input type="radio"  id="gender" name="gender" value="female">Female

                                    </div>


                                    <br>


                                    <div class="mb-3 form-check">
                                        <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Terms and Condition</label>
                                    </div>
                                    <div class="container text-center" id="loder" style="display: none;">
                                        <span class="fa fa-refresh fa-4x fa-spin"></span> 
                                        <h5>Please wait..</h5>
                                    </div>

                                    <button  id="submit-btn"type="submit" class="btn btn-primary">Singup</button>
                                </form>

                            </div>
                            <div class="card-footer">



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

        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

        <script>
            $(document).ready(function () {

                console.log("loaded...")
                $('#reg').on('submit', function (event) {
                    event.preventDefault();

                    let  form = new FormData(this);
                    $("#submit-btn").hide();
                    $("#loder").show();
                    $.ajax({
                        url: "Register",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)
                            $("#submit-btn").show();
                            $("#loder").hide();


                            swal("Registered Successfully.. we redirecting you at login page")
                                    .then((value) => {
                                       window.location="login.jsp"
                                    });

                        },
                        error: function (data, textStatus, errorThrown) {

                            console.log(jqXHR)
                            $("#submit-btn").show();
                            $("#loder").hide();
                        },
                        processData: false,
                        contentType: false

                    });

                });

            });

        </script>   



    </body>
</html>
