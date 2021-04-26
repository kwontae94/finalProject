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