//隐藏左侧导航
$(".hideMenu").click(function(){
    if($(".topLevelMenus li.layui-this a").data("url")){
        layer.msg("此栏目状态下左侧菜单不可展开");  //主要为了避免左侧显示的内容与顶部菜单不匹配
        return false;
    }
    $(".layui-layout-admin").toggleClass("showMenu");
    $(".hideMenu").toggleClass("layui-icon-shrink-right");
    $(".hideMenu").toggleClass("layui-icon-spread-left");
    //渲染顶部窗口
})
$(".layui-elem-quote .layui-icon-close").click(function () {
    $(this).parent().remove();
})

function showMsg(content,reload=true,action) {
    layer.msg(content, {icon: reload ? 1 : 2, time: reload ? 500 : 1200}, function () {
        if (action) {
            action()
        } else {
            if (reload) {
                window.location.reload()
            }
        }
    });
}
$("img").bind("click",function () {
    let src = $(this).attr('src');
    layer.open({
        type: 1,
        title: false,
        closeBtn: 0,
        area: ['auto'],
        skin: 'layui-layer-nobg', //没有背景色
        shadeClose: true,
        content: '<img src="'+src+'" width="auto" height="auto"/>'
    });
});
