<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<div class="container">
    <div>
        <label style="font-size:20px;">방명록 수정</label>
    </div>
 
    <div>
        <form action="/updateProc" method="post">
          <div>
            <label for="subject">제목</label>
            <input type="text" id="subject" name="subject" value="${detail.subject}">
          </div>
          <div>
            <label for="content">내용</label>
            <textarea id="content" name="content" rows="3">${detail.content}</textarea>
          </div>
          <input type="hidden" name="bno" value="${detail.bno}"/>
          <button type="submit" style="float:right;">수정</button>
        </form>
    </div>
</div>
 
</body>
</html>