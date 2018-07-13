<%@ page import="static com.sun.org.apache.xml.internal.security.keys.keyresolver.KeyResolver.length" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>﻿
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
﻿
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>登录</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">    
    <link rel="shortcut icon" href="favicon.ico">
    <!-- Global CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Plugins CSS -->    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/plugins/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/plugins/flexslider/flexslider.css">
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/styles.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head> 

<body class="login-page access-page has-full-screen-bg">
    <div class="upper-wrapper">
        <!-- ******HEADER****** -->
        <header class="header">
            <div class="container">
                <!--<h1 class="logo">
                    <a href="login.html"><span class="logo-icon"></span><span class="text">HUMEN</span></a>
                </h1>&lt;!&ndash;//logo&ndash;&gt;-->
            </div><!--//container-->
        </header><!--//header-->

        <!-- ******Login Section****** --> 
        <section class="login-section access-section section">
            <div class="container">
                <div class="row">
                    <div class="form-box col-md-offset-2 col-sm-offset-0 xs-offset-0 col-xs-12 col-md-8">     
                        <div class="form-box-inner">
                            <h2 class="title text-center">欢迎使用 标示科技</h2>
                            <div class="row">
                                <div class="form-container col-xs-12 col-md-6 col-md-offset-3">
                                    <form class="login-form" action="${pageContext.request.contextPath}/user/loginVerify" method="post">
                                        <div class="form-group email">
                                            <label class="sr-only" for="login-email">邮箱或用户名</label>
                                            <input id="login-email" name="username" type="text" class="form-control login-email" placeholder="邮箱或用户名">
                                        </div><!--//form-group-->
                                        <div class="form-group password">
                                            <label class="sr-only" for="login-password">密码</label>
                                            <input id="login-password" type="password" name="password" class="form-control login-password" placeholder="密码">
                                            <br>
                                            <c:if test="${not empty msg}"><p><font color="red" style="font-size: 13px">${msg}</font></p></c:if>
                                            <p class="forgot-password"><a href="reset-password.html">忘记密码?</a></p>
                                        </div><!--//form-group-->
                                        <button type="submit" class="btn btn-block btn-cta-primary">登&nbsp&nbsp&nbsp&nbsp录</button>
                                        <br><p class="text-center"><a class="signup-link" href="${pageContext.request.contextPath}/passport/index">返回主页</a></p>
                                    </form>
                                </div><!--//form-container-->
                            </div><!--//row-->
                        </div><!--//form-box-inner-->
                    </div><!--//form-box-->
                </div><!--//row-->
            </div><!--//container-->
        </section><!--//contact-section-->
    </div><!--//upper-wrapper-->

    <!-- Javascript -->          
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/bootstrap-hover-dropdown.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/back-to-top.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/jquery-placeholder/jquery.placeholder.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/FitVids/jquery.fitvids.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/js/main.js"></script>
</body>
</html> 


