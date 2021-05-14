<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Title -->
  <title>Home Allure | | Unify - Responsive Website Template</title>

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

<body >

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
                <!-- HOME -->
                <li class="nav-item  g-mx-10--lg g-mx-15--xl">
                  <a href="/home" class="nav-link g-py-7 g-px-0">HOME</a>
                </li>
                <!-- End HOME -->

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


	<c:forEach items="${layout }" var="bean">
	
    <!-- Revolution Slider -->
    <div class="g-overflow-hidden">
      <div id="welcome_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="themeplicity-header177" data-source="gallery" style="margin:0px auto;background-color:#e9eae2;padding:0px;margin-top:0px;margin-bottom:0px;">
        <!-- START REVOLUTION SLIDER 5.4.1 fullwidth mode -->
        <div id="welcome" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.4.1">
          <ul>
            <!-- SLIDE  -->
            <li data-index="rs-3186" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300" data-rotate="0" data-saveperformance="off" data-title="Slide"
            data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
              <!-- <!-- MAIN IMAGE -->
              <img src="/assets/img/bg/transparent.png" data-bgcolor="#e9eae2" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off" class="rev-slidebg">
              LAYERS -->
				
			<c:forEach items="${pictures}" var="map">
              <!-- LAYER NR. 1 -->
              <div class="tp-caption   tp-resizeme rs-parallaxlevel-14" id="slide-3186-layer-13" data-x="['right','right','right','right']" data-hoffset="['-328','-328','-328','-248']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['-417','-417','-417','-240']"
              data-width="none" data-height="none" data-whitespace="nowrap" data-type="image" data-responsive_offset="on" data-frames='[{"delay":600,"speed":2000,"frame":"0","from":"x:right;rZ:-90deg;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
              data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 5;">
                <img src="${map.fileName }" alt="" data-ww="['700px','700px','700px','500px']" data-hh="['700px','700px','700px','500px']" width="1500" height="1500">
              </div>
			</c:forEach>

              <!-- LAYER NR. 2 -->
              <div class="tp-caption   tp-resizeme rs-parallaxlevel-7" id="slide-3186-layer-14" data-x="['left','left','left','left']" data-hoffset="['-248','-248','-248','-190']" data-y="['top','top','top','top']" data-voffset="['-219','-219','-219','-205']" data-width="none"
              data-height="none" data-whitespace="nowrap" data-type="image" data-responsive_offset="on" data-frames='[{"delay":600,"speed":2000,"frame":"0","from":"x:left;rZ:90deg;","to":"o:1;rZ:20;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
              data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 6;">
                <img src="${bean1.fileName }" alt="" data-ww="['650px','650px','650px','500px']" data-hh="['650px','650px','650px','500px']" width="1000" height="1000">
              </div>

<!--               LAYER NR. 3
              <div class="tp-caption   tp-resizeme rs-parallaxlevel-3" id="slide-3186-layer-5" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['0','-50','-50','-120']" data-width="none"
              data-height="none" data-whitespace="nowrap" data-type="image" data-responsive_offset="on" data-frames='[{"delay":600,"speed":1500,"frame":"0","from":"y:bottom;rX:45deg;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
              data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 7;">
                <img src="/assets/img-temp/1200x918/img1.png" alt="" data-ww="['600px','600px','600px','600px']" data-hh="['459px','459px','459px','459px']" width="1200" height="918">
              </div> -->

              <!-- LAYER NR. 4 -->
              <div class="tp-caption   tp-resizeme rs-parallaxlevel-6" id="slide-3186-layer-7" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['top','top','top','top']" data-voffset="['466','406','456','276']" data-width="none"
              data-height="none" data-whitespace="nowrap" data-type="image" data-responsive_offset="on" data-frames='[{"delay":600,"speed":1200,"frame":"0","from":"y:bottom;rX:90deg;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
              data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 8;">
                <img src="/assets/img-temp/800x800/img1.png" alt="" data-ww="['600px','600px','600px','600px']" data-hh="['600px','600px','600px','600px']" width="800" height="800">
              </div>

      

           


              <!-- LAYER NR. 9 -->
              <div class="tp-caption  " id="slide-3186-layer-1" data-x="['center','center','center','center']" data-hoffset="['-1','0','0','0']" data-y="['top','top','top','top']" data-voffset="['267','217','214','116']" data-fontsize="['60','60','40','30']" data-lineheight="['60','60','40','30']"
              data-width="['none','none','480','320']" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="off" data-responsive="off" data-frames='[{"delay":300,"speed":1000,"frame":"0","from":"y:50px;opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
              data-textAlign="['center','center','center','center']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 13; white-space: nowrap; font-size: 60px; font-weight: 700; line-height: 60px; color: rgba(0, 0, 0, 1);">${bean.title}
              </div>


              <!-- LAYER NR. 13 -->
              <div class="tp-caption tp-shape tp-shapewrapper " id="slide-3186-layer-17" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" data-width="full"
              data-height="full" data-whitespace="nowrap" data-type="shape" data-actions='[{"event":"click","action":"stopvideo","layer":"slide-3186-layer-16","delay":""},{"event":"click","action":"stoplayer","layer":"slide-3186-layer-17","delay":""},{"event":"click","action":"stoplayer","layer":"slide-3186-layer-16","delay":""},{"event":"click","action":"stoplayer","layer":"slide-3186-layer-18","delay":""},{"event":"click","action":"exitfullscreen","delay":""}]'
              data-basealign="slide" data-responsive_offset="off" data-responsive="off" data-frames='[{"delay":"bytrigger","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"bytrigger","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","force":true,"to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bs:solid;bw:0 0 0 0;"}]'
              data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" data-lasttriggerstate="reset" style="z-index: 17;background-color:rgba(0, 0, 0, 0.85);border-color:rgba(0, 0, 0, 0);cursor:pointer;"></div>

              <!-- LAYER NR. 14 -->
              <div class="tp-caption   tp-resizeme tp-videolayer" id="slide-3186-layer-16" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" data-whitespace="nowrap"
              data-type="video" data-responsive_offset="on" data-frames='[{"delay":"bytrigger","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"bytrigger","speed":0,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
              data-vimeoid="185336500" data-videoattributes="title=0&byline=0&portrait=0&api=1" data-videowidth="['1024px','800px','640','480']" data-videoheight="['576px','600px','360','270px']" data-videoloop="none" data-textAlign="['inherit','inherit','inherit','inherit']"
              data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" data-lasttriggerstate="reset" data-autoplay="off" data-volume="100" data-stopallvideos="true" style="z-index: 18;"></div>

              <!-- LAYER NR. 15 -->
              <div class="tp-caption   tp-resizeme tp-svg-layer" id="slide-3186-layer-18" data-x="['right','right','right','right']" data-hoffset="['20','20','20','20']" data-y="['top','top','top','top']" data-voffset="['20','20','20','20']" data-width="60" data-height="60"
              data-whitespace="nowrap" data-type="svg" data-actions='[{"event":"click","action":"stopvideo","layer":"slide-3186-layer-16","delay":""},{"event":"click","action":"stoplayer","layer":"slide-3186-layer-17","delay":""},{"event":"click","action":"stoplayer","layer":"slide-3186-layer-16","delay":""},{"event":"click","action":"stoplayer","layer":"slide-3186-layer-18","delay":""},{"event":"click","action":"exitfullscreen","delay":""}]'
              data-svg_src="/assets/figures/ic_close_36px.svg" data-svg_idle="sc:transparent;sw:0;sda:0;sdo:0;" data-basealign="slide" data-responsive_offset="off" data-frames='[{"delay":"bytrigger","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"bytrigger","speed":0,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
              data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" data-lasttriggerstate="reset" style="z-index: 19; min-width: 60px; max-width: 60px; max-width: 60px; max-width: 60px; color: rgba(255, 255, 255, 1.00);cursor:pointer;"></div>
            </li>
          </ul>
          <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
        </div>
      </div>
    </div>
    <!-- End Revolution Slider -->



    <!-- About -->
    <section class="container g-pt-100 g-pb-70">
      <div class="masonry-grid row">
        <div class="masonry-grid-sizer col-sm-1"></div>

        <div class="masonry-grid-item col-md-6 g-mb-30">
          <div class="g-px-50 g-pb-50">
            <h1 class="g-color-black g-font-weight-600 g-line-height-1_4">Creative Digital &amp;<br>Enthusiastic Agency
              </h1>
          </div>
        </div>

        <div class="masonry-grid-item col-md-6 g-mb-30">
          <div class="g-px-50--lg g-pb-50--lg">
            <p class="g-color-black g-font-weight-600">This is where we sit down, grab a cup of coffee and dial in the details. Understanding the task at hand and ironing out the wrinkles is key.</p>
            <p>Now that we've aligned the details, it's time to get things mapped out and organized. This part is really crucial in keeping the project in line to completion.</p>
          </div>
        </div>

        <div class="masonry-grid-item col-sm-6 col-md-5 g-mb-30">
          <img class="img-fluid w-100" src="/assets/img-temp/500x320/img2.jpg" alt="Image description">
        </div>

        <div class="masonry-grid-item col-sm-6 col-md-5 g-offset-md-1 g-mb-30">
          <img class="img-fluid w-100" src="/assets/img-temp/500x320/img3.jpg" alt="Image description">
        </div>

        <div class="masonry-grid-item col-md-5 g-mb-30">
          <div class="g-px-50--lg g-pt-50--lg">
            <h2 class="h3 g-color-black g-font-weight-600">What We Do</h2>

            <div class="row">
              <ul class="col-lg-6 list-unstyled">
                <li class="g-my-15">
                  <span class="u-icon-v1 g-color-primary"><i class="icon-finance-138 u-line-icon-pro"></i></span>
                  <a class="g-brd-bottom g-brd-1 g-brd-gray-dark-v4 g-brd-black--hover g-color-gray-dark-v3 g-color-primary--hover g-text-underline--none--hover g-transition-0_3 pb-1" href="#">Marketing</a>
                </li>
                <li class="g-my-15">
                  <span class="u-icon-v1 g-color-primary"><i class="icon-finance-007 u-line-icon-pro"></i></span>
                  <a class="g-brd-bottom g-brd-1 g-brd-gray-dark-v4 g-brd-black--hover g-color-gray-dark-v3 g-color-primary--hover g-text-underline--none--hover g-transition-0_3 pb-1" href="#">Project planning</a>
                </li>
                <li>
                  <span class="u-icon-v1 g-color-primary"><i class="icon-education-087 u-line-icon-pro"></i></span>
                  <a class="g-brd-bottom g-brd-1 g-brd-gray-dark-v4 g-brd-black--hover g-color-gray-dark-v3 g-color-primary--hover g-text-underline--none--hover g-transition-0_3 pb-1" href="#">Branding work</a>
                </li>
              </ul>
              <ul class="col-lg-6 list-unstyled">
                <li class="g-my-15--lg">
                  <span class="u-icon-v1 g-color-primary"><i class="icon-finance-122 u-line-icon-pro"></i></span>
                  <a class="g-brd-bottom g-brd-1 g-brd-gray-dark-v4 g-brd-black--hover g-color-gray-dark-v3 g-color-primary--hover g-text-underline--none--hover g-transition-0_3 pb-1" href="#">Design</a>
                </li>
                <li class="g-my-15">
                  <span class="u-icon-v1 g-color-primary"><i class="icon-finance-189 u-line-icon-pro"></i></span>
                  <a class="g-brd-bottom g-brd-1 g-brd-gray-dark-v4 g-brd-black--hover g-color-gray-dark-v3 g-color-primary--hover g-text-underline--none--hover g-transition-0_3 pb-1" href="#">Support</a>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <div class="masonry-grid-item col-md-5 g-offset-md-1 g-mb-30">
          <div class="g-px-50--lg g-pt-50--lg">
            <p>Whether through commerce or just an experience to tell your brand's story, the time has come to start using development languages that fit your projects needs.</p>
          </div>
        </div>
      </div>
    </section>
    <!-- End About -->


    <!-- Footer -->
    <footer class="container g-pt-100 g-pb-20">
      <div class="row">
        <div class="col-sm-6 col-lg-3 g-mb-30">
          <a class="d-inline-block mb-4" href="#">
            <img class="g-width-100 g-height-auto" src="/assets/img/logo/travler2.png" alt="Image description">
          </a>

          <p class="g-color-gray-dark-v4 g-font-size-13">${bean.user } &copy; All Rights Reserved.</p>
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
                <a class="u-link-v5 g-color-gray-dark-v4 g-color-primary--hover" href="#">${bean.email }</a>
              </div>
            </li>
            <li class="media mb-4">
              <i class="d-flex mt-1 mr-3 icon-communication-033 u-line-icon-pro"></i>
              <div class="media-body">
                ${bean.phone }
              </div>
            </li>
          </ul>
          <!-- End Links -->
        </div>


    </footer>
    <!-- End Footer -->
</c:forEach>

  </main>

  <div class="u-outer-spaces-helper"></div>


  <!-- JS Global Compulsory -->
  <script src="/assets/vendor/jquery/jquery.min.js"></script>
  <script src="/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
  <script src="/assets/vendor/popper.js/popper.min.js"></script>
  <script src="/assets/vendor/bootstrap/bootstrap.min.js"></script>


  <!-- JS Implementing Plugins -->
  <script src="/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
  <script src="/assets/vendor/dzsparallaxer/dzsparallaxer.js"></script>
  <script src="/assets/vendor/dzsparallaxer/dzsscroller/scroller.js"></script>
  <script src="/assets/vendor/dzsparallaxer/advancedscroller/plugin.js"></script>
  <script src="/assets/vendor/masonry/dist/masonry.pkgd.min.js"></script>
  <script src="/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="/assets/vendor/fancybox/jquery.fancybox.min.js"></script>
  <script src="/assets/vendor/slick-carousel/slick/slick.js"></script>

  <!-- JS Revolution Slider -->
  <script src="/assets/vendor/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script>
  <script src="/assets/vendor/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script>

  <script src="/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script>
  <script src="/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
  <script src="/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
  <script src="/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
  <script src="/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script>
  <script src="/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
  <script src="/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
  <script src="/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
  <script src="/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>

  <!-- JS Unify -->
  <script src="/assets/js/hs.core.js"></script>
  <script src="/assets/js/components/hs.header.js"></script>
  <script src="/assets/js/helpers/hs.hamburgers.js"></script>
  <script src="/assets/js/components/hs.tabs.js"></script>
  <script src="/assets/js/components/hs.popup.js"></script>
  <script src="/assets/js/components/hs.carousel.js"></script>
  <script src="/assets/js/components/hs.go-to.js"></script>

  <!-- JS Customization -->
  <script src="/assets/js/custom.js"></script>

  <!-- JS Plugins Init. -->
  <script>
    // initialization of slider revolution
      var tpj = jQuery,
        revapi1150;

      tpj(document).ready(function () {
        revapi1150 = tpj("#welcome").show().revolution({
          sliderType: "standard",
          jsFileLocation: "revolution/js/",
          sliderLayout: "fullwidth",
          dottedOverlay: "none",
          delay: 9000,
          navigation: {
            onHoverStop: "off"
          },
          responsiveLevels: [1240, 1024, 778, 480],
          visibilityLevels: [1240, 1024, 778, 480],
          gridwidth: [1240, 1024, 778, 480],
          gridheight: [1000, 900, 960, 720],
          lazyType: "none",
          parallax: {
            type: "scroll",
            origo: "slidercenter",
            speed: 400,
            levels: [5, 10, 15, 20, 25, 30, 50, 60, -5, -10, -15, -20, -25, -30, -35, 55]
          },
          shadow: 0,
          spinner: "spinner3",
          stopLoop: "on",
          stopAfterLoops: 0,
          stopAtSlide: 1,
          shuffle: "off",
          autoHeight: "off",
          disableProgressBar: "on",
          hideThumbsOnMobile: "off",
          hideSliderAtLimit: 0,
          hideCaptionAtLimit: 0,
          hideAllCaptionAtLilmit: 0,
          debugMode: false,
          fallbacks: {
            simplifyAll: "off",
            nextSlideOnWindowFocus: "off",
            disableFocusListener: false
          }
        });
      });

      $(document).on('ready', function () {
        // initialization of carousel
        $.HSCore.components.HSCarousel.init('.js-carousel');

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

        // initialization of masonry
        $('.masonry-grid').imagesLoaded().then(function () {
          $('.masonry-grid').masonry({
            columnWidth: '.masonry-grid-sizer',
            itemSelector: '.masonry-grid-item',
            percentPosition: true
          });
        });
      });

      $(window).on('resize', function () {
        setTimeout(function () {
          $.HSCore.components.HSTabs.init('[role="tablist"]');
        }, 200);
      });
  </script>








</body>

</html>