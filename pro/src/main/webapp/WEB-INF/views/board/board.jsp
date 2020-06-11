<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<link rel="stylesheet" href="/pro/css/head.css">
<link rel="stylesheet" href="/pro/css/w3.css" />
<link rel="stylesheet" href="/pro/css/board.css" />
<script type="text/javascript" src="/cls/js/jquery-3.5.0.min.js"></script>
<style type="text/css">

</style>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		$('.pgbt').click(function() {
			var str = $(this).html();
			alert(str);
			if (str == 'PRE') {
				$('#nowPage').val('${PAGE.startPage - 1}');
			} else if (str == 'NEXT') {
				$('#nowPage').val('${PAGE.endPage +1}');
			} else {
				return;
			}
			$('#frm').attr('action', '/Project/board/board.cls');
			$('#frm').submit();
		});
	});
</script>

<jsp:include page="/head.pro" flush="true" />
<body >

	<form method="post" action="" id="frm">
		<input type="hidden" name="nowPage" id="nowPage"
			value="${param.nowPage}"> <input type="hidden" name="bno"
			id="bno"> <input type="hidden" name="startPage"
			id="startPage" value="${PAGE.startPage}"> <input
			type="hidden" name="endPage" id="endPage" value="${PAGE.endPage}">
	</form>
	<form method="post" action="" id="frm">
		<input type="hidden" name="bno" id="bno"> <input type="hidden"
			name="nowPage" id="nowPage" value="${PAGE.nowPage}">
	</form>
	<form method="post" action="" id="tfrm">
		<input type="hidden" name="tab" id="tab">
	</form>

	<div class="hmt" style="align-content: center;">
		<div>
			<br>
			<div id="topForm">
				<div style="font-size: x-large;" class="w3-center w3-text-red">자유게시판</div>
				<br>
				<c:if test="${sessionScope.sessionID!=null}">
				</c:if>

			</div>
			<div id="frbd">
				<button>전체</button>
				<button>공지</button>
				<button>팁</button>
				<button>이벤트</button>
			</div>
			<div>
				<table>
					<thred>

					<tr heigh="30">
						<td>글번호</td>
						<td>종류</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					</thred>
					<c:forEach var="data" items="${LIST}">
					<tr class="w3-text-gray content" id="${data.bdno}">
						<td>${data.bdno}</td>
						<td>${data.bdct}</td>
						<td>${data.bdtt}</td>
						<td>${data.name}</td>
						<td>${data.sdate}</td>
						<td>${data.vcnt}</td>
					</tr>
					</c:forEach>
				</table>
				<br>
			</div>
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

				<div style="width: 80%;" class="w3-center" id="searchForm">

					<form method="post" action="" id="search">
						<select name="condition" style="margin: 10px;">
							<option value="bdtt">제목</option>
							<option value="bdbd">내용</option>
							<option value="name">글쓴이</option>
						</select> <input type="text" size="20" name="input" style="margin: 10px;" /><input
							id="serbtn" type="submit" value="search" style="margin: 10px;" />
					</form>
					<c:if test="${sessionScope.sessionID!=null}">
					</c:if>
					<input type="button" value="글쓰기" onclick="writeForm()">
				</div>
			</div>
		</div>
	</div>

</body>
</html>