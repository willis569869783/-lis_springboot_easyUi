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
		<script src="js/BorrowOrg.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
			<table id="dg"></table>
			<div id="dd" class="easyui-dialog" title="编辑窗体" style="width:400px;" data-options="iconCls:'icon-save',resizable:false,modal:true,closed:true,buttons:'#bb'">
				<form id="ff" method="post">
				<input type="hidden" name="id" value="0" />
					<table class="center">
						<tr>
							<td>机构名称:</td>
							<td><input class="easyui-textbox" type="text" id="name" name="name" data-options="required:true" /></td>
						</tr>
						<tr>
							<td>机构描述:</td>
							<td><input class="easyui-textbox" type="text" id="remark" name="remark" data-options="required:true,iconCls:'icon-man',iconAlign:'left'" /></td>
						</tr>
						<tr>
							<td>合作开始日期:</td>
							<td><input class="easyui-datebox" type="date" id="beginDate" name="beginDate" data-options="required:true,iconCls:'icon-lock',iconAlign:'left'" /></td>
						</tr>
						<tr>
							<td>合作结束日期:</td>
							<td><input class="easyui-datebox" type="date" id="endDate" name="endDate" data-options="required:true,iconCls:'icon-lock',iconAlign:'left'" />
							</td>
						</tr>
						<tr>
							<td>机构负责人:</td>
							<td><input class="easyui-textbox" type="text" id="manager" name="manager" data-options="required:true" /></td>
						</tr>
						<tr>
							<td>机构联系方式:</td>
							<td><input class="easyui-textbox" type="text" id="phone" name="phone" data-options="required:true" /></td>
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