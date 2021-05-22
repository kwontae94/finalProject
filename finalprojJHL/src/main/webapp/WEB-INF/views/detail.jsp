<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

 <script src="//code.jquery.com/jquery.min.js"></script>
 
<div class="container">
    <div>
        <label style="font-size:20px;">방명록 상세</label>
    </div>
 
    <div>
        <form action="/insertProc" method="post">
            <dl>
              <dt>제목</dt>
              <dd>${detail.subject}</dd>
              
              <dt>작성자</dt>
              <dd>${detail.writer}</dd>
              
              <dt>작성날짜</dt>
              <dd>
                  <fmt:formatDate value="${detail.reg_date}" pattern="yyyy.MM.dd HH:mm:ss"/>
              </dd>
              
              <dt>첨부파일</dt>
              <dd><a href="/fileDown/${files.bno}">${files.fileOriName}</a></dd>
              
              <dt>내용</dt>
              <dd>${detail.content}</dd>
            </dl>
        </form>
        <div role="group" style="float:right;">
          <button type="button" onclick="location.href='/delete/${detail.bno}'">삭제</button>
          <button type="button" onclick="location.href='/update/${detail.bno}'">수정</button>
          <button type="button" onclick="location.href='/list'"> 목록 </button>
        </div>
    </div>
    
    <!--  댓글  -->
    <div class="container">
        <label for="content">comment</label>
        <form name="commentInsertForm">
            <div>
               <input type="hidden" name="bno" value="${detail.bno}"/>
               <input type="text" id="content" name="content" placeholder="내용을 입력하세요.">
               <span>
                    <button type="button" name="commentInsertBtn">등록</button>
               </span>
              </div>
        </form>
    </div>
    
    <div class="container">
        <div class="commentList"></div>
    </div>
</div>
 
<%@ include file="commentS.jsp" %>
