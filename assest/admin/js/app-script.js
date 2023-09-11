$(function () {
  "use strict";

  $.sidebarMenu($('.sidebar-menu'));

  $(".toggle-menu").on("click", function (e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
  });

  var item = $(".sidebar-menu a").filter(function () {
    return this.href == window.location;
  });

  item.addClass("active").parent().addClass("active");

  while (item.is("li")) {
    item = item.parent().addClass("in").parent().addClass("active");
  }

  $(window).on("scroll", function () {
    $('.topbar-nav .navbar').toggleClass('bg-dark', $(this).scrollTop() > 60);
  });
});