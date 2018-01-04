<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<table id="listItems"></table>

<script>
    $('#listItems').datagrid({
        url:'items',
        //显示斑马线
        striped: true,
        //显示分页工具栏
        pagination: true,

        //显示工具栏
        toolbar:[
            {
                iconCls:'icon-remove',
                text:'删除',
                handler:function(){
                    var selections = $('#listItems').datagrid('getSelections');
                    if(selections.length==0){
                        $.messager.alert('警告','您还未选择任何选项');
                    }else{
                        $.messager.confirm('确认','再问一次，您确认想要删除记录吗？',function(r){
                            var lds = [];
                            for (var i=0;i<selections.length;i++){
                                lds.push(selections[i].id);
                            }
                            if (r){
                                $.ajax({
                                    url:'item/batch',
                                    data:{'lds[]':lds,'status':'3'},
                                    type:'post',
                                    dataType:'json',
                                    success:function(rec){
                                        if(rec>0){
                                            $('#listItems').datagrid('reload');
                                        }
                                    }
                                });
                            }
                        });
                    }
                }
            },{
                iconCls:'icon-add',
                text:'新增',
                handler:function(){

                }
            },{
                iconCls:'icon-up',
                text:'上架',
                handler:function(){
                    var selections = $('#listItems').datagrid('getSelections');
                    if(selections.length==0){
                        $.messager.alert('警告','您还未选择任何选项');
                    }else{
                        $.messager.confirm('确认','上架已选择的商品？',function(r){
                            var lds = [];
                            for (var i=0;i<selections.length;i++){
                                lds.push(selections[i].id);
                            }
                            if (r){
                                $.ajax({
                                    url:'item/batch',
                                    data:{'lds[]':lds,'status':'1'},
                                    type:'post',
                                    dataType:'json',
                                    success:function(rec){
                                        if(rec>0){
                                            $('#listItems').datagrid('reload');
                                        }
                                    }
                                });
                            }
                        });
                    }
                }
            }, {
                iconCls: 'icon-down',
                text: '下架',
                handler: function () {
                    var selections = $('#listItems').datagrid('getSelections');
                    if(selections.length==0){
                        $.messager.alert('警告','您还未选择任何选项');
                    }else{
                        $.messager.confirm('确认','下架已选择的商品？',function(r){
                            var lds = [];
                            for (var i=0;i<selections.length;i++){
                                lds.push(selections[i].id);
                            }
                            if (r){
                                $.ajax({
                                    url:'item/batch',
                                    data:{'lds[]':lds,'status':'2'},
                                    type:'post',
                                    dataType:'json',
                                    success:function(rec){
                                        if(rec>0){
                                            $('#listItems').datagrid('reload');
                                        }
                                    }
                                });
                            }
                        });
                    }
                }
            }
        ],
        //自适应父容器
        fit: true,
        columns:[[
            {field:'ck',checkbox:true,width:80},
            {field:'id',title:'商品名称',width:160},
            {field:'title',title:'商品标题',width:200},
            {field:'sellPoint',title:'商品卖点',width:300},
            {field:'statusName',title:'商品状态',width:80},
            // {field:'status',title:'商品状态',formatter:function(value,row,index){
            //     switch(value){
            //         case 1:
            //             return '正常';
            //         case 2:
            //             return '下架';
            //         case 3:
            //             return '删除';
            //         default:
            //             return '未知';
            //
            //     }
            //     }},
            {field:'catName',title:'分类名称',width:80},
            {field:'created',title:'创建日期',formatter:function(v,r,i){
                    return moment(v).format('l');}}
        ]]
    })
</script>