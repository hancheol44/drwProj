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

<div class="row centercolumn w3-center" >
<jsp:include page="/left.pro" flush="true" />
  
  <!-- 가운데 영역 (주내용 담길 곳) -->
   	<form method="post" action="" id="frm1">
		<input type="hidden" name="pno" id="pno" value="${PNO}">
		<input type="hidden" name="ptt"  value="${DATA.ptt}">
		<input type="hidden" name="pbd"  value="${DATA.pbd}">
   	 </form>
	 <form method="post" action="" id="frm2">
		<input type="hidden" name="pno" id="pno" value="${PNO}">
		<input type="hidden" name="ptt"  value="${DATA.ptt}">
		<input type="hidden" name="pbd"  value="${DATA.pbd}">
		<input type="hidden" name="cate"  value="${DATA.cate}">
	 </form>
	 
	<div id="detail">
		<br>
		<div id="topForm"><b>매장 정보</b></div>
		<hr>
		<br>
		<div id="board">
		<c:if test="${not empty CAR}">
			<div id="car"style="text-align: left;">
				<h5 style="font-color: gray; padding-left: 15px;" name="car">매장진입 추천차량</h5>
				<h4 style="padding-left: 20px;"><b>${CAR}</b></h4>
			</div>
		</c:if>
				<h2 style="margin:7px; display:inline" name="ptt"><b>${DATA.ptt}</b></h2>
				<h4 style="margin:7px; margin-left: 15px;" name="bceo">${DATA.bceo}</h4>
				<h4 style="font-color: gray; padding-left: 15px;" name="bloc">${DATA.bloc}</h4>
		</div>
		<br>
		 <br>
		 <div id="map" style="width:450px;height:450px; display: inline-block; margin-left: 50px;"></div>
		 <span style="margin: 20px;">
		 <img alt="" src="/Project/images/${IMG}" style="height:450px; width:450px;">
		</span>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bfbcb2a9b1a94611a8804b0d71d6315c&libraries=services"></script>
		<script>
		var mapContainer = document.getElementById('map');
		var mapOption = {
		    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		    level: 3 // 지도의 확대 레벨
		}// 지도를 표시할 div 
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		 
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('${DATA.bloc}' , function(result, status) {
		
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		        
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
		
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">${DATA.bname}</div>'
		        });
		        infowindow.open(map, marker);
		
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        
		        map.setCenter(coords);
		     }
		});  
		</script>
			<br>
	
	</div>
	<hr style="border:1px solid orange">
		 <div name="pbd" id="pbd">
		 	<h3 style="text-align: center; margin: 40px;">${DATA.pbd}</h3>
			 </div>
	<div style="position:relative; left: 40%;">
	<c:if test="${SID eq ID}">
	<button id="delete" class="delete">삭제</button>
	<button id="modi" class="modi">수정</button>				
	</c:if>
		<button id="list" class="list">목록</button>
		<button id="review" class="review">리뷰쓰기</button>
	</div>
	<br>					
		</div>
			
<jsp:include page="/right.pro" flush="true" />

<!-- footer -->
<div class="footer">
	
</div>

</body>
</html>