<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
﻿
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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
    <!--define-->
    <link rel="stylesheet" href="assets/css/diy.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <title>试用</title>
</head>
<body>
<!-- ******HEADER****** -->
<header id="header" class="header navbar-fixed-top">
    <div class="container">
        <h1 class="logo">
            <img src="${pageContext.request.contextPath}/static/assets/images/logo/logo.png">
        </h1><!--//logo-->
        <nav class="main-nav navbar-right" role="navigation">
            <div class="navbar-header">
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button><!--//nav-toggle-->
            </div><!--//navbar-header-->
            <div id="navbar-collapse" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class=" nav-item"><a href="${pageContext.request.contextPath}/passport/index">主&nbsp&nbsp页</a></li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-delay="0" data-close-others="false" href="${pageContext.request.contextPath}/passport/introduction">介&nbsp&nbsp绍<i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/passport/introduction">产品介绍</a></li>
                            <li><a href="${pageContext.request.contextPath}/passport/introduction">方案介绍</a></li>
                            <li><a href="${pageContext.request.contextPath}/passport/introduction">团队介绍</a></li>
                        </ul>
                    </li><!--//dropdown-->
                    <li class="nav-item"><a href="#features.html">服务厂商</a></li>
                    <li class="active nav-item">
                        <c:if test="${not empty user}"><a href=" ${pageContext.request.contextPath}/passport/probation">试&nbsp&nbsp用</a></c:if>
                        <c:if test="${empty user}"><a href=" ${pageContext.request.contextPath}/passport/login">试&nbsp&nbsp用</a></c:if>
                    </li>
                    <li class="nav-item"><a href="#pricing.html">支&nbsp&nbsp持</a></li>
                    <c:if test="${empty user}">
                        <li class="nav-item nav-item-cta last"><a class="btn btn-cta btn-cta-secondary btn-link"
                                                                  href="${pageContext.request.contextPath}/passport/login">登&nbsp&nbsp录</a></li>
                        <li>&nbsp&nbsp</li>
                        <li class="nav-item nav-item-cta last"><a class="btn btn-cta btn-cta-secondary btn-link"
                                                                  href="${pageContext.request.contextPath}/passport/signup">注&nbsp&nbsp册</a></li>
                    </c:if>
                    <c:if test="${not empty user}">
                        <li class="nav-item nav-item-cta last"><a class="btn btn-cta btn-cta-secondary btn-link"
                                                                  href="profile.jsp">${user.username}</a></li>
                        <li>&nbsp</li>
                        <li class="nav-item nav-item-cta last"><a class="btn btn-cta btn-cta-secondary btn-link"
                                                                  href="${pageContext.request.contextPath}/user/logout">退&nbsp&nbsp出</a></li>
                    </c:if>
                </ul><!--//nav-->
            </div><!--//navabr-collapse-->
        </nav><!--//main-nav-->
    </div><!--//container-->
</header><!--//header-->

<div class="bg-slider-wrapper" style="height: 80px">
</div><!--//bg-slider-wrapper-->

<div class="sections-wrapper" style="margin-top: 100px">
    <form action="${pageContext.request.contextPath}/file/upload" method="post" enctype="multipart/form-data">
        文件:<input type="file" name="file"/>
        <input type="submit" value="上传"/>
    </form>
</div>

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