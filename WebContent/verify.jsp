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
    <link rel="stylesheet" href="./css/verifypagestyle.css">
    <title>WALLET</title>
</head>

<body>

    <!-- naviagation bar -->
    <nav class="navbar navbar-dark navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">LinkCode Wallet</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"             aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
      
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Privacy terms</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <div class="main-content">
        <br><br>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-3"></div>
    
                <div class="col-md-6">
                    <div class="text-center info">
                        We have sent one verification code to your email. You are requsted to enter it below in the form and 
                        verify your account. If you have entered incorrect email id, please go back and sign up again
                    </div>
                    <hr>
                    
                </div>
    
                <div class="col-md-3"></div>
            </div>
            <div class="row align-items-center my-5">
                <div class="col-md-6">
                    <img src="./images/undraw_secure_login_pdn4.svg" width="100%" alt="">
                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                          <h5 class="card-title form-header">Account Verification</h5>
                          <form method="post" action="">
                            <div class="form-group col">
                                <label for="code">Verification code</label>
                                <input type="email" class="form-control" name="code" id="code" required>
                            </div>
                            <div class="form-group col text-center">
                                <button type="submit" class="btn btn-primary btn-block">Verify</button>
                            </div>
                          </form>
                          <!-- <a href="#" class="btn btn-primary">Verify</a> -->
                        </div>
                      </div>

                </div>
            </div>


        </div>


    </div>












    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
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