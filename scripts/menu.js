function handleHistory(hash) {
  if (hash == "") {
    hash = "bio";
  }
  $("#content div").hide();
  $("#" + hash).show();
  
  $("a").removeClass("disabled");
  $("a[href='#" + hash + "']").addClass("disabled");
}

$(document).ready(function() {
  $.history.init(handleHistory);
});
