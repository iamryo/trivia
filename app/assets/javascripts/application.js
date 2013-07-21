// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
jQuery(function($) {


  $(".toggleable").each(function() {
      var link = $(this).find("a.toggle-link");
      var target = $(this).find(".toggle-target");
      var targetPlaceHolder = $("<tr class='nest_table'><td colspan='8'></td></tr>");
      link.click(function(evt) {
        if (link.parents("tr").next(".nest_table").length == 0) {
          link.parents("tr").first().after(targetPlaceHolder);
          targetPlaceHolder.find("td").html(target);
          link.next("#transactions_form").remove();
        }
        target.toggle();
        evt.preventDefault();
        return false;
      });
  });
});