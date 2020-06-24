$(document).ready(function(){
	$('#reviewWrite').css('display', 'none');
	
	$('#reviewbt').click(function(){
		var updown = $('#reviewbt').text();
		alert(updown);
		if(updown === '리뷰'){
			$('#reviewWrite').css('display', '');
			$('#reviewbt').text('닫기');
		} else {
			$('#reviewWrite').css('display', 'none');
			$('#reviewbt').text('리뷰');
		}
	});
	
	$('td').click(function(){
		var str = $(this).text();
		alert(str);
	})
});