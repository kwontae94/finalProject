<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
  
<!-- 그림 풀로 보여주기 -->
<link href="css/full-width-pics.css" rel="stylesheet">  
 
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Lobster&display=swap');
 #title1{
  font-family: 'Lobster', serif;
  font-size:xx-large;
  float: left;
  height: 50px;
  padding: 15px 15px;
  line-height: 20px;
 }
 
 #design{
 	margin: 50px auto;
 	margin-bottom: 5px;
 	width: 80%;
 	height: 800px;
 	
 	border: 1px solid gray;
 	
 }

@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
/*google 한글 font  */
 .nav-font-color{
 	 font-family: 'Black Han Sans', inherit;
 }
 
 .form-control{
 	width: 100%;
 	height: 100px;
 	font-size: 55px;
 }
 
 .selector{
 	border-right: 0px solid white;
 	border-left: 0px solid white;
 	background-color:transparent;
 }
 

 
</style>



  <!-- Favicon -->
  <link rel="shortcut icon" href="/favicon.ico">
  <!-- Google Fonts -->
  <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans%3A400%2C300%2C500%2C600%2C700%7CPlayfair+Display%7CRoboto%7CRaleway%7CSpectral%7CRubik">
  <!-- CSS Global Compulsory -->
  <link rel="stylesheet" href="/assets/vendor/bootstrap/bootstrap.min.css">
  <!-- CSS Global Icons -->
  <link rel="stylesheet" href="/assets/vendor/icon-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="/assets/vendor/icon-line/css/simple-line-icons.css">
  <link rel="stylesheet" href="/assets/vendor/icon-etlinefont/style.css">
  <link rel="stylesheet" href="/assets/vendor/icon-line-pro/style.css">
  <link rel="stylesheet" href="/assets/vendor/icon-hs/style.css">
  <link rel="stylesheet" href="/assets/vendor/animate.css">
  <link rel="stylesheet" href="/assets/vendor/cubeportfolio-full/cubeportfolio/css/cubeportfolio.min.css">
  <link rel="stylesheet" href="/assets/vendor/fancybox/jquery.fancybox.css">
  <link rel="stylesheet" href="/assets/vendor/hs-megamenu/src/hs.megamenu.css">
  <link rel="stylesheet" href="/assets/vendor/hamburgers/hamburgers.min.css">

  <!-- CSS Unify -->
  <link rel="stylesheet" href="/assets/css/unify-core.css">
  <link rel="stylesheet" href="/assets/css/unify-components.css">
  <link rel="stylesheet" href="/assets/css/unify-globals.css">

  <!-- CSS Customization -->
  <link rel="stylesheet" href="/assets/css/custom.css">


</head>
<body>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a id="title1" class="navbar-brand" href="#">Travler</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="/page">나의 여행일기</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">여행이야기들</a>
      </li>
    </ul>
    	<button class="btn btn-outline-info mr-2 mr-sm-0" type="button" onclick="location.href='/guest/signup' ">Sign up</button>
    	
    	

        <sec:authorize access="isAuthenticated()">
        	<button class="btn btn-outline-info mr-2 mr-sm-0" type="button" id=logout_btn>Log out</button>
		</sec:authorize>
    	
             
</nav>
  
    <script>
		$(document).ready(function(){
			$(document).on("click","#logout_btn",function(){
				var form = document.createElement('form');
				var objs;
				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
 				objs.setAttribute('name', '${_csrf.parameterName }');
				objs.setAttribute('value', '${_csrf.token }');
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "/logout");
				document.body.appendChild(form);
				form.submit();
			});
		});
    </script>


  

<main class="container my-5" style="height: 900px;">

		<script type="text/javascript">
			$(function(){
				$('.carousel').carousel();
				
			});
		</script>
		
		<style>
		    .carousel-imgs {
							 top: 0;
							 left: 0;
							 width: 300px;
							 height: 300px;
							} 
		
		</style>
		<div class="row">
			<c:forEach items="${join}" var="join">
		
		<div class="col-md-4 text-center g-mb-30">
			<div id="carouselExampleControlsNoTouching" class="carousel slide" data-touch="false" data-interval="false">
			  <div class="carousel-inner">
			  
		
			  
			  
			  	
	            <c:set var="upload" value="${join.attachFileVo.uploadPath }" />
	            <c:set var="upload1" value="${fn:substring(upload, upload.length()-25, upload.length()) }" />
	            <div class="carousel-item active">
	            
	            	<img src="${upload1}/${join.attachFileVo.fileName} " class="d-block w-100 carousel-imgs" alt="...">
	            </div>
	          
			  
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleControlsNoTouching" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleControlsNoTouching" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
			
			<h3 class="h4 g-color-black" style="text-align: left;" onclick="location.href='others?id=${join.createVo.id}'">${join.createVo.user }'s 여행록</h3>
			
		</div>
		
			</c:forEach>
		</div>
          <!-- /assets/defaultImgs/back01.jpg -->
          

          
          
        
</main>

    <!-- Footer -->
  <footer class="bg-dark" style="height: 100px;">
    <div class="container">
    	<br/>
       	<br/>
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>



</body>
</html>