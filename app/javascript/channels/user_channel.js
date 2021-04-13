$(document).on('turbolinks:load', function() {
  $('body').on('click', '#corporate_user', function(){
    $('#corporate_user_container').toggleClass('collapse', !$(this).is(':checked'));
  });
});