<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
   Editorial by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<meta charset="utf-8" />
<title>메인페이지</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/pro/css/side.css">
<link rel="stylesheet" href="/pro/css/w3.css" />
<link rel="stylesheet" href="/pro/css/board.css" />
<script type="text/javascript" src="/pro/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/pro/js/board.js"></script>
</head>
<jsp:include page="/head.pro" flush="true" />
<body>
<jsp:include page="/left.pro" flush="true" />

	<div class="centercolumn">
		<br> <b><font size="6" color="gray">글쓰기</font></b> <br>
		<form id="wfrm" method="post" action="/pro/board/boardWriteProc.pro">
			
			<table width="80%" border="3" bordercolor="lightgray" align="center">
				<tr>
					<td>작성자 :</td>
					<td id = "memid" name = "memid">${SID}</td>
				</tr>
				<tr>
					<td>제 목
					<td><select id="bdct" style="width: 15%; height: 30px;" name="bdct">
							<option value="공지">공지</option>
							<option value="팁">팁</option>
							<option value="이벤트">이벤트</option></select>
							<input style="width: 80%; height: 30px;" name="bdtt" type="text" size="30" id="bdtt">
					</td>
				</tr>
				<tr>
					<td>내 용</td>
					<td><textarea style="width: 95%; resize: none;" id="bdbd" name="bdbd" cols="72" rows="20"></textarea>
					</td>
				</tr>

				<tr align="center" valign="middle">
					<td colspan="5"><input type="reset" id="hbtn" value="작성취소">
						<button id="wbtn">등록</button> <input
						type="button" id="bdh" value="목록"></td>
				</tr>
			</table>
		</form>
	</div>
<jsp:include page="/right.pro" flush="true" />


</body>
</html>