<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">

    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
        $(document).ready(function() {
            $(".loader").hide();
            $("#form").submit((e)=> {
                $(".loader").show();
                $("#content").hide();
                e.preventDefault();
                let amount=$("#amount").val();
                let password=$("password").val()
                // if(password!="<%=password>") {
                //     alert("Oops.. Invalid password..");
                //     return;
                // }

                amount=amount*100;
                
            });// form submit event callback




            



        });// document ready callback

    </script>






    <title>WALLET</title>
</head>

<body>

    <!-- <% User user=(User)session.getAtrribite("user"); String password=user.getPassword(); %> -->

    <!-- naviagation bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand mx-5" href="#"><img src="./images/linkcode.png" width="100" alt=""></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item mx-4">
                    <a class="nav-link active" href="./index.html">Recharge</a>
                </li>
                <li class="nav-item mx-4">
                    <a class="nav-link active" href="#">Payment history</a>
                </li>
                <li class="nav-item mx-4">
                    <a class="nav-link active" href="#">Privacy terms</a>
                </li>
            </ul>
            <ul class="navbar-nav ">
                <li class="nav-item mr-5">
                    <a class="nav-link active" href="">Logout</a>
                </li>
            </ul>
    </nav>


    

    <!-- container 1 -->
    <div class="container">
        <div class="row justify-content-center" id="content">
            
            <div class="col-md-6 my-4">
                <form class="shadow  px-4 py-4 justify-content-center form-radius" id="form">
                    <div class="form-group col text-center">
                        <h2 class="form-header py-4">Add Money To E-wallet</h2>
                    </div>
    
                    <div class="form-group col">
                        <label for="Mobile">Amount</label>
                        <input type="number" class="form-control" id="amount" required>
                        <div>
                            <small class="text-danger" id="moberror"></small>
                        </div>
                    </div>
        
                    <div class="form-group col">
                        <label for="Password">Password</label>
                        <input type="password" class="form-control" id="password" required>
                        <div>
                            <small class="text-danger" id="passerror"></small>
                        </div>
                    </div>
                    <div class="form-group col text-center">
                        <button type="submit" class="btn btn-primary px-4 btn-block mt-5">Add money</button>
                    </div>
                </form>
            </div>

            <div class="col-md-6">
                <div class="showcase-title welcome-msg">Hi..! Mayur</div>
                <div class="showcase-title">Your balance : $0.00</div>
                <p class="mt-4 showcase-text">Heyy!! wannna enter the new world of cashless payements? We at LinkCode tech are here to make cashless payments effortless for you. Signup now and enjoy our services..!</p>
                <img class="my-3" src="./images/undraw_pay_online_b1hk.svg" alt="" width="100%">
            </div>



        </div>

        <!-- Loader starts here -->
        <div class="d-flex justify-content-center align-items-center dashboard-loader" id="loader">
            <div class="spinner-grow text-primary loader" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <div class="spinner-grow text-secondary loader" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <div class="spinner-grow text-success loader" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <div class="spinner-grow text-danger loader" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <div class="spinner-grow text-warning loader" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <div class="spinner-grow text-info loader" role="status">
                <span class="sr-only">Loading...</span>
            </div>

        </div>
        <!-- Loader ends here -->




    </div>






    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    -->
</body>

</html>