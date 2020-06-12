$(function(){
	$('#write').click(function(){
		$(location).attr('href', '/pro/sales/sales_write.pro');
	});
	
	$('.salesList').click(function(){
		var no = $(this).attr('id');
		$('#pno').val(no);
		var pno = ('#pno').val();
		$('#frm').attr('action', '/sales_inside.pro');
		$('#frm').submit();
	});
	
	$('#save').click(function(){
		var sid = $('#sid_saWrite').val();
		var title = $('#ptt_saWrite').val();
		var body = $('#pbd_saWrite').val()
		var cate = $('#cate_saWrite').val();

		alert("sid : " + sid + " title : " + title + 
				" body : " + body + " cate : " + cate);
		
		$('#memid').val('sjj94@naver.com');
		var id = $('#memid').val(); 
		alert(id);
		$('#ptt').val(title);
		$('#pbd').val(body);
		$('#cate').val(cate);
		$('#frm').attr('action', '/pro/sales/sales_write.pro');
		$('#frm').submit();
	});
	
	$('#list').click(function(){
		$(location).attr('href', '/pro/sales/sales.pro');
	});
});
	