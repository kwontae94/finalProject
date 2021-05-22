<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
  
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
        <a class="nav-link" href="/pictureList">여행이야기들</a>
      </li>
    </ul>
    	<button class="btn btn-outline-info mr-2 mr-sm-0" type="button" onclick="location.href='/guest/signup' ">Sign up</button>
    	
    	

        <sec:authorize access="isAuthenticated()">
        	<button class="btn btn-outline-info mr-2 mr-sm-0" type="button" id=logout_btn>Log out</button>
		</sec:authorize>
    	
                <li class="nav-item"><a class="dropdown-item" href="/member/myinfo">내정보</a></li>
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
			
					
		if("${newpageID}"=="ID 있음"){
				alert("이미 여행록이 존재 합니다");
				location.href="/home"
		}
    </script>

  
    <!-- Content section -->
<main class="container my-5" >
         
            
            <div class="shortcode-html">
              <div class="row">
                <div class="col-lg-6 g-mb-30">
                  <!-- Article -->
                  <article class="u-block-hover">
                    <figure class="u-bg-overlay g-bg-black-opacity-0_3--after">
                      <img class="img-fluid w-100 u-block-hover__main--zoom-v1" src="/assets/defaultImgs/layout1.png" alt="Image Description">
                    </figure>


                    <header class="g-pos-abs g-right-20 g-bottom-10 g-left-20">
                      <h3 class="h2 g-font-weight-600">
                        <a class="g-color-white" href="#">Layout1</a>
                      </h3>
                      <span class="g-color-white">
                        1번 Layout입니다
                      </span>
                    </header>
                  </article>
                  <!-- End Article -->
                </div>
                
               <div class="col-lg-6 g-mb-30">
                  <!-- Article -->
                  <article class="u-block-hover">
                    <figure class="u-bg-overlay g-bg-black-opacity-0_3--after">
                      <img class="img-fluid w-100 u-block-hover__main--zoom-v1" src="/assets/defaultImgs/layout2.png" alt="Image Description">
                    </figure>


                    <header class="g-pos-abs g-right-20 g-bottom-10 g-left-20">
                      <h3 class="h2 g-font-weight-600">
                        <a class="g-color-white" href="#">Layout2</a>
                      </h3>
                      <span class="g-color-white">
                        2번 Layout입니다
                      </span>
                    </header>
                  </article>
                  <!-- End Article -->
                </div>


              </div>
            </div>
          
          
<script type="text/javascript">

/* 	$(function(){
		$('.layout').on("change",function(){
			var selectLayout=$('.layout').val();
			$('.selectlayout').val(selectLayout);
			console.log($('.selectlayout').val());
		});	
		
	}); */

</script> 


                <div class="shortcode-html g-brd-around g-brd-gray-light-v4 g-pa-30 g-mb-30 ">
                  <!-- Textual Inputs -->
                  

                    
                  <form action="/create" method="post">
                  <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
					<div class="form-group row g-mb-25">
                      <label for="example-text-input" class="col-2 col-form-label">layout</label>
                      <div class="col-10">
						  <select class="custom-select w-100 mr-sm-3 mb-3 mb-lg-0 layout" id="inlineFormCustomSelect" name="layout">
							  <option selected="">layout을 선택하세요</option>
						      <option value="1">layout1</option>
						      <option value="2">layout2</option>
						      <option value="3">layout3</option>
						  </select>
                      </div>
                    </div>
                  
					<!-- <input class="selectlayout" type="hidden" name="layout"> -->
					
                    <div class="form-group row g-mb-25">
                      <label for="example-text-input" class="col-2 col-form-label">사이트 제목</label>
                      <div class="col-10">
                        <input class="form-control rounded-0 form-control-md" type="text" value="Artisanal kale" id="example-text-input" name="title">
                      </div>
                    </div>
                    
                    <div class="form-group row g-mb-25">
                      <label for="example-email-input" class="col-2 col-form-label">Email</label>
                      <div class="col-10">
                        <input class="form-control rounded-0 form-control-md" type="email" value="bootstrap@example.com" id="example-email-input" name="email">
                      </div>
                    </div>
                    
                    <div class="form-group row g-mb-25">
                      <label for="example-tel-input" class="col-2 col-form-label">Telephone</label>
                      <div class="col-10">
                        <input class="form-control rounded-0 form-control-md" type="tel" value="1-(555)-555-5555" id="example-tel-input" name="phone">
                      </div>
                    </div>

                    <div class="form-group row g-mb-25">
                      <label for="example-tel-input" class="col-2 col-form-label">사용자이름</label>
                      <div class="col-10">
                        <input class="form-control rounded-0 form-control-md" type="username" value="kwontem"  name="user">
                        <% String id=(String)session.getAttribute("userID");%>
                        <input class="form-control rounded-0 form-control-md" type="hidden" value="<%=id %>"  name="id">
                      </div>
                    </div>
                   
  
			  <div class="container mb-2">
				<button class="btn btn-info btn-block" type="submit">여행록 생성</button>
			  </div>
                    
              </form>
              <!-- End Textual Inputs -->
              </div>
	
  
</main>

    <!-- Footer -->
  <footer class="bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>



</body>
</html>