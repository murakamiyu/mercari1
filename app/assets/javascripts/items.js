$(function() {
  $('#thumb0').hover(function() {
    $('#image0').css('display','block'),
    $('#image1,#image2,#image3').css('display','none');
  });
  $('#thumb1').hover(function() {
    $('#image1').css('display','block'),
    $('#image0,#image2,#image3').css('display','none');
  });
  $('#thumb2').hover(function() {
    $('#image2').css('display','block'),
    $('#image1,#image0,#image3').css('display','none');
  });
  $('#thumb3').hover(function() {
    $('#image3').css('display','block'),
    $('#image1,#image0,#image2').css('display','none');
  });
});