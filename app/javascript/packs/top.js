$(document).on('turbolinks:load', function() {
  $('.item .disabled_checkbox').click(function() {
    return false;
  });

  // 画像がクリックされた時の処理です。
  $('img.thumbnail').click(function() {
    // チェックを切り替えます
    $(this).toggleClass('checked');
    var nextCheckbox = $(this).nextAll('input[type=checkbox]');
    nextCheckbox.attr("checked", !nextCheckbox.attr('checked'));
  });
});
