<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/cls/css/w3.css" />
<link rel="stylesheet" href="/cls/css/join.css" />
<script type="text/javascript" src="/cls/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){		
		$('#lout').click(function(){
			$(location).attr('href' ,'/cls/member/logout.cls');
		});
		
		$('#lin').click(function(){
			$(location).attr('href' ,'/cls/member/login.cls');
		});
		
		$('#mlbtn').click(function(){
			$(location).attr('href', '/cls/member/memberList.cls');
		});
		
		$('#rebtn').click(function(){
			$(location).attr('href', '/cls/reboard/reboardList.cls');
		});
	});
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="w3-content mxw">
	<h2 class="w3-center w3-orange w3-card">Main Page</h2>
		<c:if test="${not empty SID}">
			<div class="w3-right w3-button w3-purple w3-hover-yellow w3-card w3-border" id="lout">Logout</div>
			<div class="w3-right w3-button w3-amber w3-hover-orange w3-card w3-border" id="mlbtn">MemberList</div>
			<div class="w3-right w3-button w3-orange w3-hover-red w3-card w3-border" id="rebtn">Reboard</div>
		</c:if>
		<c:if test="${empty SID}">
			<div class="w3-right w3-button w3-purple w3-hover-yellow w3-card w3-border" id="lin">Login</div>
		</c:if>
	</div>
</body>
</html>