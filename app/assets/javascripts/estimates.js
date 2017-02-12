

$(document).on('change', 'select#estimate_lead_id', function(e) {
	var url = "/leads";
	var data = {
		id: $(this).val()
	};
  $.getJSON(url, data, function (data, status) {		
  	if (status === 200) {
  		return data
  		alert("THIS IS WORKING!");		
  	} else {
  		alert("This is NOT working!");
  	}
  });
});