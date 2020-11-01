$(document).on('turbolinks:load', function() {
  $('.item .disabled_checkbox').click(function() {
    var prevImage = $(this).prevAll('img.thumbnail');
    prevImage.toggleClass('checked');;
    // チェックボックスのクリックなので、toggleの処理は不要(ブラウザが勝手にやってくれる)
  });

  // 画像がクリックされた時の処理です。
  $('img.thumbnail').click(function() {
    // チェックを切り替えます
    $(this).toggleClass('checked');
    var nextCheckbox = $(this).nextAll('input[type=checkbox]');
    nextCheckbox.prop("checked", $(this).hasClass('checked'));
  });
});
