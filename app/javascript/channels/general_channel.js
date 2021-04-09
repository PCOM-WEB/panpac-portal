$(document).on('turbolinks:load', function() {
  $('body').on('click', '.js-brand-item', function(){
    $('.js-loading-element').removeClass('collapse');
    var brandSelected = $(this).data('value');
    $('#brand_filter_value').html(brandSelected);
    $('#item_brand').val(brandSelected);
    $('#rental_items_submit_btn').click();
  });

  $('body').on('click', '.js-rental-group-item', function(){
    $('.js-loading-element').removeClass('collapse');
    var brandSelected = $(this).data('value');
    $('#rental_group_value').html(brandSelected);
    $('#item_group').val(brandSelected);
    $('#rental_items_submit_btn').click();
  });
});