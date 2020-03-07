/*用户操作*/
$(function(){
    $(".user_info").css("z-index",10);


    $(".user_image").mouseover(function () {
        $(".user_caozao").css("display","block");
    })

    $(".user_caozao").mouseover(function () {
        $(".user_caozao").css("display","block");
    });

    $(".user_info").mouseout(function () {
        $(".user_caozao").css("display","none");
    });
})