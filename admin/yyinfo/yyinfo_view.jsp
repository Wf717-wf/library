<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>详情</title>
    <link href="<%=path%>/css/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <script src="<%=path%>/js/jquery-3.4.1.min.js"></script>
    <script src="<%=path%>/css/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=path%>/js/jquery.validate.min.js"></script>
    <script src="<%=path%>/js/jquery.validate.extend.js"></script>
    <link href="<%=path%>/css/pdmcontent01.css" rel="stylesheet">
</head>
<body>
<div class="page-content">
    <div class="panel panel-default">
        <div class="panel-heading">详情</div>
        <div class="panel-body">
                <div class="container-fluid">
					                        <div class="row rowmargin">
                            <div class="col-sm-7">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><font color="red">*</font>座位   </label>
                                    <div class="col-sm-9 form-inline" >
                                                    <input id="zid" name="zid" size="35" value="${yyinfo.zwinfoVO.name}" readonly="readonly" class="form-control" type="text"  />
                                    </div>
                                </div>
                            </div>
                        </div>
					                        <div class="row rowmargin">
                            <div class="col-sm-7">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><font color="red">*</font>预约日期   </label>
                                    <div class="col-sm-9 form-inline" >
                                                                                    <input id="ydate" name="ydate" size="35" value="${yyinfo.ydate}" readonly="readonly" class="form-control" type="text"  />
                                    </div>
                                </div>
                            </div>
                        </div>
					                        <div class="row rowmargin">
                            <div class="col-sm-7">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><font color="red">*</font>预约时段   </label>
                                    <div class="col-sm-9 form-inline" >
                                                                                    <input id="cdate" name="cdate" size="35" value="${yyinfo.cdate}" readonly="readonly" class="form-control" type="text"  />
                                    </div>
                                </div>
                            </div>
                        </div>
					                        <div class="row rowmargin">
                            <div class="col-sm-7">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><font color="red">*</font>预约人   </label>
                                    <div class="col-sm-9 form-inline" >
                                                    <input id="uid" name="uid" size="35" value="${yyinfo.userinfoVO.sno}" readonly="readonly" class="form-control" type="text"  />
                                    </div>
                                </div>
                            </div>
                        </div>
					                        <div class="row rowmargin">
                            <div class="col-sm-7">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><font color="red">*</font>状态   </label>
                                    <div class="col-sm-9 form-inline" >
                                                                                    <input id="state" name="state" size="35" value="${yyinfo.state}" readonly="readonly" class="form-control" type="text"  />
                                    </div>
                                </div>
                            </div>
                        </div>
					                        <div class="row rowmargin">
                            <div class="col-sm-7">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><font color="red">*</font>签到时间   </label>
                                    <div class="col-sm-9 form-inline" >
                                                                                    <input id="qddate" name="qddate" size="35" value="${yyinfo.qddate}" readonly="readonly" class="form-control" type="text"  />
                                    </div>
                                </div>
                            </div>
                        </div>
                    <div class="row">
                        <div class="col-sm-2">
                        </div>
                        <div class="col-sm-4" style="margin-left: 20px;">
                            <button type="button" id="rebackBtn" class="btn btn-default" style="margin-top: 40px;margin-left: 20px;">返回</button>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $(document).ready(function(){
        $("#rebackBtn").click(function(){
            window.history.go(-1);
        });
    });
</script>
</html>
