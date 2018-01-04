<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <!-- 导入easyui的样式表 -->
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" href="css/common.css">

    <link rel="stylesheet" href="css/bootstrap.min.css" rel="external nofollow" >

    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-1.11.0.min.js"></script>
    </head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <h1>
                天天商城后台管理系统
            </h1>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span2">
            <div class="accordion" id="accordion-823379">
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion-823379" href="#accordion-element-133888">选项卡 #1</a>
                    </div>
                    <div id="accordion-element-133888" class="accordion-body collapse">
                        <div class="accordion-inner">
                            功能块1
                        </div>
                        <div class="accordion-inner">
                            功能块2
                        </div>
                    </div>
                </div>
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-823379" href="#accordion-element-862511">选项卡 #2</a>
                    </div>
                    <div id="accordion-element-862511" class="accordion-body collapse">
                        <div class="accordion-inner">
                            功能块...
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="span10">
            <div class="tabbable" id="tabs-272280">
                <ul class="nav nav-tabs">
                    <li>
                        <a data-toggle="tab" href="#panel-368750">第一部分</a>
                    </li>
                    <li class="active">
                        <a data-toggle="tab" href="#panel-20034">第二部分</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane" id="panel-368750">
                        <p>
                            第一部分内容.
                        </p>
                    </div>
                    <div class="tab-pane active" id="panel-20034">
                        <p>
                            第二部分内容.
                        </p>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">
            系统版本：V2.0
        </div>
    </div>
</div>



</body>
</html>