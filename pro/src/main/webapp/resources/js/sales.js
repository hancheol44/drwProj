$(function(){
	$('#write').click(function(){
		$(location).attr('href', '/pro/sales/sales_write.pro');
	});
	
	$('.salesList').click(function(){
		var no = $('.salesList').attr('id');
		alert(no);
		
		$('#pno').val(no);
		$('#frm').attr('action', '/pro/sales/sales_inside.pro');
		$('#frm').submit();
	});
	
	$('#save').click(function(){
		var sid = $('#sid_saWrite').attr('value');
		var title = $('#ptt_saWrite').val();
		var body = $('#pbd_saWrite').val()
		var cate = $('#cate_saWrite').val();
		$('#memid').val(sid);
		var id = $('#memid').val(); 
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
	