$(document).on("turbolinks:load", function() {
  $(".spot-template").on("click", function(event) {
    event.preventDefault();

    var spot_template = $(this).data("spot-template");

    $("#spot_name").val(spot_template.name);
    $("#spot_description").val(spot_template.description);
    $("#spot_category_id").val(spot_template.category_id);
  })
})
