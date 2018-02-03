var leftD;
$(window).resize(function(){
    setTimeout(function(){
        $('.MainMatrix').css({
            position:'absolute',
            left:leftD,
            top: ($(window).height() - $('.MainMatrix').outerHeight())/2 + $(document).scrollTop()+70
        });
    },1);
    $('.MainMatrix').css({
        position:'absolute',
        top: ($(window).height() - $('.MainMatrix').outerHeight())/2 + $(document).scrollTop()+70
    });
});
//初始化函数
$(window).resize();
leftD=($(window).width() - $('.MainMatrix').outerWidth())/2+100;






