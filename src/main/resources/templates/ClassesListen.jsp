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
		<script src="js/ClassesListen.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
			<table id="dg"></table>
			<div id="dd" class="easyui-dialog" title="编辑窗体" style="width:400px;" data-options="iconCls:'icon-save',resizable:false,modal:true,closed:true,buttons:'#bb'">
				<form id="ff" method="post">
				<input type="hidden" name="classesId" id="classesId" value="0" />
					<table class="center">
						<tr>
							<td>试听班级名称:</td>
							<td><input class="easyui-textbox" type="text" id="classesName" name="classesName" data-options="required:true" /></td>
						</tr>
						<tr>
							<td>试听专业:</td>
							<td>
								 <select id="major" name="majorName"/></select>
							</td>
						</tr>
						<tr>
							<td>班主任:</td>
							<td>
								<select id="manager" name="managerName" ></select>
							</td>
						</tr>
						<tr>
							<td>代课老师:</td>
							<td><select id="teacher" name="teacherName"></select></td>
						</tr>
						<tr>
							<td>教室名称:</td>
							<td><input class="easyui-textbox" type="text" id="classesRoom" name="classesRoom" data-options="required:true" /></td>
						</tr>
						<tr>
							<td>试听开始时间:</td>
							<td><input class="easyui-datebox" type="date" id="beginDate" name="beginDate" data-options="required:true" /></td>
						</tr>
						<tr>
							<td>试听结束时间:</td>
							<td><input class="easyui-datebox" type="date" id="endDate" name="endDate" data-options="required:true" /></td>
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