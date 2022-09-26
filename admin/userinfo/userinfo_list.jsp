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
    <form action="<%=path%>/userinfo_list.action?utype=${utype}"   class="form-inline" method="post">
    <div class="panel panel-default">
      <c:if test="${utype==1}">
        <div class="panel-heading">学生信息列表</div>
        </c:if>
          <c:if test="${utype==2}">
        <div class="panel-heading">老师信息列表</div>
        </c:if>
                 <div class="panel-body">
            <div class="pull-left">
			              <div class="form-group qinfo">
			                <c:if test="${utype==1}">
                             <label>学号：</label>
                             </c:if>
                             
                              <c:if test="${utype==2}">
                             <label>工号：</label>
                             </c:if>
                             
                             <input name="sno" value="${sno}" class="form-control">
                         </div>
                    				                                          
                    				                                              
                    				                <button type="submit" class="btn btn-default">查询</button>
            </div>
        </div>
         <pg:pager url="userinfo_list.action" items="${itemSize}" maxPageItems="${pageItem}" maxIndexPages="${pageItem}" isOffset="${true}" export="offset,currentPageNumber=pageNumber" scope="request">
                     <pg:param name="sno" value="${sno}"/>
                 
                    <pg:param name="utype" value="${utype}"/>
                  <div class="table-responsive">
            <table class="table table-striped table-hover" style="text-align: center;">
                <thead>
                <tr >
                 <c:if test="${utype==1}">
					                        <td>学号</td>
					                        </c:if>
					                         <c:if test="${utype==2}">
					                        <td>工号</td>
					                        </c:if>
					                       
					                        <td>姓名</td>
					                        <td>身份证号</td>
					                        <td>学院</td>
					                        <td>联系电话</td>
					                        
                    <th width="18%">操作</th>
                </tr>
                </thead>
                <tbody>
    <c:forEach items="${list}" var="info">
     <tr>
						                                 <td><a style="color:#000000" href="<%=path%>/userinfo_toView.action?id=${info.id}">${info.sno}</a></td>
                                                                 
                                                                    <td>${info.name}</td>
                                                                       <td>${info.idno}</td>
                                                                    <td>${info.xy}</td>
                                                                    <td>${info.tel}</td>
                                                                  
                                                                    
                            						        <td>
            <a href="<%=path%>/userinfo_toUpdate.action?id=${info.id}" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-edit"></span>编辑</a>
            <a href="javascript:void();" onclick="delInfo('${info.id}');"  class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span>删除</a>
            <!--a href="#" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-eye-open"></span> 查看</a-->
        </td>
    </tr>
                   </c:forEach>
                </tbody>
            </table>
            <div class="panel-footer clearfix">
                <div class="pull-left">
                    <button type="button"  id="addBtn"  class="btn btn-info">新增</button>
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
        window.location.href = '<%=path%>/userinfo_toAdd.action?utype=${utype}';
   });
});
function delInfo(id){
	 if(confirm("是否确认删除？")){
	 window.location.href = '<%=path%>/userinfo_delete.action?id=' + id;
    }
}
</script>