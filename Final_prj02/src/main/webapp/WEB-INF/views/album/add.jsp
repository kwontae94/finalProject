<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- CSS Unify -->
<link rel="stylesheet" href="/assets/css/unify-core.css">
<link rel="stylesheet" href="/assets/css/unify-components.css">
<link rel="stylesheet" href="/assets/css/unify-globals.css">

<!-- CSS Customization -->
<link rel="stylesheet" href="/assets/css/custom.css">

<style>
.left-box {
   float: left;
}

.right-box {
   float: left;
}

#layout {
   margin-left: 500px;
}
</style>

</head>

<body class="g-overflow-x-hidden">
   <main>

      <!-- Header -->
      <header id="js-header" class="u-header u-header--static g-mb-100">
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
                        <li class="nav-item  g-mx-10--lg g-mx-15--xl"><a href="/page" class="nav-link g-py-7 g-px-0">HOME</a></li>
                        <!-- End Intro -->

                        <!--menu bar  -->
                        <li class="nav-item  g-mx-10--lg g-mx-15--xl"><a href="/album?id=<%=(String)session.getAttribute("userID") %>" class="nav-link g-py-7 g-px-0">사진첩</a></li>

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
      <!--
    <div class="uploadDiv">
      <form action="uploadAjax"  enctype="multipart/form-data">
         <input type="file" name="uploadFile" multiple="multiple">
         <button type="submit" > Submit</button> 
      </form>
   </div>   
        -->



      <div id="layout">
         <div class="left-box">
            <img src="/assets/upload/phoneImage.png" alt="x" class="image">
         </div>

         <div class="right-box">
            <div>
               <hr>
                  <h4 style="text-align: center;">사진업로드</h4> 
               <hr>
            </div>
            <!-- 섬네일은 아래 주소 참고 -->
            <!-- https://medium.com/@asadise/create-thumbnail-for-an-image-in-spring-framework-49776c873ea1 -->

      

            <form action="/album/uploadProc?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
                  <div class="uploadDiv">
               <input type="file" class="btn btn-md u-btn-outline-black g-mr-10 g-mb-15" name="uploadFile" multiple>
            </div>
            <a id="uploadbtn" class="btn btn-md u-btn-outline-black g-mr-10 g-mb-15" href="#">첨부하기</a>
            
               <table class="table">
                  <tr>
                     <td>
                        <div class="img_wrap">
                           <img id="img" />
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <td><textarea type="text" name="caption" style="text-align:center; width:400px; height:80px;" placeholder="이미지 소개"></textarea></td>
                  </tr>
                  <tr>
                     <td><input type="text" name="location" style="text-align:center; width:400px;" placeholder="위치"></td>
                  </tr>
               
               <tr>
               <td><a href="javascript:window.history.back()" class="btn btn-md u-btn-outline-black g-mr-10 g-mb-15">뒤로가기</a></td>
               <td><input type="submit" class="btn btn-md u-btn-outline-black g-mr-10 g-mb-15" value="업로드"></td>
               </tr>
               </table>
            </form>

         </div>

      </div>
      
      

      <a class="js-go-to u-go-to-v1" href="#" data-type="fixed" data-position='{
     "bottom": 15,
     "right": 15
   }' data-offset-top="400"
         data-compensation="#js-header" data-show-effect="zoomIn"> <i class="hs-icon hs-icon-arrow-top"></i>
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
  
  $(function () {
       var token = $("meta[name='_csrf']").attr('content');
       var header = $("meta[name='_csrf_header']").attr('content');
       if(token && header) {
           $(document).ajaxSend(function(event, xhr, options) {
               xhr.setRequestHeader(header, token);
           });
       }
   });
  
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

      $(document).ready(function() {
         
         $('#uploadbtn').on("click", function(e){
          var formData = new FormData();
          var inputFile = $("input[name='uploadFile']");
          var files = inputFile[0].files;
          var csrfHeaderName = "${_csrf.headerName}";
         var csrfTokenValue = "${_csrf.token}";
          console.log(files);
          
          for(var i = 0; i < files.length; i++){
             formData.append("uploadFile",files[i]);
          }
          $.ajax({
             url: '/album/uploadAjax',
             processData: false,
             contentType: false,
             data: formData,
             type: 'POST',
             beforeSend:function(xhr){
               console.log(csrfHeaderName,csrfTokenValue);
               /* xhr.setRequestHeader('JSESSIONID',csrfTokenValue);
*/                     xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
            }, 
             success: function(result){
                alert('Uploaded');
             }, error:function(request,status,error){
                  alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
                 }

             
          }); //$.ajax
          
         });
   });
 
   

      
      
  </script>

</body>

</html>