// (() => {
//     const checkBoxList = document.querySelectorAll('.disabled-checkbox')
//     const imageList = document.querySelectorAll('.image')

//     imageList.forEach((image, i) => {
//         image.addEventListener('click', () => {
//             const imageClassList = image.classList

//             // checked属性の切り替え
//             checkBoxList[i].checked = !checkBoxList[i].checked

//             // CSSクラスの切り替え
//             if (Array.from(imageClassList).includes('checked')) {
//                 imageClassList.remove('checked')
//             } else {
//                 imageClassList.add('checked')
//             }
//         })
//     })
// })()

$(function() {
    // チェックボックスのクリックを無効化します。
    $('.image_box .disabled_checkbox').click(function() {
        return false;
    });

    // 画像がクリックされた時の処理です。
    $('img.thumbnail').on('click', function() {
        if (!$(this).is('.checked')) {
            // チェックが入っていない画像をクリックした場合、チェックを入れます。
            $(this).addClass('checked');
        } else {
            // チェックが入っている画像をクリックした場合、チェックを外します。
            $(this).removeClass('checked')
        }
    });
});