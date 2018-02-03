/**
 * Created by Lcg on 2017/9/18.
 */
// 实现body内的div元素的拖拽
// on()函数用于为指定元素的一个或多个事件绑定事件处理函数。
// 双击触发移动功能
$(function () {
    $('body').on('dblclick', '.TagMatrix', function () {
        $(this).addClass('draggable').parents().on('mousemove', function (e) {
            $('.draggable').offset({
                top: e.pageY - $('.draggable').outerHeight() / 2,
                left: e.pageX - $('.draggable').outerWidth() / 2
            }).on('mouseup', function () {
                $(this).removeClass('draggable');
            });
        });
        e.preventDefault();
    }).on('mouseup', function () {
        $('.draggable').removeClass('draggable');
    });
});

$(function () {
    $('body').on('dblclick', '.ReqMatrix', function () {
        $(this).addClass('draggable').parents().on('mousemove', function (e) {
            $('.draggable').offset({
                top: e.pageY - $('.draggable').outerHeight() / 2,
                left: e.pageX - $('.draggable').outerWidth() / 2
            }).on('mouseup', function () {
                $(this).removeClass('draggable');
            });
        });
        e.preventDefault();
    }).on('mouseup', function () {
        $('.draggable').removeClass('draggable');
    });
});

