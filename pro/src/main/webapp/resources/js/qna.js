$(document).ready(function(){
	// qnaList.jsp 기능처리
	// qnalist -> qnaWrite 버튼 기능처리
	$('#qwbtn').click(function(){
		$(location).attr('href','/pro/qna/qnaWrite.pro');
	});
	
	// qnaList -> qnaDetail 버튼 기능처리
	$('.qlist').siblings().click(function(){
		var qno = $(this).parent().attr('id');
		
	});
	
	  
	
	
	
	
	
	
	
	
	
	
	// qnaWrite.jsp 기능처리
	// qnaWrite -> qnalist 버튼 기능처리
	$('#wcbtn').click(function(){
		$(location).attr('href', '/pro/qna/qnaList.pro');
	});
	
	// qnaWrite 글쓰기 버튼 기능처리
	$('#sbbtn').click(function(){
		var tt = $('#qtt1').val();
		var ip = $('#qip1').val();
		
		$('#qtt').val(tt);
		$('#qip').val(ip);
		$('#frm').attr('action','/pro/qna/qnaWriteProc.pro');
		$('#frm').submit();
	});
	
	
});