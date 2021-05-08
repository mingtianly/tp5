layui.use('table', function(){
    var setting = {
        elem: '#test'
        , url: tableUrl //数据接口
        ,title: title
        ,totalRow: typeof totalRow != 'undefined' || false
        ,loading:true
        , page: true //开启分页
        , toolbar: '#toolbarDemo'
        , cols: [cols]
        ,id:"test"
        ,autoSort: false
        ,limit: typeof limit != 'undefined' ? limit : 10
        ,limits:typeof limits != 'undefined' ? limits : [10,20,30,50,80,100]
        ,text: {
            none: '暂无相关数据'
        }
        , response: {
            statusCode: 200 //重新规定成功的状态码为 200，table 组件默认为 0
        }
        , parseData: function (res) { //将原始数据解析成 table 组件所规定的数据
            return {
                "code": res.status, //解析接口状态
                "msg": res.message, //解析提示文本
                "count": res.total, //解析数据长度
                "data": res.rows.item //解析数据列表
            };
        },
        done: function (res, curr, count) {
            try {
                if(typeof eval(done)=="function"){done(res,curr,count);}
            } catch(e) {}
        }
    };
    var width = $(window).width();
    if(width < 450){
        setting.page = {
            layout: ['prev', 'page', 'next','limit', 'count' ] //自定义分页布局
            ,groups: 2 //只显示 1 个连续页码
            ,first: false //不显示首页
            ,last: false //不显示尾页

        }
    }
    //初始化加载表格
    table.render(setting);

    //循环要搜索的字段
    for (i=0;i<cols.length;i++){
        if(cols[i]['search']){
            var searchInput = "<div class=\"layui-inline\">\n" +
                "                        <label class=\"layui-form-label\">搜索"+cols[i]['title']+"</label>" +
                "                        <div class=\"layui-input-block\">\n" +
                "                            <input type=\"text\" name=\""+cols[i]['field']+"\" autocomplete=\"off\" class=\"layui-input\">\n" +
                "                        </div>\n" +
                "                    </div>";
            var div = document.createElement("span");
            div.innerHTML = searchInput;
            document.getElementById("search").appendChild(div);
        }
    }

    // 监听搜索
    $('.searchForm .layui-btn').on('click', function(){
        var type = $(this).data('type');
        if(type == "search"){
            table.reload('test', {
                where: {"search":form.val('search')}
                ,page: {
                    curr: 1
                }
            });
        }else{
            table.reload('test', {
                where: {"search":[]}
                ,page: {
                    curr: 1
                }
            });
        }
    });

    // 监听排序
    //监听排序事件
    table.on('sort(test)', function(obj){
        table.reload('test', {
            initSort: obj
            ,where: {
                search:form.val('search'),
                order:{
                    field:obj.field,
                    order: obj.type,
                }
            }
        });
    });

    //监听按钮事件
    table.on('tool(test)', function(obj){
        tool(obj);
    });

    table.on('checkbox(test)', function (obj) {
        var checkStatus = table.checkStatus('test'); //idTest 即为基础参数 id 对应的值
        if (checkStatus.data.length === 0) {
            $('#btn-del').addClass('layui-btn-disabled');
            $('#btn-del').attr('disabled', true);
            $('#btn-cz').addClass('layui-btn-disabled');
            $('#btn-cz').removeClass('cz');
            $('#btn-cz').attr('disabled', true);
        } else {
            $('#btn-del').attr('disabled', false);
            $('#btn-del').removeClass('layui-btn-disabled');
            $('#btn-cz').attr('disabled', false);
            $('#btn-cz').removeClass('layui-btn-disabled');
            $('#btn-cz').addClass('cz');
        }
    });
});
//重新加载
function reload() {
    table.reload('test', {
        where: {"search": []}
        , page: {
            curr: 1
        }
    });
}
