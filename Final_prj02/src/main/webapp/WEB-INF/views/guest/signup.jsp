<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
  <main>
	<div class="wrapper light-wrapper">
      <div class="container inner">
        <div class="row">
          <div class="col-lg-10 offset-lg-1 col-xl-8 offset-xl-2">
            <h2 class="section-title mb-40 text-center">Member Registration Form</h2>
            <form action="/join" method="post">
             <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
              <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Account</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="Account" name="account" value="${new_account}" placeholder="Account" required>
                </div>
                <div class="col-sm-3">
                  <button type="button" class="btn" id="Duplicate_Check">중복검사</button>
                </div>
              </div>
              <div class="form-group row">
                <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="inputPassword3" name="password" value="${new_password}" placeholder="Password">
                </div>
              </div>
              <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="inputEmail3" name="name" value="${new_name}" placeholder="Name">
                </div>
              </div>
              <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-7">
                  <input type="email" class="form-control" id="useremail" name="email" value="${new_email}" placeholder="Email" required>
                </div>
                 <div class="col-sm-3">
                  <button type="button" class="btn" id="CF_number_btn">인증번호 요청</button>
                </div>
              </div>
              <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">인증번호</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="CF_number" placeholder="인증번호 4자리 입력">
                  <input type="hidden" class="form-control" id="temp_CF_number" >
                </div>
                 <div class="col-sm-3">
                  <button type="button" class="btn" id="certify">확인</button>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-2"><strong class="color-dark">Conditions</strong></div>
                <div class="col-sm-10">
                  <div class="custom-control custom-radio">
                    <input type="radio" class="custom-control-input" id="customCheck3" name="check" value="동의" >
                    <label class="custom-control-label" for="customCheck3">I accept</label>
                    <c:if test="${error == true }">
                    	<small class="color-red"> * 동의 후 회원가입이 가능합니다! *</small>
                    </c:if>
                  </div>
                  <div class="custom-control custom-radio">
                    <input type="radio" class="custom-control-input" id="customCheck4" name="check" value="미동의" checked>
                    <label class="custom-control-label" for="customCheck4">I do not accept</label>
                  </div>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-10">
                  <button type="submit" class="btn btn-s" name="btn" value="가입">Sign in</button>
                  <button type="submit" class="btn btn-s" name="btn" value="취소">Cancel</button>
                </div>
              </div>
            </form>
          </div>
          <!-- /column -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container -->
	</div>
	<script>
		$(document).ready(function(){
			$("#Duplicate_Check").click(function(){
				var csrfHeaderName = "${_csrf.headerName}";
				var csrfTokenValue = "${_csrf.token}";
				var account = $("#Account").val();
				
				if(account == ""){
					alert("아이디를 입력해주세요");
				}else{
					$.ajax({
						type:'post',
						url:'/idcheck',
 						beforeSend:function(xhr){
							console.log(csrfHeaderName,csrfTokenValue);
							/* xhr.setRequestHeader('JSESSIONID',csrfTokenValue);
 */							xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
						}, 
						data:{userId:account},
						success:function(msg){
							$("#Account").attr("readonly","readonly");
							alert(msg);
						},	
						error:function(a,b,c){
							console.log("a",a);
							console.log("b",b);
							console.log("c",c);
							alert("중복된 아이디 입니다.");
						}
					});	
				}
			});
			
			$("#CF_number_btn").click(function(){
				var csrfHeaderName = "${_csrf.headerName}";
				var csrfTokenValue = "${_csrf.token}";
				var email = $("#useremail").val();
				if(email == ""){
					alert("이메일을 입력해 주세요");
				}else{
					$.ajax({
						type:'post',
						url:'/sendmail',
  						beforeSend:function(xhr){
							xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
						}, 
						data:{address:email},
						success:function(key){
							$("#temp_CF_number").val(key);
						}
					});
					alert("전송되었습니다.");
				}
			});
			$("#certify").click(function(){
				var hidden_key = $("#temp_CF_number").val();
				var input_key = $("#CF_number").val();
				
				if(hidden_key == input_key){
					$("#CF_number").attr("readonly","readonly");
					alert("인증되었습니다");
				}else{
					alert("인증번호를 확인해주세요!");
				}
			});
		});
	</script>
</main>