<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
function deleteGuestBook(){
}
</script>

<table>
	<c:if test="${empty guestBooks}">
		<tr>
			<td>��ϵ� ������ �����ϴ�.</td>
		</tr>
	</c:if>
	
	<c:if test="${not empty guestBooks}">
		<c:forEach var="row" items="${guestBooks}">
			<tr>
				<th>id :</th>
				<td>${row.id}</td>
				
				<th>name :</th>
				<td>${row.name}</td>
				
				<th>content :</th>
				<td>${row.content}</td>
				
				<th>regdate :</th>
				<td>${row.regdate}</td>
				
				
				<th>
					<a href="" role="button" class="">����</a>
					<a href="" role="button" class="">����</a>
				</th>
				
			</tr>
		</c:forEach>
	</c:if>
</table>