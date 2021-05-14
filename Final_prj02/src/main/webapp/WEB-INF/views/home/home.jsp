<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script>
  		if("${msg}"){
  			
  			console.log("${msg}");
  			alert("${msg}");
  		}
    
    </script>
    
   <main>
		<!-- Image element - set the background image for the header in the line below -->
		  <div class="py-5 bg-image-full" style="background-image: url('http://image1.lottetour.com/static/trvtour/201909/723/30fe1a9df8f3aac93c34e5d2b80f694a.jpg');">
		    <!-- Put anything you want here! There is just a spacer below for demo purposes! -->
		    <div style="height: 800px;">
		    	
		    </div>
		  </div>
		  
		<!-- Content section -->
		  <div class="py-5">
		    <div class="container">
		      <h1>나의 여행기록 남기기</h1>
		      <p class="lead">당신의 여행이야기를 알려주세요</p>
		      <p>travler는 2020년 4월 여행정보 공유를 위해 탄생했습니다.
		      <br>당신의 여행정보를 공유하고 나만의 추억을 기록으로 남기세요.
		      </p>
		      		      
		      <button class="btn btn-outline-info mr-2 mr-sm-0" type="button" onclick="location.href='/home/add'">write your story</button>
		      
		    </div>
		  </div>
	</main>