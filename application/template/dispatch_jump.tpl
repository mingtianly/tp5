<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="robots" content="noindex,nofollow">
    <title>错误提示</title>
    <style>
        body{font-size: 14px;font-family: 'helvetica neue',tahoma,arial,'hiragino sans gb','microsoft yahei','Simsun',sans-serif; background-color:#fff; color:#808080;} .wrap{margin:200px auto;width:510px;} td{text-align:left; padding:2px 10px;} td.header{font-size:22px; padding-bottom:10px; color:#000;} td.check-info{padding-top:20px;} a{color:#328ce5; text-decoration:none;} a:hover

        {text-decoration:underline;}
    </style>
</head>
<body>
<?php if (false) { ?>
<div class="wrap">
    <table>
        <?php switch ($code) { ?>
        <?php case 1:?>
        <tr>
            <td rowspan="3" style=""><img width="60" src="<?php echo('/static/common/images/success.png'); ?>"></td>
            <td class="header"><?php echo(strip_tags($msg));?></td>
        </tr>
        <?php break;?>
        <?php case 0:?>
        <tr>
            <td rowspan="3"><img width="60" src="<?php echo('/static/common/images/error.png'); ?>"></td>
            <td class="header"><?php echo(strip_tags($msg));?></td>
        </tr>
        <?php break;?>
        <?php } ?>
        <tr>
            <td>页面自动 <a id="href" href="javascript:history.go(-1)">跳转</a> 等待时间： <b id="wait">3</b></td>
        </tr>
    </table>
</div>
<?php } ?>
</body>
<script src="/static/layui/layui.all.js"></script>
<script src="/static/layer/layer.js"></script>
<script type="text/javascript">
    (function () {
        var msg = "<{$msg}>",
            code = "<?php echo(strip_tags($code));?>",
            href = "<{$url}>",
            data = "<{$data}>",
            wait = "<{$wait}>";
            layer.msg(msg, {icon: code == 1?1:2,time:wait}, function () {
            if (code == 1) {
                if (href === '') {
                    window.location.reload()
                } else {
                    location.href = href
                }
            } else {
                if (href === '' && data === '') {
                        location.href = "javascript:history.go(-1)";
                } else {
                    location.href = href||data
                }
            }
        });
        // var wait = document.getElementById('wait'),
        //     href = document.getElementById('href').href;
        // var interval = setInterval(function () {
        //     var time = --wait.innerHTML;
        //     if (time <= 0) {
        //         location.href = href;
        //         clearInterval(interval);
        //     }
        // }, 1000);
    })();
</script>
</html>

