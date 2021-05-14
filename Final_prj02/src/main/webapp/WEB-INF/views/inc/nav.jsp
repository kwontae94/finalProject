<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  	<a id="title1" class="navbar-brand" href="/home">Travler</a>
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    	<span class="navbar-toggler-icon"></span>
  	</button>
  	
  	
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item">
	        <a class="nav-link" href="/page">나의 여행일기</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">여행이야기들</a>
	      </li>
	    </ul>
        
    	<button class="btn btn-outline-info mr-2 mr-sm-0" type="button" onclick="location.href='/guest/signup' ">Sign up</button>
    	
    	
    	<sec:authorize access="isAnonymous()">
    		<button class="btn btn-outline-info mr-2 mr-sm-0" type="button" onclick="location.href='/guest/login' ">Log In</button>
        </sec:authorize>
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
    </script>