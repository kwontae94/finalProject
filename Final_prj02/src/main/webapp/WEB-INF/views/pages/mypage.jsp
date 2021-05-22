<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  
  <script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>

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

<body class="g-overflow-x-hidden">
  <main>



    <!-- Header -->
    <header id="js-header" class="u-header u-header--static">
      <div class="u-header__section u-header__section--light g-bg-white g-transition-0_3 g-py-10">
        <nav class="js-mega-menu navbar navbar-expand-lg hs-menu-initialized hs-menu-horizontal">
          <div class="container">
            <!-- Responsive Toggle Button -->
            <button class="navbar-toggler navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-top-minus-3 g-right-0" type="button" aria-label="Toggle navigation" aria-expanded="false" aria-controls="navBar" data-toggle="collapse" data-target="#navBar">
              <span class="hamburger hamburger--slider">
            <span class="hamburger-box">
              <span class="hamburger-inner"></span>
              </span>
              </span>
            </button>
            <!-- End Responsive Toggle Button -->

            <!-- Navigation -->
            <div class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg g-mr-40--lg" id="navBar">
              <ul class="navbar-nav text-uppercase g-pos-rel g-font-weight-600 mr-auto">
                <!-- Intro -->
                <li class="nav-item  g-mx-10--lg g-mx-15--xl">
                  <a href="#" class="nav-link g-py-7 g-px-0">HOME</a>
                </li>
                <!-- End Intro -->
                
                <!--menu bar  -->
                <li class="nav-item  g-mx-10--lg g-mx-15--xl">
                  <a href="/album?id=${layout[0].getId()}" class="nav-link g-py-7 g-px-0">사진첩</a>
                </li>

                <li class="nav-item  g-mx-10--lg g-mx-15--xl">
                  <a href="#" class="nav-link g-py-7 g-px-0">방명록</a>
                </li>
                <!--End menu bar  -->
              </ul>
            </div>
            <!-- End Navigation -->
			
			<script type="text/javascript">
            	console.log("${layout[0].getId()}");
            	
            	$(function(){
            		var myId="<%=(String)session.getAttribute("userID")%>";
            		
	            	$('#update').hide();
	            	
	            	if("${layout[0].getId()}"==myId){
	            			console.log("사건 발생");
	            			$('#update').show();
	            			
	            	}
            		
            	});
            	/* 관리 버튼 숨기기  */
            </script>

			<a href="/update?id=${layout[0].getId()}" id="update" class="update btn btn-md u-btn-outline-darkpurple g-mr-10 g-mb-15">관리</a>
			
        
          </div>
        </nav>
      </div>
    </header>
    <!-- End Header -->

	<c:forEach items="${layout }" var="bean1">
    <!-- Promo Block -->
    <section class="g-bg-img-hero" style="background-image: url(/assets/img-temp/1920x1080/back05.jpg);">
      <div class="container g-pos-rel g-z-index-1 g-py-150">
        <div class="g-mb-40">
          <h1 class="g-color-white g-font-weight-700 g-font-size-80 g-font-size-130--md g-line-height-1_2 mb-0">${bean1.title }</h1>
          <span class="d-block g-color-white g-font-size-20 g-pos-rel g-top-minus-20--md ml-md-5">our branding</span>
        </div>        
      </div>
    </section>
    <!-- End Promo Block -->


        
   
 <%--   <section class="g-py-100">
		<div class="container">
				<div class="row">
					
					<c:forEach items="${pictures }" var="bean" varStatus="status">
					  <div class="col-lg-6 g-mb-30">
					    <!-- Article -->
					    <article class="u-block-hover g-mb-10">
					      <figure class="u-bg-overlay g-bg-black-opacity-0_3--after">
					        <img class="img-fluid w-100 u-block-hover__main--zoom-v1" src="${bean.fileName }" alt="Image Description">
					      </figure>
					
					    </article>
					    <!-- End Article -->
					      <!-- <hr class="g-brd-gray-light-v4"> -->
					    
						  <h3 class="g-font-weight-300 g-mb-15">
			                <a class="u-link-v5 g-color-main g-color-primary--hover" href="#">${bean.title }</a>
			              </h3>
			              
			               <div class="g-mb-30">
				                <p>${bean.comment }</p>
				           </div>
					  </div>
					  
					</c:forEach>
		  
				</div>  
   		 </div>
    </section> --%>
    
    <section class="g-py-100">
		<div class="container">
    <div class="container g-py-100 masonry-grid-item col-sm-6 g-mb-30" id="layout">
      <!-- Blog Classic Blocks -->
      <article class="u-shadow-v11">
         <c:forEach var="list" items="${list1}">
            <c:set var="upload" value="${list.uploadPath }" />
            <c:set var="upload1" value="${fn:substring(upload, upload.length()-25, upload.length()) }" />
            <img class="img-fluid w-100" src="${upload1}/${list.fileName}">

            <div class="g-bg-white g-pa-30">
               <span class="d-block g-color-gray-dark-v4 g-font-weight-600 g-font-size-12 text-uppercase mb-2">${list.date }</span>
               <h2 class="h5 g-color-black g-font-weight-600 mb-3">
                  <a class="u-link-v5 g-color-black g-color-primary--hover g-cursor-pointer" href="#">${list.caption }</a>
               </h2>
               <p class="g-color-gray-dark-v4 g-line-height-1_8">${list.location }</p>

               <hr class="g-my-20">

               <ul class="list-inline d-flex justify-content-between mb-0">
                  <li class="list-inline-item g-color-gray-dark-v4"><a
                     class="d-inline-block g-color-gray-dark-v4 g-font-size-13 g-cursor-pointer g-text-underline--none--hover" href="#"> <i
                        class="align-middle g-font-size-default mr-1 icon-finance-206 u-line-icon-pro"></i> 10 Comments
                  </a></li>
               </ul>

               <hr class="g-my-20">

                           </div>
         </c:forEach>
      </article>
      <!-- End Blog Classic Blocks -->
   </div>
   </div>
   </section>
    
          
    

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
    
    <a class="js-go-to u-go-to-v1" href="#" data-type="fixed" data-position='{
     "bottom": 15,
     "right": 15
   }' data-offset-top="400" data-compensation="#js-header" data-show-effect="zoomIn">
      <i class="hs-icon hs-icon-arrow-top"></i>
    </a>
  </main>

  <div class="u-outer-spaces-helper"></div>


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
  </script>

</body>

</html>
