var title;
var url;
$(function(){
	$("#dg").datagrid({
	idField:"id",
	url:"BorrowOrg/queryByPage",
	fitColumns:true,
	fit:true,
	columns:[[  
		{field:'',checkbox:true},  
        {field:'name',title:'机构名称',width:100,align:'center'},    
        {field:'remark',title:'机构描述',width:100,align:'center'},
        {field:'beginDate',title:'合作开始日期',width:100,align:'center'},
        {field:'endDate',title:'合作结束日期',width:50,align:'center'},
        {field:'manager',title:'合作机构负责人',width:100,align:'center'},
        {field:'phone',title:'合作机构联系方式',width:150,align:'center'},
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
	    url:"BorrowOrg/"+url,
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
				url:"BorrowOrg/deleteMore",
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