<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>修改</title>
	<link href="<%=path%>/css/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<script src="<%=path%>/js/jquery-3.4.1.min.js"></script>
	<script src="<%=path%>/css/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=path%>/js/jquery.validate.min.js"></script>
	<script src="<%=path%>/js/jquery.validate.extend.js"></script>
    <script src="<%=path%>/js/jquery.validate.method.js"></script>
            <script language="javascript" type="text/javascript" src="<%=path%>/js/My97DatePicker/WdatePicker.js"></script>
    <link href="<%=path%>/css/pdmcontent01.css" rel="stylesheet">
</head>
<body>
<div class="page-content">
    <div class="panel panel-default">
        <div class="panel-heading">修改</div>
        <div class="panel-body">
            <form action="<%=path%>/userinfo_update.action" method="post" id="addForm">
                 <input name="id" type="hidden" value="${userinfo.id}"/>
                   <input name="utype" type="hidden" value="${userinfo.utype}"/>
                    <input name="cdnums" type="hidden" value="${userinfo.cdnums}"/>
                <div class="container-fluid">
					                        <div class="row rowmargin">
                            <div class="col-sm-7">
                                <div class="form-group">
                                                                     	  <c:if test="${userinfo.utype==1}">
                                <label class="col-sm-3 control-label"><font color="red">*</font>学号 </label>
                             </c:if>
                             
                              <c:if test="${userinfo.utype==2}">
                               <label class="col-sm-3 control-label"><font color="red">*</font>工号 </label>
                             </c:if>
                                                                        <div class="col-sm-9 form-inline"  >
                                            <input id="sno" name="sno" readonly="readonly" size="35" class="form-control"   type="text" value="${userinfo.sno}"  tip="请输入学号/工号" />
                                    </div>
                                </div>
                            </div>
                        </div>
					                        <div class="row rowmargin">
                            <div class="col-sm-7">
                                <div class="form-group">
                                                                            <label class="col-sm-3 control-label"><font color="red">*</font>密码 </label>
                                                                        <div class="col-sm-9 form-inline"  >
                                            <input id="upwd" name="upwd" size="35" class="form-control"   type="password" value="${userinfo.upwd}"  tip="请输入密码" />
                                    </div>
                                </div>
                            </div>
                        </div>
					                        <div class="row rowmargin">
                            <div class="col-sm-7">
                                <div class="form-group">
                                                                            <label class="col-sm-3 control-label"><font color="red">*</font>姓名 </label>
                                                                        <div class="col-sm-9 form-inline"  >
                                            <input id="name" name="name" size="35" class="form-control"   type="text" value="${userinfo.name}"  tip="请输入姓名" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                          <div class="row rowmargin">
                            <div class="col-sm-7">
                                <div class="form-group">
                                                                            <label class="col-sm-3 control-label"><font color="red">*</font>身份证号 </label>
                                                                        <div class="col-sm-9 form-inline"  >
                                            <input id="idno" name="idno" size="35" class="form-control"   type="text" value="${userinfo.idno}"  tip="请输入身份证号" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        
					                        <div class="row rowmargin">
                            <div class="col-sm-7">
                                <div class="form-group">
                                                                            <label class="col-sm-3 control-label"><font color="red">*</font>学院 </label>
                                                                        <div class="col-sm-9 form-inline"  >
                                            <input id="xy" name="xy" size="35" class="form-control"   type="text" value="${userinfo.xy}"  tip="请输入学院" />
                                    </div>
                                </div>
                            </div>
                        </div>
					                        <div class="row rowmargin">
                            <div class="col-sm-7">
                                <div class="form-group">
                                                                            <label class="col-sm-3 control-label"><font color="red">*</font>联系电话 </label>
                                                                        <div class="col-sm-9 form-inline"  >
                                            <input id="tel" name="tel" size="35" class="form-control"   type="text" value="${userinfo.tel}"  tip="请输入联系电话" />
                                    </div>
                                </div>
                            </div>
                        </div>
					                       
					                      
                    <div class="row">
                      <div class="col-sm-2">
						</div>
                       <div class="col-sm-4" style="margin-left: 20px;">
                         <button type="submit" class="btn btn-primary" style="margin-top: 40px;">提交</button>
                         <button type="button" id="rebackBtn" class="btn btn-default" style="margin-top: 40px;margin-left: 20px;">返回</button>
						</div>
					</div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
$(document).ready(function(){
	$("#rebackBtn").click(function(){
	    window.history.go(-1); 
	});
    $("#addForm").validate({
        submitHandler:function(form){//验证通过后的执行方法
                        form.submit();
        },
        rules: {
                    sno:{
                          required:true,
                                   
                    },
                    idno:{
                        required:true,
                        idno:true
        },
                                upwd:{
                                    required:true,
                    },
                                name:{
                                    required:true,
                    },
                                xy:{
                                    required:true,
                    },
                                tel:{
                                    required:true,
                                    telphone:true,
                    },
                                    },
    messages:{
                                    sno:{
                                                            required:'学号/工号不能为空',
                            },
                            idno:{
                                required:'身份证号不能为空',
                                idno:'身份证号格式错误',
                           },
                                                upwd:{
                                                            required:'密码不能为空',
                            },
                                                name:{
                                                            required:'姓名不能为空',
                            },
                                                xy:{
                                                            required:'学院不能为空',
                            },
                                                tel:{
                                                            required:'联系电话不能为空',
                                                            telphone:'联系电话格式错误',
                            },
    }
});
});
    </script>
</html>