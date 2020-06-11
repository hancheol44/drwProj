<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link rel="stylesheet" href="/pro/css/w3.css" />
<link rel="stylesheet" href="/pro/css/qna.css" />
<link rel="stylesheet" href="/pro/css/head.css" />
<script type="text/javascript" src="/pro/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/pro/js/qna.js"></script>
<style>

</style>
<script type="text/javascript">

</script>
</head>
<jsp:include page="/head.pro" flush="true" />
<body>

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
      <h2>물어봥</h2>
		<table width="700" border="3" bordercolor="lightgray" align="center">
					<c:if test="${empty qno}">
						<tr>
							<td id="title">작성자</td>
							<td>${NAME}</td>
						</tr>
						<tr>
							<td id="title">제 목</td>
							<td>
								<textarea name="qtt" cols="72" rows="1" maxlength="100" id="qtt4" value="${DETAIL.qtt}"></textarea>
							</td>
						</tr>
						<tr>
							<td id="title">내 용</td>
							<td>
								<textarea name="qip" cols="72" rows="16" id="qip2"></textarea>
							</td>
						</tr>
					</c:if>
					<c:if test="${not empty qno}">
							<tr>
								<td id="title">작성자</td>
								<td>${DETAIL.name}</td>
							</tr>
							<tr>
								<td id="title">제 목</td>
								<td>
									<textarea name="qtt" cols="72" rows="12" maxlength="100" id="qtt4" value="${DETAIL.qtt}"></textarea>
								</td>
							</tr>
							<tr>
								<td id="title">내 용</td>
								<td>
									<textarea name="qip" cols="72" rows="16" id="qip4">${DETAIL.qip}</textarea>
								</td>
							</tr>
					</c:if>
						<tr align="center" valign="middle">
						<!-- 글 수정 작업시 아래 -->
						<c:if test="${not empty qno}">
							<td colspan="5">
								<input type="reset" value="작성취소" id="wcbtn"> 
								<input type="submit" value="글수정" id="modibtn"> 
								<input type="button" value="목록" id="golbtn">
							</td>
						</c:if>
						<!-- 글 작성 작업시 아래 -->
						<c:if test="${empty qno}">
						<td colspan="5">
								<input type="reset" value="작성취소" id="wcbtn"> 
								<input type="submit" value="등록" id="sbbtn"> 
								<input type="button" value="목록" id="golbtn">
							</td>
						</c:if>
						</tr>
					</table>
			
			
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