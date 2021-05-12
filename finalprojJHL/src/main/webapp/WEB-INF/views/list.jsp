<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
</head>
<body>
 
<div class="container">
    <div style="margin:15px auto;">
        <label style="font-size:20px;">방명록 목록</label>
    </div>
    
    <div>
        <table>
            <tr>
                <th>No</th>
                <th>Subject</th>
                <th>Writer</th>
                <th>Content</th>
                <th>Date</th>
            </tr>
              <c:forEach var="l" items="${list}">
                  <tr onclick="location.href='/detail/${l.bno}'">
                      <td>${l.bno}</td>
                      <td>${l.subject}</td>
                      <td>${l.writer}</td>
                      <td>${l.content}</td>
                      <td>
                        <fmt:formatDate value="${l.reg_date}" pattern="yyyy.MM.dd HH:mm:ss"/>
                    </td>
                  </tr>
              </c:forEach>
        </table>
    </div>
</div>
 <div class="container">
    <div>
        <label>방명록 작성</label>
    </div>
    
    <div>
        <form action="/insertProc" method="post" enctype="multipart/form-data">
          <div>
            <label for="subject">제목</label>
            <input type="text" id="subject" name="subject" placeholder="제목을 입력하세요.">
          </div>
          <div>
            <label for="writer">작성자</label>
            <input type="text" id="writer" name="writer" placeholder="내용을 입력하세요.">
          </div>
          <div>
            <label for="content">내용</label>
            <textarea id="content" name="content" rows="3"></textarea>
          </div>
          
          <button type="submit" style="float:right;">작성</button>
          
        </form>
    </div>
</div> 
 
</body>
</html>
 