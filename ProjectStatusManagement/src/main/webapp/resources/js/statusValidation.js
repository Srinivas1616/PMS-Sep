$(document).ready(function() {
	$('#closed').keypress(function() {
		$('#closed').removeAttr("style");
		$('#spanClosed').html("");
	});

	$('#failed').keypress(function() {
		$('#failed').removeAttr("style");
		$('#spanFailed').html("");
	});
	
	$('#reopened').keypress(function() {
		$('#reopened').removeAttr("style");
		$('#spanReopened').html("");
	});
	
	$('#blocked').keypress(function() {
		$('#blocked').removeAttr("style");
		$('#spanBlocked').html("");
	});
	
	$('#inprogress').keypress(function() {
		$('#inprogress').removeAttr("style");
		$('#spanInprogress').html("");
	});
				
	$('#review').keypress(function() {
		$('#review').removeAttr("style");
		$('#spanReview').html("");
	});
	
});

var count=0;
function numberValidation(ele){
	var value = ele.value;
	var numbers = /^[0-9]+$/;
	if(isNaN(value)){
		$('#inprogress').css('border-color', 'red');
		$('#spanInprogress').show();
		document.getElementById('spanInprogress').innerHTML = " * Invalid input *";
		count++;
	}
}


function statusValidation(){	
	if(count == 0){
		document.getElementById("submit").disabled = false;
	}	
}