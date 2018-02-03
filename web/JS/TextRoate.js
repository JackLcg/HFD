/**
 * Created by Lcg on 2017/9/15.
 */
$("#example > div.wtHolder > div.wtHider > div.wtSpreader > table > tbody > tr:nth-child(2)").each(function (i) {
    $(this).find("td").wrapInner("<span></span>");
    $(this).find("td").addClass("rotated-text");
    $(this).find("span").addClass("rotated-text__inner");
});