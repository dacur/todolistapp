// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
	// This is football's JS file

	var textval = $('#txtName').val();

	$('#btnSend').click(function(){
			DoIt();
			console.log("You pressed send");
			// console.log("Textval =" + textval);
			// if (isNaN(textval)){
			// 	console.log("Is not a number");
			// } else {
			// 	console.log("Is a number");
			// };

	});

	function DoIt(textval){
		var name = $('#txtName').val();

		$.ajax({
			url: '/main/savelist',
			type: 'POST',
			data: {name: name}
		});
	};
});