$(function() {
  $(".pc-header-nav-child").on("mouseover", function() {
    var hoveringParent = $(this).parent().parent().find('h3 a');
    $(hoveringParent).addClass("active");
  });

  $(".pc-header-nav-child").on("mouseout", function() {
    var hoveringParent = $(this).parent().parent().find('h3 a');
    $(hoveringParent).removeClass("active");
  });


  $(".pc-header-nav-grand-child-wrap").on("mouseover", function() {
    var hoveringChild = $(this).prev();
    console.log(hoveringChild);
    $(hoveringChild).addClass("active");
  });

  $(".pc-header-nav-grand-child-wrap").on("mouseout", function() {
    var hoveringChild = $(this).prev();
    $(hoveringChild).removeClass("active");
  });

});
