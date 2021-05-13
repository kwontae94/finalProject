<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <!-- Title -->
  <title>Home Projects | | Unify - Responsive Website Template</title>

  <!-- Required Meta Tags Always Come First -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

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
                  <a href="/home" class="nav-link g-py-7 g-px-0">HOME</a>
                </li>
                <!-- End Intro -->
                
                <!--menu bar  -->
                <li class="nav-item  g-mx-10--lg g-mx-15--xl">
                  <a href="/album" class="nav-link g-py-7 g-px-0">사진첩</a>
                </li>

                <li class="nav-item  g-mx-10--lg g-mx-15--xl">
                  <a href="#" class="nav-link g-py-7 g-px-0">방명록</a>
                </li>
                <!--End menu bar  -->
              </ul>
            </div>
            <!-- End Navigation -->

        
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


        
          <!-- Timeline #01 -->
          <section class="g-py-100">
            <div class="container">
              <div class="text-center g-mb-50">
                <h2 class="h4">Timeline</h2>
              </div>
				
			<c:forEach items="${pictures }" var="bean" varStatus="status">
			 	
              <div class="row u-timeline-v1-wrap g-mx-minus-15">
                <!-- Timeline Box -->
                <div class="col-md-6 g-orientation-right g-pl-60 g-pl-15--md g-pr-40--md g-mb-60 g-mb-0--md">
                  <div class="u-timeline-v1__icon g-color-gray-light-v5 g-ml-13 g-ml-minus-10--md">
                    <i class="fa fa-circle"></i>
                  </div>

                  <div class="g-pos-rel">
                    <!-- Timeline Arrow -->
                    <div class="g-hidden-sm-down u-triangle-inclusive-v1--left g-top-30 g-z-index-2">
                      <div class="u-triangle-inclusive-v1--left__front g-brd-white-left g-brd-white-right"></div>
                      <div class="u-triangle-inclusive-v1--left__back g-brd-gray-light-v4-left g-brd-gray-light-v4-right"></div>
                    </div>

                    <div class="g-hidden-md-up u-triangle-inclusive-v1--right g-top-30 g-z-index-2">
                      <div class="u-triangle-inclusive-v1--right__front g-brd-white-right"></div>
                      <div class="u-triangle-inclusive-v1--right__back g-brd-gray-light-v4-right"></div>
                    </div>
                    <!-- End Timeline Arrow -->

                    <!-- Timeline Content -->
                    <article class="u-timeline-v1 g-pa-5">
                      <figure class="g-pos-rel">
                        <img class="img-fluid w-100" src='${bean.fileName }' alt="Image Description">
							

                      </figure>

                      <div class="g-py-25 g-px-20">
                        <h3 class="g-font-weight-300 g-mb-15">
                          <a class="u-link-v5 g-color-main g-color-primary--hover" href="#">${bean.title }</a>
                        </h3>

                        <div class="g-mb-30">
                          <p>${bean.comment }</p>
                        </div>

                        <hr class="g-brd-gray-light-v4">

                        <div class="media g-font-size-12">
                          <img class="d-flex mr-3 rounded-circle g-width-30 g-height-30" src="../../assets/img-temp/100x100/img7.jpg" alt="Image Description">
                          <div class="media-body align-self-center text-uppercase">
                            <a class="u-link-v5 g-color-main g-color-primary--hover" href="#">${bean.userName }</a>
                          </div>

                          <div class="align-self-center">
                            <a class="u-link-v5 g-color-main g-color-primary--hover g-mr-10" href="#">
                              <i class="icon-bubbles g-mr-2"></i>
                              16
                            </a>
                            <a class="u-link-v5 g-color-main g-color-primary--hover" href="#">
                              <i class="icon-eye g-mr-2"></i>
                              129
                            </a>
                          </div>
                        </div>
                      </div>
                    </article>
                    <!-- End Timeline Content -->
                  </div>
                </div>
                <!-- End Timeline Box -->

                <!-- Timeline Box -->
                <div class="col-md-6 g-orientation-left g-pl-60 g-pl-40--md g-mt-60--md g-mb-60 g-mb-0--md">
                  <div class="u-timeline-v1__icon g-color-gray-light-v5 g-mr-13 g-mr-minus-8--md">
                    <i class="fa fa-circle"></i>
                  </div>

                  <div class="g-pos-rel">
                    <!-- Timeline Arrow -->
                    <div class="u-triangle-inclusive-v1--right g-top-30 g-z-index-2">
                      <div class="u-triangle-inclusive-v1--right__front g-brd-white-right"></div>
                      <div class="u-triangle-inclusive-v1--right__back g-brd-gray-light-v4-right"></div>
                    </div>
                    <!-- End Timeline Arrow -->

                    <!-- Timeline Content -->
                    <article class="u-timeline-v1 g-pa-5">
                      <figure class="g-pos-rel">
                        <img class="img-fluid w-100" src="../../assets/img-temp/400x270/img9.jpg" alt="Image Description">

 
                      </figure>

                      <div class="g-py-25 g-px-20">
                        <h3 class="g-font-weight-300 g-mb-15">
                          <a class="u-link-v5 g-color-main g-color-primary--hover" href="#">Trends of Digital Marketing in 2017</a>
                        </h3>

                        <div class="g-mb-30">
                          <p>Spen been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                        </div>

                        <hr class="g-brd-gray-light-v4">

                        <div class="media g-font-size-12">
                          <img class="d-flex mr-3 rounded-circle g-width-30 g-height-30" src="../../assets/img-temp/100x100/img5.jpg" alt="Image Description">
                          <div class="media-body align-self-center text-uppercase">
                            <a class="u-link-v5 g-color-main g-color-primary--hover" href="#">Kate William</a>
                          </div>

                          <div class="align-self-center">
                            <a class="u-link-v5 g-color-main g-color-primary--hover g-mr-10" href="#">
                              <i class="icon-bubbles g-mr-2"></i>
                              21
                            </a>
                            <a class="u-link-v5 g-color-main g-color-primary--hover" href="#">
                              <i class="icon-eye g-mr-2"></i>
                              178
                            </a>
                          </div>
                        </div>
                      </div>
                    </article>
                    <!-- End Timeline Content -->
                  </div>
                </div>
                <!-- End Timeline Box -->
			</c:forEach>

  
              </div>
            </div>
          </section>
          <!-- End Timeline #01 -->
        
          


    

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
                  <br>PI New York Avenue
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
