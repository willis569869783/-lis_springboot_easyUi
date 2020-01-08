<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>easyui</title>
		<style type="text/css">
			.center{
				margin: 0 auto;
				padding: 20px 0;
			}
		</style>
		<script src="js/StudentListen.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
			<table id="dg"></table>
			<div id="dd" class="easyui-dialog" title="编辑窗体" style="width:400px;" data-options="iconCls:'icon-save',resizable:false,modal:true,closed:true,buttons:'#bb'">
				<form id="ff" method="post">
				<input type="hidden" name="id" value="0" />
					<table class="center">
						<tr>
							<td>姓名:</td>
							<td><input class="easyui-textbox" type="text" id="name" name="name" data-options="required:true" /></td>
						</tr>
						<tr>
							<td>性别:</td>
							<td><input type="radio" id="sex" name="sex" value="1" checked="checked" />男
								<input type="radio" id="sex" name="sex" value="0" />女
							</td>
						</tr>
						<tr>
							<td>联系方式:</td>
							<td><input class="easyui-textbox" type="text" id="phone" name="phone" data-options="required:true" /></td>
						</tr>
						<tr>
							<td>联系地址:</td>
							<td><input class="easyui-textbox" type="text" id="address" name="address" data-options="required:true" /></td>
						</tr>
						<tr>
							<td>试听日期:</td>
							<td><input class="easyui-datebox" type="date" id="listenDate" name="listenDate" data-options="required:true,editable:false,width:150" /></td>
						</tr>
						<tr>
							<td>试听专业:</td>
							<td>
								 <select id="major" name="majorid"></select>
							</td>
						</tr>
					</table>
					<div id="bb">
						<a href="#" id="zz" class="easyui-linkbutton" data="zz">保存</a>
						<a href="#" id="dialog_close" class="easyui-linkbutton">关闭</a>
					</div>
				</form>
			</div>
	</body>

</html>