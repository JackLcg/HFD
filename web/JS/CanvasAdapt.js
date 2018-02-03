
/**
 * Created by Lcg on 2017/9/13.
 */
// 设置画布自适应
// 左侧导航栏宽度为190px
// 下册页脚高度为20px
$(window).resize(resizeCanvas);
function resizeCanvas() {
    var width = $(window).get(0).innerWidth;
    var height = $(window).get(0).innerHeight;
    $("#canvas").attr("width", width-210);
    $("#canvas").attr("height", height-120);
    // $("#treeDemo").css("height", height-100);
}
resizeCanvas();

