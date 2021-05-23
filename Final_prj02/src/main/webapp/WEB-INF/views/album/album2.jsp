	<%@page import="org.springframework.ui.Model"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
	
	
	<!DOCTYPE html>
	<html>
	
	<head>
	<!-- Title -->
	<title>Home Projects | | Unify - Responsive Website Template</title>
	
	<!-- Required Meta Tags Always Come First -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="_csrf" th:content="${_csrf.token}">
	<meta name="_csrf_header" th:content="${_csrf.headerName}">
	
	<script
	  src="https://code.jquery.com/jquery-3.6.0.js"
	  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	  crossorigin="anonymous"></script> 
	<!--jquery cdn version 3.6.0 -->
	
	<link rel="stylesheet" href="/assets/vendor/dzsparallaxer/dzsparallaxer.css">
	<link rel="stylesheet" href="/assets/vendor/dzsparallaxer/dzsscroller/scroller.css">
	<link rel="stylesheet" href="/assets/vendor/dzsparallaxer/advancedscroller/plugin.css">
	<!-- Favicon -->
	<link rel="shortcut icon" href="/favicon.ico">
	<!-- Google Fonts -->
	<link rel="stylesheet"
		href="//fonts.googleapis.com/css?family=Open+Sans%3A400%2C300%2C500%2C600%2C700%7CPlayfair+Display%7CRoboto%7CRaleway%7CSpectral%7CRubik">
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
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="/assets/css/styles.css">
	<link rel="stylesheet" href="/style/css/bootstrap.min.css">
	
	<!-- CSS Unify -->
	<link rel="stylesheet" href="/assets/css/unify-core.css">
	<link rel="stylesheet" href="/assets/css/unify-components.css">
	<link rel="stylesheet" href="/assets/css/unify-globals.css">
	
	<!-- CSS Customization -->
	<link rel="stylesheet" href="/assets/css/custom.css">
	
	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="/assets/vendor/animate.css">
	<link rel="stylesheet" href="/assets/vendor/custombox/custombox.min.css">
	
	<style>
	#upload_btn {
		position: relative;
		margin-left: 1650px;
	}
	
	</style>
	
	
	</head>
	<body>
	
	
	
	<!-- Header -->
	<header id="js-header" class="u-header u-header--static">
		<div class="u-header__section u-header__section--light g-bg-white g-transition-0_3 g-py-10">
			<nav class="js-mega-menu navbar navbar-expand-lg hs-menu-initialized hs-menu-horizontal">
				<div class="container">
					<!-- Responsive Toggle Button -->
					<button class="navbar-toggler navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-top-minus-3 g-right-0" type="button"
						aria-label="Toggle navigation" aria-expanded="false" aria-controls="navBar" data-toggle="collapse" data-target="#navBar">
						<span class="hamburger hamburger--slider"> <span class="hamburger-box"> <span class="hamburger-inner"></span>
						</span>
						</span>
					</button>
					<!-- End Responsive Toggle Button -->
	
					<!-- Navigation -->
					<div class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg g-mr-40--lg" id="navBar">
						<ul class="navbar-nav text-uppercase g-pos-rel g-font-weight-600 mr-auto">
							<!-- Intro -->
							<li class="nav-item  g-mx-10--lg g-mx-15--xl"><a href="/others?id=${layout[0].getId()}" class="nav-link g-py-7 g-px-0">HOME</a></li>
							<!-- End Intro -->
	
							<!--menu bar  -->
							<li class="nav-item  g-mx-10--lg g-mx-15--xl"><a href="#" class="nav-link g-py-7 g-px-0">사진첩</a></li>
	
							<li class="nav-item  g-mx-10--lg g-mx-15--xl"><a href="/home" class="nav-link g-py-7 g-px-0">travler home</a></li>
							<!--End menu bar  -->
						</ul>
					</div>
					<!-- End Navigation -->
				</div>
			</nav>
		</div>
	</header>
	<!-- End Header -->
	
	<main>
	
	
	<div class="u-header__section u-header__section--light g-bg-white g-transition-0_3 g-py-10" id="upload_btn">
		<a class="btn btn-secondary g-ml-10 g-mb-15" id="uploadbtn" href="/album/add">upload</a>
	</div>
	
	
	<script type="text/javascript">
		console.log("${layout[0].getId()}");
		
		$(function(){
			var myId="<%=(String)session.getAttribute("userID")%>";
			
	    	$('#uploadbtn').hide();
	    	
	    	if("${layout[0].getId()}"==myId){
	    			console.log("사건 발생");
	    			$('#uploadbtn').show();
	    			
	    	}
			
		});
	
	</script>
	
	<div class="profile__photo-grid g-mb-40">
		<c:forEach var="list" items="${list}">
			<div class="profile__photo">
				<c:set var="upload" value="${list.uploadPath }" />
				<c:set var="upload1" value="${fn:substring(upload, upload.length()-25, upload.length()) }" />
				<a href="/album/detail?fileName=${list.fileName}&&id=${layout[0].getId()} "> <img src="${upload1}/${list.fileName}">
				</a>
			</div>
	
		</c:forEach>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	</main>
	
	<c:forEach items="${layout }" var="bean1">
	
	<!-- Footer -->
    <footer class="container g-pt-100 g-pb-20">
      <div class="row">
        <div class="col-sm-6 col-lg-3 g-mb-30">
          <a class="d-inline-block mb-4" href="#">
            <img class="g-width-100 g-height-auto" src="/assets/img/logo/travler2.png" alt="Image description">
          </a>

          <p class="g-color-gray-dark-v4 g-font-size-13">${bean1.user } &copy; All Rights Reserved.</p>
        </div>

        <div class="col-sm-6 col-lg-3 g-mb-30">
          <h3 class="h6 g-color-black g-font-weight-600 text-uppercase mb-4">About</h3>

          <!-- Links -->
          <ul class="list-unstyled g-color-gray-dark-v4 g-font-size-13">
           
            <li class="my-3"><i class="mr-2 fa fa-angle-right"></i>
              <a class="u-link-v5 g-color-gray-dark-v4 g-color-primary--hover" href="#">Services</a>
            </li>
            <li class="my-3"><i class="mr-2 fa fa-angle-right"></i>
              <a class="u-link-v5 g-color-gray-dark-v4 g-color-primary--hover" href="#">Privacy &amp; Policy</a>
            </li>
            <li class="my-3"><i class="mr-2 fa fa-angle-right"></i>
              <a class="u-link-v5 g-color-gray-dark-v4 g-color-primary--hover" href="#">Terms &amp; Conditions</a>
            </li>
          </ul>
          <!-- End Links -->
        </div>

        <div class="col-sm-6 col-lg-3 g-mb-30">
          <h3 class="h6 g-color-black g-font-weight-600 text-uppercase mb-4">Contacts</h3>

          <!-- Links -->
          <ul class="list-unstyled g-color-gray-dark-v4 g-font-size-13">
            <li class="media mb-4">
              <i class="d-flex mt-1 mr-3 icon-hotel-restaurant-235 u-line-icon-pro"></i>
              <div class="media-body">
                Unit 25 Suite 3, 925 Prospect
                <br>PI New York Avenue
              </div>
            </li>
            <li class="media mb-4">
              <i class="d-flex mt-1 mr-3 icon-communication-062 u-line-icon-pro"></i>
              <div class="media-body">
                <a class="u-link-v5 g-color-gray-dark-v4 g-color-primary--hover" href="#">${bean1.email }</a>
              </div>
            </li>
            <li class="media mb-4">
              <i class="d-flex mt-1 mr-3 icon-communication-033 u-line-icon-pro"></i>
              <div class="media-body">
                ${bean1.phone }
              </div>
            </li>
          </ul>
          <!-- End Links -->
        </div>


    </footer>
    <!-- End Footer -->
	</c:forEach>
	
	
	<!-- JS Global Compulsory -->
	<script src="/assets/vendor/jquery/jquery.min.js"></script>
	<script src="/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
	<script src="/assets/vendor/popper.js/popper.min.js"></script>
	<script src="/assets/vendor/bootstrap/bootstrap.min.js"></script>
	
	
	<!-- JS Implementing Plugins -->
	<script src="/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
	<script src="/assets/vendor/cubeportfolio-full/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
	<script src="/assets/vendor/gmaps/gmaps.min.js"></script>
	<script src="/assets/vendor/fancybox/jquery.fancybox.min.js"></script>
	
	<!-- JS Unify -->
	<script src="/assets/js/hs.core.js"></script>
	<script src="/assets/js/components/hs.header.js"></script>
	<script src="/assets/js/helpers/hs.hamburgers.js"></script>
	<script src="/assets/js/components/hs.tabs.js"></script>
	<script src="/assets/js/components/hs.cubeportfolio.js"></script>
	<script src="/assets/js/components/hs.popup.js"></script>
	<script src="/assets/js/components/hs.go-to.js"></script>
	
	<!-- JS Customization -->
	<script src="/assets/js/custom.js"></script>
	
	<!-- JS Plugins Init. -->
	<script src="../../assets/vendor/dzsparallaxer/dzsparallaxer.js"></script>
	<script src="../../assets/vendor/dzsparallaxer/dzsscroller/scroller.js"></script>
	<script src="../../assets/vendor/dzsparallaxer/advancedscroller/plugin.js"></script>
	
	<!-- JS Implementing Plugins -->
	<script src="../../assets/vendor/custombox/custombox.min.js"></script>
	
	<!-- JS Unify -->
	<script src="../../assets/js/components/hs.modal-window.js"></script>
	<script>
	    $(document).on('ready', function () {
	        // initialization of tabs
	        $.HSCore.components.HSTabs.init('[role="tablist"]');
	
	        // initialization of popups
	        $.HSCore.components.HSPopup.init('.js-fancybox');
	
	        // initialization of go to
	        $.HSCore.components.HSGoTo.init('.js-go-to');
	      });
	
	      $(window).on('load', function () {
	        // initialization of header
	        $.HSCore.components.HSHeader.init($('#js-header'));
	        $.HSCore.helpers.HSHamburgers.init('.hamburger');
	
	        // initialization of HSMegaMenu component
	        $('.js-mega-menu').HSMegaMenu({
	          event: 'hover',
	          pageContainer: $('.container'),
	          breakpoint: 991
	        });
	
	        // initialization of cubeportfolio
	        $.HSCore.components.HSCubeportfolio.init('.cbp');
	      });
	
	      $(window).on('resize', function () {
	        setTimeout(function () {
	          $.HSCore.components.HSTabs.init('[role="tablist"]');
	        }, 200);
	      });
	      
	      $(document).on('ready', function () {
	        // initialization of popups
	        $.HSCore.components.HSModalWindow.init('[data-modal-target]');
	      });
	    </script>
	</script>
	
	</body>
	
	</html>