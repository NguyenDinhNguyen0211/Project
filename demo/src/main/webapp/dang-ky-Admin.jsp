<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 04/01/2023
  Time: 11:45 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String message = (String) request.getAttribute("message"); %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Đăng ký</title>
    <link type="text/css" href="admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="admin/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="admin/css/theme.css"  rel="stylesheet">
    <link type="text/css" href="admin/images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>

<div class="navbar navbar-fixed-top">

    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                <i class="icon-reorder shaded"></i>
            </a>
            <a class="brand" href=""> Admin
            </a>
            <div class="nav-collapse collapse navbar-inverse-collapse">
                <ul class="nav pull-right">
                    <li><a href="Admin-dang-nhap.jsp">
                        Đăng nhập
                    </a></li>
                    <li><a href="quen-mat-khau-Admin.jsp">
                        Quên mật khẩu?
                    </a></li>
                </ul>
            </div><!-- /.nav-collapse -->
        </div>
    </div><!-- /navbar-inner -->
</div><!-- /navbar -->
<div class="wrapper">

    <div class="container">
        <%
            if (message != null) {
        %>
        <jsp:include page="error.jsp"></jsp:include>
        <%
            }
        %>
        <div class="row">
            <div class="module module-login span4 offset4">
                <form action="SignUp" method="post" class="form-vertical">
                    <div class="module-head">
                        <h3>Đăng ký</h3>
                    </div>
                    <div class="module-body">
                        <div class="control-group">
                            <div class="controls row-fluid">
                                <input class="span12" type="text" id="username" name="user_name" placeholder="Tên đăng nhập">
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls row-fluid">
                                <input class="span12" type="password" id="password"  name="password" placeholder="Mật khẩu">
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls row-fluid">
                                <input class="span12" type="password" id="password-again"  name="password-again" placeholder="Nhập lại mật khẩu">
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls row-fluid">
                                <input class="span12" type="email" id="email"  name="email" placeholder="Email">
                            </div>
                        </div>
                    </div>
                    <div class="module-foot">
                        <div class="control-group">
                            <div class="controls clearfix">
                                <button type="submit" class="btn btn-primary pull-right"> Đăng ký</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div><!--/.wrapper-->

<div class="footer">
</div>
<script src="/admin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="/admin/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="/admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
