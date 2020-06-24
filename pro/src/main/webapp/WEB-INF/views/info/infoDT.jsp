<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link rel="stylesheet" href="/pro/css/w3.css" />
<link rel="stylesheet" href="/pro/css/info.css" />
<link rel="stylesheet" href="/pro/css/side.css" />
<script type="text/javascript" src="/pro/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/pro/js/info.js"></script>
<style>

</style>
<script type="text/javascript">

</script>
</head>
<jsp:include page="/head.pro" flush="true" />
<body>
<jsp:include page="/left.pro" flush="true" />
  
  <!-- 가운데 영역 (주내용 담길 곳) -->
  <div class="centercolumn w3-center">
    <div class="card">
      <h2>승차 검진소</h2>
      <!-- 자동차 캠핑 리스트 위치 -->
      <div id="List">
		<table class="cp" id="autoCP">
			  <tr>
			    <th style="width: 300px;">승차 검진소 List</th>
			  </tr>
			  <tr>
			  	<td>ㅇㅇ 승차 검진소</td>
			  </tr>
			  <tr>
			  	<td>ㄹㄹ 승차 검진소</td>
			  </tr>
			  <tr>
			  	<td>ㅂㅂ 승차 검진소</td>
			  </tr>
		</table>
      </div>
	  <div id="map"></div>
	  <div class='w3-row'><p></p></div>
	  <div class="detail_card">
	  	<div><h3>선택된 승차 검진소 이름</h3></div>
	  	<div><h4>주소 : ㅇㅇㅇㅇㅇㅇㅇ</h4></div>
	  </div>
	  
      <!-- 자동차 캠핑 리스트 위치 끝 -->
	  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dd8f721c7ccf9b1ba7c336d64d77a8aa&libraries=services"></script>
	  <script>
	  	var container = document.getElementById('map');
	  	var options = {
			center: new kakao.maps.LatLng(33.450701, 126.5706670),
			level: 3
	  	};
	  	
	  	var map = new kakao.maps.Map(container, options);
	  </script>
    </div>
  </div>
  
<jsp:include page="/right.pro" flush="true" />

<!-- footer -->
<div class="footer">
	
</div>

</body>
</html>