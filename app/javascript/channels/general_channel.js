$(document).on('turbolinks:load', function() {
  $('body').on('click', '.js-brand-item', function(){
    $('.js-loading-element').removeClass('collapse');
    var brandText     = $(this).data('text');
    var brandSelected = $(this).data('value');
    $('#brand_filter_value').html(brandText);
    $('#item_brand').val(brandSelected);
    $('#rental_items_submit_btn').click();
  });

  $('body').on('click', '.js-rental-group-item', function(){
    $('.js-loading-element').removeClass('collapse');
    var groupText     = $(this).data('text');
    var groupSelected = $(this).data('value');
    $('#rental_group_value').html(groupText);
    $('#item_group').val(groupSelected);
    $('#rental_items_submit_btn').click();
  });
});