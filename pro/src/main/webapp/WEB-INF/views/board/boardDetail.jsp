
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>

<html>
<head>
<meta charset="utf-8" />
<title>자유게시판</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<link rel="stylesheet" href="/pro/css/head.css">
<link rel="stylesheet" href="/pro/css/w3.css" />
<link rel="stylesheet" href="/pro/css/board.css" />
<script type="text/javascript" src="/pro/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	/* 	window.addEventListener("keydown", function(event) {
	 if (event.defaultPrevented) {
	 return;
	 }
	 var handled = false;
	 if (event.keyCode == 116)
	 handled = true;

	 if (handled) {
	 console.log(event.keyCode);

	 event.preventDefault();
	 }
	 }, true); */
</script>
</head>
<jsp:include page="/head.pro" flush="true" />
<body >
<jsp:include page="/left.pro" flush="true" />
<jsp:include page="/right.pro" flush="true" />
	<div><p></p></div>
		<div class="hmt centercolumn" id="board">
			<table id="detailBoard" width="50%" border="3" bordercolor="black">

				<tr>
					<td class="title">작성일</td>
					<td>${DATA.sdate}</td>
					<td class="title">작성자</td>
					<td>${DATA.name}</td>
					<td class="title">조회수</td>
					<td>${DATA.vcnt+1}</td>
				</tr>
			</table>
			<table>
				<tr>
					<td class="title">제 목</td>
				</tr>
				<tr>
					<td>${DATA.bdtt}</td>
				</tr>
				<tr>
					<td class="title">내 용</td>
				</tr>
				<tr>
					<td>${DATA.bdbd}</td>
				</tr>
			</table>


			<tr align="center" valign="middle">
				<td colspan="5"><c:if test="${SID eq DATA.memid}">
						<input class="editdetail" type="button" value="수정">
						<input class="deletedetail" type="button" value="삭제">
					</c:if> <input class="comment" type="button" value=답글
					onclick="showPopup();"> <input type="button" value="목록"
					onclick="javascript:location.href='/board.pro'">
				</td>
			</tr>
			</table>


</body>


</html>