$(document).ready(function(){
	function add_fields(link, association, content) {
	  var new_id = new Date().getTime();
	  var regexp = new RegExp("new_" + association, "g");
	  $(link).up().insert({
	        before: content.replace(regexp, new_id)
	  });
	}

	$('.add-exercise').click(function(){
		// $(this)
		var data = $(this).attr('data');
		$(this).before(data);
		// alert(data);
		return false;
	});
});