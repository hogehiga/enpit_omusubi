$(document).on('turbolinks:load', function() {
  $('.item .disabled_checkbox').click(function() {
    var prevImage = $(this).prevAll('img.thumbnail');
    prevImage.toggleClass('checked');;
    $(this).prop("checked", !$(this).prop('checked'));
  });

  // 画像がクリックされた時の処理です。
  $('img.thumbnail').click(function() {
    // チェックを切り替えます
    $(this).toggleClass('checked');
    var nextCheckbox = $(this).nextAll('input[type=checkbox]');
    nextCheckbox.prop("checked", $(this).hasClass('checked'));
  });
});
