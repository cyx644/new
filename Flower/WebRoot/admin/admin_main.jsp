<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@page import="entity.Manager"%>
<%
Manager manager=(Manager)session.getAttribute("loginManager");
if(manager==null){
	out.print("<h2>用户认证失败,请正常登陆！</h2>");
	return;
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>鲜花网后台管理系统</title>
</head>

<frameset rows="102,800,8" frameborder="no" border="0" framespacing="0"id="asd"> 
	<frame src="top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" />
	<frame src="middle.jsp" name="mainFrame" id="mainFrame" />
	<frame src="down.jsp" name="bottomFrame" scrolling="No" noresize="noresize"id="bottomFrame" />
</frameset>
<noframes>
	<body>
	</body>
</noframes>
</html>
