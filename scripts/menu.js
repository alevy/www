var baseTitle = document.title

function handleHistory(hash) {
  if (hash == "") {
    hash = "about";
  }
  $("#content div").hide();
  $("#" + hash).show();
  
  $("a").removeClass("disabled");
  $("a[href='#" + hash + "']").addClass("disabled");
  document.title = baseTitle + " :: " + hash
}

$(document).ready(function() {
  $.history.init(handleHistory);
});
