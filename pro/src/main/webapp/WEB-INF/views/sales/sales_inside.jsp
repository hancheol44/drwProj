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
 <form method="post" action="/pro/sales/sales.pro" id="frm">
					<input type="hidden" name="ptt"  value="${DATA.ptt}">
					<input type="hidden" name="pbd"  value="${DATA.pbd}">
					<input type="hidden" name="cate"  value="${DATA.cate}">
					<input type="hidden" name="rno"  value="${DATA.rno}">
					<input type="hidden" name="rtt"  value="${DATA.rtt}">
					<input type="hidden" name="rbd"  value="${DATA.rbd}">
					<input type="hidden" name="memno"  value="${DATA.memno}">
					<input type="hidden" name="rst"  value="${DATA.rst}">
					<input type="hidden" name="today"  value="${DATA.today}">
				</form>
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
				<div id="wrap">
					<br>
					<div id="topForm" style="text-align: left; padding-left: 10px;"><b>매장 정보</b></div>
					<hr style="margin: 15px;">
					<br>
					<div id="board" style="width: 1000px;">
					<c:if test="${not empty CAR}">
						<div style="text-align: left;">
							<h5 style="font-color: gray; padding-left: 15px;" name="car">매장진입 추천차량</h5>
							<h4 style="padding-left: 20px;;"><b>${CAR}</b></h4>
						</div>
					</c:if>
							<h2 style="margin:7px; display:inline" name="ptt"><b>${DATA.ptt}</b></h2>
							<h4 style="margin:7px; margin-left: 15px;" name="bceo">${DATA.bceo}</h4>
							<h4 style="font-color: gray; padding-left: 15px;" name="bloc">${DATA.bloc}</h4>
					</div>
					<br>
					 <br>
					 <div id="map"></div>
					 <span style="margin: 20px;">
					 <img alt="" src="/pro/images/${IMG}" style="height:450px; width:450px;">
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
				<input type="button" id="delete" value="삭제">
				<input type="button" id="modi" value="수정">				
			</c:if>
				<input type="button" id="list" value="목록">
				<input type="button" id="review" value="리뷰쓰기">
			</div>
			<br>					
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

<!-- footer -->
<div class="footer">
	
</div>

</body>
</html>