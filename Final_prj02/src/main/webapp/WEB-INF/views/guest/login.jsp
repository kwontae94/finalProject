<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
   <main>
	<div class="wrapper gray-wrapper"  style="height: 900px;">
      <div class="container inner">
        <div class="row">
          <div class="col-lg-10 offset-lg-1 col-xl-8 offset-xl-2">
            <h2 class="section-title mb-40 text-center">Login Form</h2>
            <form class="form-inline" action="/j_spring_security_check" method="post">
             <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
              <label class="sr-only" for="inlineFormInputName2">Account</label>
              <input type="text" class="form-control mb-20 mr-sm-2" id="inlineFormInputName2" name="userId" value="${loginId}" placeholder="Account">
              <label class="sr-only" for="inlineFormInputGroupUsername2">Password</label>
              <div class="input-group mb-20 mr-sm-2">
                <input type="password" class="form-control" id="inlineFormInputGroupUsername2" name="userPwd" placeholder="Password">
              </div>
              <div class="custom-control custom-checkbox mb-20 mr-sm-2">
                <input type="checkbox" class="custom-control-input" id="customCheck2">
                <label class="custom-control-label" for="customCheck2">Remember Me</label>
              </div>
              <br />
              <button type="submit" class="btn mb-20 ml-10 ml-md-0">Sign In</button>
            </form>
              <div class="input-group mb-20 mr-sm-2">
              	<c:if test="${param.error != null}">
              		<small>${error_msg}</small>
              	</c:if>
              </div>
            <!-- /form -->
          </div>
          <!-- /column -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container -->
    </div>
   </main>