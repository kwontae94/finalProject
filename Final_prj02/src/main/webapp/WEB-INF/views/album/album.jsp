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
	
							<li class="nav-item  g-mx-10--lg g-mx-15--xl"><a href="#" class="nav-link g-py-7 g-px-0">방명록</a></li>
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
		<a class="btn btn-secondary g-ml-10 g-mb-15" id="uploadbtn" href="/album/add?id=${layout[0].getId()}">upload</a>
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
				<a href="/album/detail?fileName=${list.fileName}&&id=${layout[0].getId()}"> <img src="${upload1}/${list.fileName}">
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
    <footer class="g-bg-bluegray">
      <div class="container g-pt-100 g-pb-60">

        
        <div class="row justify-content-start g-mb-50 g-mb-70--md">
          <div class="col-md-4 col-lg-3 g-mb-30">
            <h2 class="h3 g-color-white g-font-weight-600 g-mb-15">Contacts</h2>

            <!-- Links -->
            <ul class="list-unstyled">
              <li class="media mb-4">
                <i class="d-flex g-color-white-opacity-0_7 mt-1 mr-3 icon-hotel-restaurant-235 u-line-icon-pro"></i>
                <div class="media-body g-color-white-opacity-0_9">
                  서울특별시 종로구 종로2가 9 7층 비트캠프
                </div>
              </li>
              <li class="media mb-4">
                <i class="d-flex g-color-white-opacity-0_7 mt-1 mr-3 icon-communication-062 u-line-icon-pro"></i>
                <div class="media-body g-color-white-opacity-0_9">
                  ${bean1.email }
                </div>
              </li>
              <li class="media mb-4">
                <i class="d-flex g-color-white-opacity-0_7 mt-1 mr-3 icon-communication-033 u-line-icon-pro"></i>
                <div class="media-body g-color-white-opacity-0_9">
                  ${bean1.phone }
                </div>
              </li>
            </ul>
            <!-- End Links -->
          </div>

          <div class="col-md-3 g-mb-30">
            <!-- Links -->
            <ul class="list-unstyled">
              
              <li class="my-3">
                <a class="d-inline-block g-color-white-opacity-0_9 g-color-primary--hover rounded g-text-underline--none--hover g-transition-0_5 g-pl-7--hover" href="#">Services</a>
              </li>
              
              <li class="my-3">
                <a class="d-inline-block g-color-white-opacity-0_9 g-color-primary--hover rounded g-text-underline--none--hover g-transition-0_5 g-pl-7--hover" href="#">Privacy Policy</a>
              </li>
            </ul>
		  
            <!-- End Links -->
          </div>

        </div>

        <div class="row justify-content-between">
          <div class="col-md-6 g-mb-10">
            <p class="g-color-white-opacity-0_7 g-font-size-13">Any references to associated images, mockups or logos are for demonstration purposes only and is not intended to refer to any actual organization or event.</p>
          </div>

          <div class="col-md-6 text-md-right g-mb-10">
            <p class="g-color-white-opacity-0_7 g-font-size-13">Website designed by
              <a class="u-link-v5 g-brd-bottom g-brd-white g-color-white g-color-primary--hover" href="#">${bean1.user }</a>
            </p>
          </div>
        </div>

        <p class="g-color-white-opacity-0_7 g-font-size-13">2020 &copy; ${bean1.user }. All Rights Reserved.</p>
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