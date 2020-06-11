<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link rel="stylesheet" href="/pro/css/w3.css" />
<link rel="stylesheet" href="/pro/css/sales.css" />
<link rel="stylesheet" href="/pro/css/head.css" />
<script type="text/javascript" src="/pro/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/pro/js/sales.js"></script>
<style>

</style>
<script type="text/javascript">

</script>
</head>
<jsp:include page="/head.pro" flush="true" />
<body>

	<form method="get" action="" id="frm">
		<input type="hidden" name="pno" id="pno">
	</form>
	
<div class="row">
  <!-- 왼쪽 영역 태그 -->
  <div class="leftcolumn">
    <div class="card">
      <h2>About Me</h2>
      <div class="fakeimg" style="height:100px;">Image</div>
      <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
    </div>
    <div class="card">
      <h3>Popular Post</h3>
      <div class="fakeimg"><p>Image</p></div>
      <div class="fakeimg"><p>Image</p></div>
      <div class="fakeimg"><p>Image</p></div>
    </div>
  </div>
  
  <!-- 가운데 영역 (주내용 담길 곳) -->
  <div class="centercolumn w3-center">
    <div class="card">
      <h2>팝니당</h2>
      <div>
		<button id="write">글쓰기</button>
	  </div>
			<table id="saList">
			  <tr>
			    <th id="rno">NO</th>
			    <th id="ptt">제목</th>
			    <th id="bceo">작성자</th>
			    <th id="today">작성일</th>
			    <th id="bcnt">조회수</th>
			  </tr>
			  <c:forEach var="data" items="${LIST}">
			  <tr class="salesList" id="${data.pno}">
			  	<td>${data.rno}</td>
			  	<td>${data.ptt}</td>
			  	<td>${data.bceo}</td>
			  	<td>${data.today}</td>
			  	<td>${data.bcnt}</td>
			  </tr>
			  </c:forEach>
			</table>
			
			
			<!-- 페이징 처리 부분 -->
			<div class="w3-center">
				<div class="w3-bar w3-border">
					<c:if test="${PAGE.startPage lt (PAGE.pageGroup + 1) }">
						<span class="w3-bar-item w3-light-gray">PRE</span>
					</c:if>
					<c:if test="${PAGE.startPage ge (PAGE.pageGroup + 1) }">
						<span class="w3-bar-item pgbt w3-button w3-hover-blue pbtn"
							id="${PAGE.preNo}">PRE</span>
					</c:if>
					<c:forEach var="pageNo" begin="${PAGE.startPage}"
						end="${PAGE.endPage}">
						<span
							class="w3-bar-item pgbt w3-border-left w3-button w3-hover-blue pbtn">${pageNo}</span>
					</c:forEach>
					<c:if test="${PAGE.endPage ne PAGE.totalPage}">
						<span
							class="w3-bar-item pgbt w3-border-left w3-button w3-hover-blue pbtn"
							id="${PAGE.nextNo}">NEXT</span>
					</c:if>
					<c:if test="${PAGE.endPage eq PAGE.totalPage}">
						<span class="w3-bar-item  w3-border-left w3-light-gray ">NEXT</span>
					</c:if>
				</div>
				<!-- 페이징 처리 부분 끝 -->
				
				<c:if test="${sessionScope.sessionID!=null}">
				</c:if>

				<div style="width: 100%;" class="w3-center" id="searchForm">
					<form method="post" action="" id="search">
						<select name="condition" style="margin: 10px; height: 28px;">
							<option value="bdtt">제목</option>
							<option value="bdbd">내용</option>
							<option value="name">글쓴이</option>
						</select> 
						<input type="text" size="20" name="input" style="margin: 10px;" />
						<input id="serbtn" type="submit" value="search" style="margin: 10px;" />
						<input style="float: right; margin: 10px 65px 10px -100px;" type="button" value="글쓰기" onclick="writeForm()">
					</form>
				</div>
			</div>
			
    </div>
  </div>
  
  <!-- 오른쪽 공간 태그 -->
  <div class="rightcolumn">
    <div class="card">
      <h2>About Me</h2>
      <div class="fakeimg" style="height:100px;">Image</div>
      <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
    </div>
    <div class="card">
      <h3>Popular Post</h3>
      <div class="fakeimg"><p>Image</p></div>
      <div class="fakeimg"><p>Image</p></div>
      <div class="fakeimg"><p>Image</p></div>
    </div>
  </div>
</div>

<!-- footer -->
<div class="footer">
	
</div>

</body>
</html>