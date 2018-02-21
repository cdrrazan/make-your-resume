$(function() {
  // limits the number of categories
  $('#f').on('cocoon:after-insert', function() {
    check_to_hide_or_show_add_link();
  });

  $('#f').on('cocoon:after-remove', function() {
    check_to_hide_or_show_add_link();
  });

  check_to_hide_or_show_add_link();

  function check_to_hide_or_show_add_link() {
    if ($('#f .nested-fields').length == 2) {
      $('#add-category a').hide();
    } else {
      $('#add-category a').show();
    }
  }
})
