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
<link rel="stylesheet" href="/pro/css/side.css" />
<script type="text/javascript" src="/pro/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/pro/js/sales.js"></script>
<style>

</style>
<script type="text/javascript">

</script>
</head>
<jsp:include page="/head.pro" flush="true" />
<body>
<jsp:include page="/left.pro" flush="true" />

<div class="centercolumn" >
  
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
		<div id="topForm"><h3><b>매장 정보</b></h3></div>
		<hr>
		<br>
		<div id="board">
		<c:if test="${not empty CAR}">
			<div id="car">
				<h5 id="car_h5" name="car">매장진입 추천차량</h5>
				<h4 id="car_h4"><b>${CAR}</b></h4>
			</div>
		</c:if>
				<h2 id="pro_ptt" name="ptt"><b>${DATA.ptt}</b></h2>
				<h4 id="pro_bceo" name="bceo">${DATA.bceo}</h4>
				<h4 id="pro_bloc" name="bloc">${DATA.bloc}</h4>
		</div>
		<br>
		 <br>
		 <div id="map"></div>
		 <span style="margin: 20px;">
		 <img id="img" alt="" src="/Project/images/${IMG}">
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
	<hr class="border_orange">
		 <div name="pbd" id="pbd">
		 	<h5 id="pbd_h5"><b>매장 홍보글</b></h5>
		 	<br>
		 	<h3>${DATA.pbd}</h3>
			 </div>
	<div id="btn_detail">
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