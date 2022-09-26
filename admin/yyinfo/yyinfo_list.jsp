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
<div class="page-content">
    <form action="<%=path%>/yyinfo_list.action"   class="form-inline" method="post">
    <div class="panel panel-default">
        <div class="panel-heading">预约信息列表</div>
                 <div class="panel-body">
            <div class="pull-left">
			                                                
                     				                                            <div class="form-group qinfo">
                            <label>预约日期：</label>
                            <input name="ydateStart" value="${ydateStart}" readonly="readonly" onClick="WdatePicker()"  class="form-control">
                            &nbsp;--&nbsp;<input name="ydateEnd" value="${ydateEnd}" readonly="readonly" onClick="WdatePicker()"  class="form-control">
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
        </div>
         <pg:pager url="yyinfo_list.action" items="${itemSize}" maxPageItems="${pageItem}" maxIndexPages="${pageItem}" isOffset="${true}" export="offset,currentPageNumber=pageNumber" scope="request">
                     <pg:param name="zid" value="${zid}"/>
                    <pg:param name="ydate" value="${ydate}"/>
                    <pg:param name="cdate" value="${cdate}"/>
                    <pg:param name="uid" value="${uid}"/>
                
                  <div class="table-responsive">
            <table class="table table-striped table-hover" style="text-align: center;">
                <thead>
                <tr >
					                        <td>座位</td>
					                        <td>预约日期</td>
					                        <td>预约时段</td>
					                        <td>预约人</td>
					                        <td>状态</td>
					                        <td>签到时间</td>
                    <th width="18%">操作</th>
                </tr>
                </thead>
                <tbody>
    <c:forEach items="${list}" var="info">
     <tr>
						                                 <td> ${info.zwinfoVO.name} </td>
                                                                    <td>${info.ydate}</td>
                                                                    <td>${info.cdate}</td>
                                                                    <td>${info.userinfoVO.sno}</td>
                                                                    <td>${info.state}</td>
                                                                    <td>${info.qddate}</td>
                                <td>
                                  <c:if test="${sessionScope.usertype!=0}">
           <c:if test="${empty info.qddate}">                  
            <a href="<%=path%>/yyinfo_toUpdate.action?id=${info.id}" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-edit"></span>签到</a>
            </c:if>   
            </c:if>
            
            <c:if test="${sessionScope.usertype==0}">
                <a href="javascript:void();" onclick="delInfo('${info.id}');"  class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span>删除</a>
            
            </c:if>
        </td>
    </tr>
                   </c:forEach>
                </tbody>
            </table>
            <div class="panel-footer clearfix">
                <div class="pull-left">
                   
                </div>
                 <nav class="pull-right">
		              <pg:index>
					      <jsp:include page="/common/pagination_tag.jsp" flush="true" />
				     </pg:index>
                </nav>
            </div>
        </div>
         </pg:pager>   
    </div>
    </form>
</div>
</body>
</html>
<script type="text/javascript">
$(document).ready(function(){
   $("#addBtn").click(function(){
        window.location.href = '<%=path%>/yyinfo_toAdd.action';
   });
});
function delInfo(id){
	 if(confirm("是否确认删除？")){
	 window.location.href = '<%=path%>/yyinfo_delete.action?id=' + id;
    }
}
</script>