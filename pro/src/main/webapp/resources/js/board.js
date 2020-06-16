$(document).ready(function(){
	// 글쓰기 이동
	$('#write').click(function(){
		$(location).attr('href', '/pro/board/boardWrite.pro');
	});
});