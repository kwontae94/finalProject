<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="/style/images/favicon.png">
  <title>Missio</title>
  <link rel="stylesheet" type="text/css" href="/style/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="/style/css/plugins.css">
  <link rel="stylesheet" type="text/css" href="/style/revolution/css/settings.css">
  <link rel="stylesheet" type="text/css" href="/style/revolution/css/layers.css">
  <link rel="stylesheet" type="text/css" href="/style/revolution/css/navigation.css">
  <link rel="stylesheet" type="text/css" href="/style/type/icons.css">
  <link rel="stylesheet" type="text/css" href="/style.css">
  <link rel="stylesheet" type="text/css" href="/style/css/color/lavender.css">
  <script src="/style/js/jquery.min.js"></script>
  <script src="/style/js/popper.min.js"></script>
  <script src="/style/js/bootstrap.min.js"></script>
  <script src="/style/revolution/js/jquery.themepunch.tools.min.js"></script>
  <script src="/style/revolution/js/jquery.themepunch.revolution.min.js"></script>
  <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems! The following part can be removed on Server for On Demand Loading) -->
  <script src="style/revolution/js/extensions/revolution.extension.actions.min.js"></script>
  <script src="/style/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
  <script src="/style/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
  <script src="/style/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
  <script src="/style/revolution/js/extensions/revolution.extension.migration.min.js"></script>
  <script src="/style/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
  <script src="/style/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
  <script src="/style/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
  <script src="/style/revolution/js/extensions/revolution.extension.still-life.min.js"></script>
  <script src="/style/js/plugins.js"></script>
  <script src="/style/js/scripts.js"></script>

  
  <!--권태민  -->
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
	

	
  <!--권태민 end  -->
  
</head>
<body>
  <div class="content-wrapper">
    <!--nav-header  -->
    <tiles:insertAttribute name="nav"/>
    <!-- main -->
    <tiles:insertAttribute name="main"/>
    <!-- footer -->
    <tiles:insertAttribute name="footer"/>
  </div>
  <!-- /.content-wrapper -->
</body>
</html>