$(document).on('turbolinks:load', function() {
  $('.item .disabled_checkbox').click(function() {
    return false;
  });

  // 画像がクリックされた時の処理です。
  $('img.thumbnail').click(function() {
    // チェックを切り替えます
    $(this).toggleClass('checked');
  });
});
