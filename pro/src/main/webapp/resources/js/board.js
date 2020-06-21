$(document).ready(function() {
	// 글쓰기 이동
	$('#write').click(function() {
		$(location).attr('href', '/pro/board/boardWrite.pro');
	});

	$('.content').click(function() {
		// 할일
		// 글 번호 알아낸다.
		var sno = $(this).attr('id');
		alert(typeof sno);
		
		$('#bdno').val(sno);
		
//		$('#nowPage').val('${PAGE.nowPage}');
		$('#dfrm').attr('action', '/pro/board/boardDetail.pro');
		$('#dfrm').submit();
	});
	
	$('#wbtn').click(function() {
//		alert("클릭됨");
//		var cate = $('#bct').val();
//		var tt = $('#btt').val();
//		var bd = $('#bbd').val();
//		alert(cate);
//		$('#bdct').val(cate);
//		$('#bdtt').val(tt);
//		$('#bdbd').val(bd);
		$('#wfrm').submit();
		
	})
	
});