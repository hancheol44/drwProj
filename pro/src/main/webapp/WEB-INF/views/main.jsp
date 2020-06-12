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
      <h2>메인드루왕</h2>
			<table id="customers">
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