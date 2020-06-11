<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html class="wbc">
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/pro/css/common.css">
<script type="text/javascript" src="/pro/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
	$(".drw").click(function () {
			$(".drw").css('animation','go 4s')
			setTimeout(function () {
				$(location).attr('href','/pro/board/board.pro');
			}, 4000);
			
		});
	});
</script>
<title>드루와</title>
<style>
</style>
</head>

<body>
	<img class="drw" src="/pro/img/main.png">
</body>
</html>