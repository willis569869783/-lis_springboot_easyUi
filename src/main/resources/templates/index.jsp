<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#tree').tree({    
		    url:'tree_data.json',
		    animate:true,
		    //onlyLeafCheck:true
		    lines:true,
		    dnd:true,
		    onClick:function(node){
		    	var title = node.text;
		    	var url = node.attributes.url;
				// 在用户点击的时候提示
				if($('#tt').tabs('exists',title)){
					$('#tt').tabs('select',title);
				}else{
					$('#tt').tabs('add',{
					    title:title,    
					    content:"<iframe src='"+url+"' frameborder='0' style='width: 100%;height: 100%'></iframe>",    
					    closable:true
					});
				}
			}

		});  
		$('#tree2').tree({    
		    url:'tree_data2.json',
		    animate:true,
		    //onlyLeafCheck:true
		    lines:true,
		    dnd:true,
		    onClick:function(node){
		    	var title = node.text;
		    	var url = node.attributes.url;
				// 在用户点击的时候提示
				if($('#tt').tabs('exists',title)){
					$('#tt').tabs('select',title);
				}else{
					$('#tt').tabs('add',{
					    title:title,    
					    content:"<iframe src='"+url+"' frameborder='0' style='width: 100%;height: 100%'></iframe>",    
					    closable:true
					});
				}
			}

		});  
		$('#tree3').tree({    
		    url:'tree_data3.json',
		    animate:true,
		    //onlyLeafCheck:true
		    lines:true,
		    dnd:true,
		    onClick:function(node){
		    	var title = node.text;
		    	var url = node.attributes.url;
				// 在用户点击的时候提示
				if($('#tt').tabs('exists',title)){
					$('#tt').tabs('select',title);
				}else{
					$('#tt').tabs('add',{
					    title:title,    
					    content:"<iframe src='"+url+"' frameborder='0' style='width: 100%;height: 100%'></iframe>",    
					    closable:true
					});
				}
			}

		});  
	})
</script>
</head>
<body>
<div id="cc" class="easyui-layout" style="width:600px;height:400px;" fit="true">   
    <div data-options="region:'north'" style="height:100px;">
    </div>   
    <div data-options="region:'west'" style="width:150px;">
    	<div id="aa" class="easyui-accordion" style="width:300px;height:200px;" fit="true">   
		    <div title="学生管理"> 
		    	<ul id="tree"></ul> 
		    </div>   
		    <div title="教师管理">   
		        <ul id="tree2"></ul> 
		    </div>
		    <div title="贷款管理">   
		        <ul id="tree3"></ul> 
		    </div>   
		</div>  
	</div>   
    <div data-options="region:'center',border:false" style="background:#eee;">
    	<div id="tt" class="easyui-tabs" style="width:500px;height:250px;" fit="true">
    		<div title="主页面" style="padding:20px;display:none;">   
        		<h1>欢迎来到实力至上主义的教室</h1>	   
    		</div>
    	</div>  
    </div>   
</div> 
</body>
</html>