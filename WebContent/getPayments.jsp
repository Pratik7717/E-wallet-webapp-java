<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


    <title>WALLET</title>
</head>

<body>
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
                    <a class="nav-link active" href="./dashboard.jsp">home</a>
                </li>
                <li class="nav-item mx-4">
                    <a class="nav-link active" href="GetAllPaymentsController">Payment history</a>
                </li>
                <li class="nav-item mx-4">
                    <a class="nav-link active" href="">Privacy terms</a>
                </li>
            </ul>
            <ul class="navbar-nav ">
                <li class="nav-item mr-5">
                    <a class="nav-link active" href="">Logout</a>
                </li>
            </ul>
         </div>
    </nav>

	<c:if test="${requestScope.message !=null}">
		NOTE : ${message}
	</c:if>
	
    <div class=" container my-5">
    	
    	<c:if test="${requestScope.list !=null and
 		not empty requestScope.list}">
    	
	        <table class="table table-bordered">
	            <thead class="thead">
	              <tr>
	                <th scope="col">Payment Id</th>
	                <th scope="col">Description</th>
	                <th scope="col">Amount</th>
	                <th scope="col">UserId</th>
	              </tr>
	            </thead>
	            <tbody>
		              <c:forEach items="${requestScope.list}" var="p"> 		
						<tr>
							<th scope="row">${p.paymentid}</th>
							<td>${p.description}</td>
							<td>$${p.amount}</td>
							<td>${p.userid}</td>
						</tr>
					 </c:forEach>
	            </tbody>
	          </table>
    	</c:if>

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
