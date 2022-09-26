<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<%=path%>/css/top.css" rel="stylesheet" type="text/css">
<title>图书馆座位预约系统</title>
</head>
<body>

	<header id="header">
	<div id="menu">
		<div id="logo">
		 
			<div id="system_title">图书馆座位预约系统</div>
		</div>
		<div id="rinfo">
		
		<a href="<%=path%>/admin/index.jsp"  >首页</a> &nbsp;&nbsp;&nbsp;
		
			当前用户：
			<span>
			 <c:if test="${sessionScope.usertype==0}">
			 ${sessionScope.cuser.uname}
			    【管理员】
			 </c:if>
			  <c:if test="${sessionScope.usertype==1}">
			   ${sessionScope.cuser.sno} &nbsp;  ${sessionScope.cuser.name}
			    【学生】
			 </c:if>
			 
			   <c:if test="${sessionScope.usertype==2}">
			   ${sessionScope.cuser.sno} &nbsp;  ${sessionScope.cuser.name}
			    【老师】
			 </c:if>
			 
			</span>
			<span id="exit">
			 	<a href="#" onclick="exit();">退出</a> 
			</span>
		</div>
	</div>
	</header>

</body>
 <script type="text/javascript">
    function exit(){
    	window.top.location.href = '<%=path%>/tadmin_loginout.action';
    }
 </script>
</html>