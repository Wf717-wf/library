<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<%=path%>/css/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="<%=path%>/css/left.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=path%>/js/jquery-3.4.1.min.js"></script>
<script src="<%=path%>/css/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery-pdm.js"></script>
<title>菜单栏</title>
</head>
<body>


	<!--main-->
	<div class="container-fluid mybody">
		<div class="main-wapper">
			<!--菜单-->
			<div id="siderbar" class="siderbar-wapper">

				<div class="panel-group menu" id="accordion" role="tablist" aria-multiselectable="true">

					<div class="panel panel-inner">
					
				   <c:if test="${sessionScope.usertype==0}">
						<div class="panel-heading panel-heading-self" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									<span class="glyphicon glyphicon-list-alt"></span>
									系统管理
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="list-group list-group-self">
								<a href="<%=path%>/tadmin_list.action" target="appiframe" class="list-group-item">
									<span class="glyphicon glyphicon-menu-right"></span>
								    管理员信息管理
								</a>
								<a href="<%=path%>/admin/tadmin/tadmin_upwd.jsp" target="appiframe" class="list-group-item">
									<span class="glyphicon glyphicon-menu-right"></span>
									修改密码
								</a>

							</div>
						</div>
					</div>
					
					<div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab" id="headingSeven11">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven11" aria-expanded="false" aria-controls="collapseSeven11">
									<span class="glyphicon glyphicon-th-large"></span>
									学生信息管理
								</a>
							</h4>
						</div>
						<div id="collapseSeven11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven11">
							<div class="list-group list-group-self">
								<a href="<%=path%>/userinfo_list.action?utype=1" target="appiframe" class="list-group-item">
									<span class="glyphicon glyphicon-menu-right"></span>
									学生信息管理
								</a>
							</div>
						</div>
					</div>
                   <div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab" id="headingSeven31">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven31" aria-expanded="false" aria-controls="collapseSeven31">
									<span class="glyphicon glyphicon-th-large"></span>
								  老师管理
								</a>
							</h4>
						</div>
						<div id="collapseSeven31" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven31">
							<div class="list-group list-group-self">
								<a href="<%=path%>/userinfo_list.action?utype=2" target="appiframe" class="list-group-item">
									<span class="glyphicon glyphicon-menu-right"></span>
									 老师管理
								</a>
							</div>
						</div>
					</div>
					
					
					 <div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab" id="headingSeven314">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven314" aria-expanded="false" aria-controls="collapseSeven314">
									<span class="glyphicon glyphicon-th-large"></span>
								座位管理
								</a>
							</h4>
						</div>
						<div id="collapseSeven314" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven314">
							<div class="list-group list-group-self">
								<a href="<%=path%>/zwinfo_list.action" target="appiframe" class="list-group-item">
									<span class="glyphicon glyphicon-menu-right"></span>
								   座位管理
								</a>
							</div>
						</div>
					</div>
				 

				 
					
					
					<div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab" id="headingSeven111">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven111" aria-expanded="false" aria-controls="collapseSeven111">
									<span class="glyphicon glyphicon-th-large"></span>
								   预约管理
								</a>
							</h4>
						</div>
						<div id="collapseSeven111" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven111">
							<div class="list-group list-group-self">
								<a href="<%=path%>/yyinfo_list.action" target="appiframe" class="list-group-item">
									<span class="glyphicon glyphicon-menu-right"></span>
									 预约管理
								</a>
							</div>
						</div>
					</div>
					
					
					
					 
					
					
					 
					
					
				 
					</c:if>
 
                     <c:if test="${sessionScope.usertype==1 || sessionScope.usertype==2}">
						<div class="panel-heading panel-heading-self" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									<span class="glyphicon glyphicon-list-alt"></span>
									个人资料
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="list-group list-group-self">
								<a href="<%=path%>/userinfo_toUpdateInfo.action?id=${sessionScope.cuser.id}" target="appiframe" class="list-group-item">
									<span class="glyphicon glyphicon-menu-right"></span>
									个人资料
								</a>
 	                            
							</div>
						</div>
					</div>
                   <div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab" id="headingSeven31">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven31" aria-expanded="false" aria-controls="collapseSeven31">
									<span class="glyphicon glyphicon-th-large"></span>
								   座位预约 
								</a>
							</h4>
						</div>
						<div id="collapseSeven31" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven31">
							<div class="list-group list-group-self">
								<a href="<%=path%>/zwinfo_query.action" target="appiframe" class="list-group-item">
									<span class="glyphicon glyphicon-menu-right"></span>
							                座位预约 
								</a>
							</div>
						</div>
					</div>
					
				 
				 
					
					 <div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab" id="headingSeven18">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven18" aria-expanded="false" aria-controls="collapseSeven18">
									<span class="glyphicon glyphicon-th-large"></span>
								 我的预约 
								</a>
							</h4>
						</div>
						<div id="collapseSeven18" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven18">
							<div class="list-group list-group-self">
								<a href="<%=path%>/yyinfo_list.action" target="appiframe" class="list-group-item">
									<span class="glyphicon glyphicon-menu-right"></span>
									 我的预约 
								</a>
							</div>
						</div>
					</div>

				 
				 
				 
					
				</c:if>  

				</div>

			</div>
			<!--菜单-->
			<!--内容-->
			<div id="content" class="main-content">
			
			
			  <c:if test="${sessionScope.usertype==0}">
				<iframe src="<%=path%>/yyinfo_list.action" style="width: 100%; height: 100%;" id="appiframe" name="appiframe" frameborder="0"></iframe>
			  </c:if> 
			
			 		
			  <c:if test="${sessionScope.usertype!=0}">
				<iframe src="<%=path%>/zwinfo_query.action" style="width: 100%; height: 100%;" id="appiframe" name="appiframe" frameborder="0"></iframe>
			  </c:if> 
			</div>
			<!--内容-->
		</div>

	</div>

	<!--main-->

</body>
</html>