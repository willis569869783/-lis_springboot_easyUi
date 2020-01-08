var title;
var url;
$(function(){
	$("#dg").datagrid({
	idField:"id",
	url:"RoomFeeStudent/queryByViewPage",
	fitColumns:true,
	fit:true,
	columns:[[  
		{field:'',checkbox:true},  
        {field:'roomName',title:'房间名称',width:100,align:'center'},    
        {field:'studentName',title:'学生',width:100,align:'center'},    
        {field:'useWater',title:'水费',width:50,align:'center'},
        {field:'useElectricity',title:'电费',width:50,align:'center'},
        {field:'roomFee',title:'物业费',width:100,align:'center'},
        {field:'totalFee',title:'总费用',width:100,align:'center'},
        {field:'createDate',title:'费用产生日期',width:100,align:'center'},
        {field:'createTime',title:'创建时间',width:150,align:'center'}
    ]],
    pagination:true,
    pageSize:20,
    scrollbarSize:0,
    toolbar: [{
    	text:"新增",
		iconCls: 'icon-add',
		handler: function(){
			title = "新增";
			url = "add";
			//重置form表单数据
			$("#ff").form("reset");
			openDialog();
		}
	},'-',{
    	text:"修改",
		iconCls: 'icon-edit',
		handler: function(){
			title = "修改";
			url = "update";
			updateDialog();
		}
	},'-',{
		text:"删除",
		iconCls: 'icon-remove',
			handler: function(){
				deleteStudent();
			}
		}]
	});
});
//打开对话框
function openDialog(){
	getMajor();
	$("#dd").dialog({
	closed:false,
	title:title,
	buttons:[{
		text:'保存',
		iconCls:"icon-save",
		handler:function(){
			saveStudent();
		}
	},{
		text:'关闭',
		iconCls:"icon-cancel",
		handler:function(){
			//关闭对话框
			$("#dd").dialog("close");
			}
		}]
	});
}
function updateDialog(){
	var array = $("#dg").datagrid("getSelections");
	if(array.length!=1){
		$.messager.alert("提示框","修改只能选择一条数据","warning");
		return;
	}
	//加载选择的数据填充到form表单
	$('#ff').form('load',array[0]);
	openDialog();
}
//保存学生信息
function saveStudent(){
	$('#ff').form('submit', {    
	    url:"RoomFeeStudent/"+url,
	    onSubmit: function(){    
	    	return $('#ff').form('validate');
	    },    
	    success:function(result){
	    	//把服务器后台返回的json格式字符串转成json对象
	    	var data = eval("("+result+")");
	    	$.messager.alert("消息框",data.msg,"info");
	    	if(data.statue==0){//数据保存成功
	    		//关闭对话框
	    		$("#dd").dialog("close");
	    		//刷新列表
	    		$("#dg").datagrid("reload");
		    	}
		}    
	});
}
//删除学生
function deleteStudent(){
	var array = $("#dg").datagrid("getSelections");
	if(array.length==0){
		$.messager.alert("提示框","请选择要删除的数据","warning");
		return;
	}
	$.messager.confirm("确认框","您确认要删除这"+array.length+"条数据吗？",function(r){
		if(r){//点“确定”按钮
			var ids = "";
			for(var i=0;i<array.length;i++){
				ids += array[i].id+",";
			}
			ids = ids.substring(0,ids.length-1);
			$.ajax({
				type:"post",
				url:"RoomFeeStudent/deleteMore",
				data:"ids="+ids,
				dataType:"json",
				success:function(result){
					$.messager.alert("消息框",result.msg,"info");
			    	if(result.statue==0){//数据删除成功
			    		//清除选中的记录行
			    		$("#dg").datagrid("clearSelections");
			    		//刷新列表
			    		$("#dg").datagrid("reload");
				    	}
					}
				});
			}
	});
}
//动态获取专业
function getMajor(){
	$("#room").combobox ({
        editable : false,
        url : "Room/queryAll",//url
        valueField : "id", //相当于 option 中的 value 发送到后台的
        textField : "text"//option中间的内容 显示给用户看的
    });
	$("#student").combobox ({
		editable : false,
		url : "StudentStudy/queryAll",//url
		valueField : "id", //相当于 option 中的 value 发送到后台的
		textField : "text"//option中间的内容 显示给用户看的
	});
}
