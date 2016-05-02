
$(code);

function code() {

	$("p").hover(function() {
		$(this).css("color", "red");
	});

	$("p").mouseout(function() {
		$(this).css("color", "black");
	});

	$("p").mousedown(function() {
		$(this).css("font-weight", "bold");
	});

	$("p").mouseup(function() {
		$(this).css("font-weight", "normal");
	});

	$("*").css("cursor", "default");
	

}