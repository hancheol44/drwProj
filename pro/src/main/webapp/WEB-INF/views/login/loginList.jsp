<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link rel="stylesheet" href="/pro/css/w3.css" />
<link rel="stylesheet" href="/pro/css/login.css" />
<script type="text/javascript" src="/pro/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/pro/js/login.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<style>
</style>
<script type="text/javascript">
	 $(document).ready(function(){
		$('#lbtn').click(function(){
		
		var sid = $('#id').val();
		var spw = $('#pw').val();
		
		if(!sid){
			$('#id').prop('disabled', 'true');
		}
		if(!spw){
			$('#pw').prop('disabled', 'true');
		}
		$('#frm').attr('method', 'POST');
		$('#frm').attr('action', '/pro/login/loginProc.pro');
		$('#frm').submit();
		});
		<%
		String sid = (String)session.getAttribute("SID");
	%>
	// 로그인 여부에 따른 처리
	var sid = '<%= sid %>';
	/* alert(typeof sid); */
	if(sid != 'null' && sid.length != 0 ){
		$('#loginWin').css('display', 'none');
		$('#msg').html(sid);
		$('#msgWin').css('display', '');
	}
	
	$('#hbtn').click(function(){
		$(location).attr('href', '/pro/main.pro');
	});
});
	
</script>
</head>
<jsp:include page="/head.pro" flush="true" />
<body>
   <p class="tip" id="hbtn">집으로 !!</p>
		<div class="cont">
   <form id="frm" name="frm">
  		<div class="form sign-in">
    		<h2>어서 오세용 드루왕</h2>
    		<label>
	      		<span for="id">이메일</span>
	      		<input type="email" id="id" name="id" />
    		</label>
    		<label>
			    <span for="pw">비밀번호</span>
			    <input type="password" id="pw" name="pw" />
		    </label>
   </form>   
<center>
   	<div style="width: 138px;">
    	<a href="#" style="text-decoration: none;"><p id="findpw" class="forgot-pass" style=" font-size: 12pt; font-family: Gentium Book Basic, Baekmuk Gentium Book Basic, UnGentium Book Basic, Apple Gothic, Latin font, sans-serif; " >Forgot password?</p></a>
    </div>
    <div style="width: 85px;">
    	<a href="#" style="text-decoration: none;"><p id="findid" class="forgot-pass" style=" font-size: 12pt; font-family: Gentium Book Basic, Baekmuk Gentium Book Basic, UnGentium Book Basic, Apple Gothic, Latin font, sans-serif; " >Forgot id?</p></a>
      </div>
    <button type="button" class="submit" id="lbtn">Sign In</button>
        <c:if test="${SID eq null}">
        <a href="https://kauth.kakao.com/oauth/authorize?client_id=1c4b9b851fe834e6428dd0977d0c3cbc&redirect_uri=http://localhost:80/pro/kakao/kakaoLogin.pro&response_type=code">
            <img src="/pro/img/kakao_login.png">
        </a>
    </c:if>
    <c:if test="${SID ne null}">
        <h1>로그인 성공입니다</h1>
        <input type="button" value="로그아웃" onclick="location.href='/pro/kakao/logout.pro'">
    </c:if>
      </center>
  </div>
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <h2>새로 가입할랭?</h2>
        <p>가입을 원하면 Sign up!</p>
      </div>
      <div class="img__text m--in">
        <h2>로그인 할랭?</h2>
        <p>준비가 됬으면 Sign In!</p>
      </div>
      <div class="img__btn">
        <span class="m--up">Sign Up</span>
        <span class="m--in">Sign In</span>
      </div>
    </div>
    <form id="frm1" name="frm1">
    <div class="form sign-up ">
      <label><span>이메일</span>
      		<div class="w3-button w3-small w3-margin-left" id="idck">ID Check</div>
        <input type="email" name="email" id="email">
      </label>
      <label><span>비밀번호</span>
        <input type="password" name="pwe" id="pwe">
      </label>
      <label><span>비밀번호확인</span>
        <input type="password" name="pwa" id="pwa">
      </label>
      <label><span>이름</span>
        <input type="text" name="idx" id="idx">
      </label>
      <label><span>핸드폰번호</span>
        <input type="text" name="phone" id="phone">
      </label>
      <label><span>생년월일</span>
        <input type="text" name="birth" id="birth">
      </label>
      <br>
            <center><span>차량 선택 : </span>
            <select name="opt" style="margin: 10px;">
                           <option value="1" id="ab1">소형</option>
                           <option value="2" id="ab2">경형</option>
                           <option value="3" id="ab3">준중형</option>
                           <option value="4" id="ab4">중형</option>
                           <option value="5" id="ab5">준대형</option>
                           <option value="6" id="ab6">대형</option>
                           <option value="7" id="ab7">스포츠카</option>
                           <option value="8" id="ab8">기타</option>
                        </select>
      <button type="button" class="submit" id="pbtn">Sign Up</button>
              </center>
      </div>
      </form>
    </div>
</body>
</html>