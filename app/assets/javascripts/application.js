//= require jquery
//= require jquery_ujs
//= require_self
//= require_tree .
//= require tinymce-jquery
var width;
$(document).ready(function(){
	
	$('#centerImage').live("click",function(){
		if(width){
			$(this).css('width',width);
			width = 0;
		}
		else{
			width = $(this).css('width');
			$(this).attr('style','');
		}
	})
	
	$(".newComment form").live("submit",function(){
		$(".newComment").html("<span>Adding Comment...Please Wait...</span>");
	});
});
