$(document).on('turbolinks:load', function() {
  $('body').on('change', '#vehicle_count, #lease_duration', function(){
    if(parseInt($('#vehicle_count').val()) <= 1 && $('#lease_duration').val() == 'below_6_months') {
      $('#rental_booking_action')[0].click();
    }
  });
});