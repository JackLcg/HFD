/**
 * Created by Lcg on 2017/9/19.
 */
$(window).resize(function(){

    setTimeout(function(){
        $('.ReqMatrix').css({
            position:'absolute',
            left:leftD+210+34.5,
            top: ($(window).height() - $('.ReqMatrix').outerHeight())/2 + $(document).scrollTop()-298
        });
    },1);

    $('.ReqMatrix').css({
        position:'absolute',
        top: ($(window).height() - $('.ReqMatrix').outerHeight())/2 + $(document).scrollTop()-298
    });
});

//初始化函数
$(window).resize();
leftD=($(window).width() - $('.MainMatrix').outerWidth())/2;
