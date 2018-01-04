<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<table id="listItems" class="table"></table>
<script>
    $('#listItems').datagrid({
        url:'items',
        //显示斑马线
        striped: true,
        //显示分页工具栏
        pagination: true,
        //自适应父容器
        fit: true,
        columns:[[
            {field:'id',title:'商品名称'},
            {field:'title',title:'商品标题'},
            {field:'sellPoint',title:'商品卖点'}
        ]]
    })
</script>