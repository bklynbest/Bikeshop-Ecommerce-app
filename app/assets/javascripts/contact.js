$(document).on('turbolinks:load', function(){

  $(".contact_submit").on('click', function() {
  var charCountn = $(".contact_name").val().length;
  if(charCountn === 0) {
      $(".contact_name").css("border", "2px solid red");
  } else {
      $('#visible-name').html('Thank You.');
      $('.contact_name').hide();
  };

  var charCounte = $(".contact_email").val().length;
  if(charCounte === 0) {
      $(".contact_email").css("border", "2px solid red");
  } else {
    $('#visible-email').html('Thank You.');
    $('.contact_email').hide();
  };

  var charCountm = $(".contact_message").val().length;
  if(charCountm === 0) {
      $(".contact_message").css("border", "2px solid red");
  } else {
      var comment = $('.contact_message').val();
      $('#visible-message').html('Thank you. We have reveived your message and will get in contact with you soon!');
      $('.contact_message').hide();
  };
  return false;
});
});
