// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
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
