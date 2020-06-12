<!DOCTYPE html>
<html>
<title>CSS Template</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/pro/css/side.css">
<link rel="stylesheet" href="/pro/css/w3.css" />
<link rel="stylesheet" href="/pro/css/qna.css" />
<script type="text/javascript" src="/pro/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".logo").hover(function(){
			$('#header').css('border-bottom','7px solid yellow');
		}, function() {
			$('#header').css('border-bottom','5px dashed yellow');
		});
		
		$('#hbtn').click(function(){
			location.href='/pro/main.pro';
		});
	});
</script>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>

	<header id="header">
				<div class="inner">
				<input class="logo" id="hbtn" type="image" src="/pro/img/main.png">
					<!-- 
					<nav id="nav">
						<a href="">팝니당</a>
						<a href="">놀러왕</a>
						<a href="">물어봥</a>
						<a href="">오세용</a>
						<a href="">로그인</a>
					</nav>
					 -->    
					 <ul>
					  <li><a href="#home">드루왕</a></li>
					  <li><a href="/pro/sales/sales.pro">팝니당</a></li>
					  <li class="dropdown">
					    <a href="javascript:void(0)" class="dropbtn">오세용</a>
					    <div class="dropdown-content">
					      <a href="#"><h6>자동차 극장</h6></a>
					      <a style="margin-left: -40px;" href="#"><h6>자동차 캠핑</h6></a>
					      <a style="margin-left: -40px;" href="#"><h6>승차 검진소</h6></a>
					    </div>
					  </li>
					  <li><a href="/pro/qna/qnaList.pro">물어봥</a></li>
					  <li><a href="/pro/board/board.pro">놀러왕</a></li>
					  <c:if test="${empty SID && empty userId}">
						  <li><a href="/pro/login/loginList.pro">로그인</a></li>
					  </c:if>
					  <c:if test="${not empty SID && empty userId}">
						  <li><a href="/pro/login/logout.pro">로그아웃</a></li>
					  </c:if>
					  <c:if test="${empty SID && not empty userId}">
					  	  <li><a href="/pro/kakao/logout.pro">로그아웃</a>
					  </c:if>
					  
					</ul>
				</div>
			</header>
</body>
</html>
