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
	       <script type='text/javascript' src='<%=path %>/js/layer/layer.js'></script>
	<title>菜单栏</title>
</head>
<body style="overflow:scroll;overflow-x:hidden">
<div class="page-content">
    <form action="<%=path%>/zwinfo_query.action"   class="form-inline" method="post">
    <div class="panel panel-default">
        <div class="panel-heading">座位预约</div>
                 <div class="panel-body">
            <div class="pull-left">
			              <div class="form-group qinfo">
                            <label>预约时间：</label>
                            <input name="ydate"  id="ydate" value="${ydate}" readonly="readonly" onClick="WdatePicker({minDate:'%y-%M-%d',maxDate:'%y-%M-{%d+1}'})"  class="form-control">
                        </div>
                        
                        
                         <label>预约时段：</label>
                                                    <select id="cdate" name="cdate" class="form-control">
                                                                    <option value="">全部</option>
                                                                    <option <c:if test="${cdate=='08:00-11:30'}">selected</c:if> value="08:00-11:30">08:00-11:30</option>
                                                                    <option <c:if test="${cdate=='12:00-16:30'}">selected</c:if> value="12:00-16:30">12:00-16:30</option>
                                                                    <option <c:if test="${cdate=='17:00-20:30'}">selected</c:if> value="17:00-20:30">17:00-20:30</option>
                                                            </select>
                <button type="submit" class="btn btn-default">查询</button>
            </div>
            
            
             <div class="pull-right">
			              <div class="form-group qinfo" style="color:red">
                            有任何疑问请联系管理员    ${admin.tel}
                        </div>
                        
                        
       
            </div>
            
        </div>
        
        
        
        
        
            <div class="wrapper-content">
		
	 
		
			<div class="row">
				<c:forEach  var="zwinfo"  items="${list}" varStatus="status">
				  
				<div class="col-sm-3" style="margin-bottom: 30px;">
	                <div class="contact-box">
	                    
	                        <div class="col-sm-12">
	                            <div class="text-center">
	                            
	                               <div class="m-t-xs font-bold" style="font-size:20px;margin-top: 15px;color:red;font-weight: bold;">
	                                    ${zwinfo.name}
	                               </div>
	                               
	                               
										 <c:if test="${zwinfo.flag=='N'}">
	                                 <div   style="margin: 0 auto;background-color: #888888;width:150px;height: 150px;" >
	                                 
	                                 </div>
	                                 </c:if>
	                                 
	                                 
	                                 	 <c:if test="${zwinfo.flag=='Y'}">
	                                 <div   style="margin: 0 auto;background-color: #a0f5a3;width:150px;height: 150px;" >
	                                 
	                                 </div>
	                                 </c:if>
	                                 
	                                <div class="m-t-xs font-bold" style="font-size:20px;margin-top: 15px;"> ${jsinfo.nums}</div>
	                                 <div>
									 
										
										<div style="    margin-top: 20px;">
										 <c:if test="${zwinfo.flag=='Y'}">
										 
										    <a class="btn btn-primary " onclick="yuyue('${zwinfo.id}')"  >预约</a>
							
										
										 </c:if>
										 
										 <c:if test="${zwinfo.flag=='N'}">
											 被预约
										 </c:if>
										 
										 
										</div>
									 
								</div>
	                            </div>
	                        </div>
	                        
	                     
	                     
	                     <div class="clearfix"></div>
	                    
	                </div>
	            </div>
	            </c:forEach>
			</div>
		</div>
		
		
    </div>
    </form>
</div>
</body>
</html>
<script type="text/javascript">
$(document).ready(function(){
   $("#addBtn").click(function(){
        window.location.href = '<%=path%>/lyinfo_toAdd.action';
   });
});
function yuyue(id){
	 if(confirm("是否确定预约？")){
		var ydate = $('#ydate').val();
		if(ydate==null || ydate==''){
			layer.msg('请选择预约日期');
			return;
		}
		var cdate = $('#cdate').val();
		if(cdate==null || cdate==''){
			layer.msg('请选择预约时段');
			return;
		}
	    window.location.href = '<%=path%>/yyinfo_add.action?zid=' + id + "&ydate=" + ydate + "&cdate=" + cdate;
    }
}
</script>