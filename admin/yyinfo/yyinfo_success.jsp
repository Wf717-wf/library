<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg" %> 
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">  
	<link href="<%=path%>/css/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="<%=path%>/css/left.css" rel="stylesheet" type="text/css">
	<link href="<%=path%>/css/pdmcontent01.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<%=path%>/js/jquery-3.4.1.min.js"></script>
    <script language="javascript" type="text/javascript" src="<%=path%>/js/My97DatePicker/WdatePicker.js"></script>
	<script src="<%=path%>/css/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-pdm.js"></script>
	<title>菜单栏</title>
</head>
<body>
<div class="page-content" align="center">
     
    <div class="panel panel-default" style="width:50%;margin-top:10%;"  >
            <div style="font-size: 20px;font-weight: bold;color:red; ">预约成功，请按时间进入场馆，如有变故请及时取消</div>
            <div style="font-size: 18px;width:50%;font-weight: bold; margin-top: 30px;text-align: left;">座位：${zwinfo.name}</div>
            <div style="font-size: 18px;width:50%;font-weight: bold; text-align: left;">日期：${yyinfo.ydate}</div>
            <div style="font-size: 18px;width:50%;font-weight: bold; text-align: left;">时段：${yyinfo.cdate}</div>
            <div class="panel-footer clearfix">
                <div align="center">
                    <button type="button"  id="addBtn"  class="btn btn-info">确定</button>
                </div>
            </div>
        </div>
       
    </div>
    
</div>
</body>
</html>
<script type="text/javascript">
$(document).ready(function(){
   $("#addBtn").click(function(){
        window.location.href = '<%=path%>/zwinfo_query.action';
   });
});
 
</script>