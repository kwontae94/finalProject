<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	
	window.addEventListener('DOMContentLoaded',function(){

	$.ajax({
		type:"post",
		url:"/ajaxGuestBooks",
		success : function(data){
			$('div#tBody').html(data);
		},
		error : function(request,status,error){
		}
	});
})
	function onSubmit(){
		if(addGuestBookFrm.name.value == ''){
			alert("�ۼ��� �ۼ�");
			addGuestBookFrm.name.focus();
			return false;
		}
		
		if(addGuestBookFrm.content.value == ''){
			alert("���� �ۼ�");
			addGuestBookFrm.content.focues();
			return false;
		}
	}
</script>

</head>
<body>
		<div id="tBody" style="margin-bottom:50px;">
	      <h2>����</h2>
	      </div>
			<form onsubmit="return onSubmit();" name="addGuestBookFrm" action="/addGuestBook" method="post">
		        <table>
		            <tr>
		                <th>�̸� : </th>
		                <td><input type="text" name="name" id="name" placeholder="������ �Է��ϼ���"></td>
		            </tr>
		            <tr>
		                <th>���� : </th>
		                <td><textarea rows="" cols="" name="content" id="content" placeholder="������ �Է��ϼ���"></textarea></td>
		            </tr>
		        </table>
		  
		    <div>
		    	<input type="submit" value="Ȯ��">
		    </div>
	 </form>
		
</body>
</html>