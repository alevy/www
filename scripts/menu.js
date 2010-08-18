function handleHistory(hash) {
  if (hash == "") {
    hash = "bio";
  }
  $("#content div").hide();
  $("#" + hash).show();
  
  $("#menu a").removeClass("disabled");
  $("#menu a[href='#" + hash + "']").addClass("disabled");
}

$(document).ready(function() {
  $.history.init(handleHistory);
  $("#menu a").click(function(e) {
    
  });
});
