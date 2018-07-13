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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/diy.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <title>介绍</title>
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
                    <li class="active nav-item dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-delay="0" data-close-others="false" href="${pageContext.request.contextPath}/passport/introduction">介&nbsp&nbsp绍<i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/passport/introduction">产品介绍</a></li>
                            <li><a href="${pageContext.request.contextPath}/passport/introduction">方案介绍</a></li>
                            <li><a href="${pageContext.request.contextPath}/passport/introduction">团队介绍</a></li>
                        </ul>
                    </li><!--//dropdown-->
                    <li class="nav-item"><a href="#features.html">服务厂商</a></li>
                    <li class="nav-item">
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
                                                                  href="${pageContext.request.contextPath}/passport/logout">退&nbsp&nbsp出</a></li>
                    </c:if>
                </ul><!--//nav-->
            </div><!--//navabr-collapse-->
        </nav><!--//main-nav-->
    </div><!--//container-->
</header><!--//header-->

<div class="bg-slider-wrapper" style="height: 80px">
</div><!--//bg-slider-wrapper-->

<div class="sections-wrapper" style="margin-top: 100px">
    <section class="features-tabbed section">
        <div class="container">
            <div class="row">
                <div class=" text-center col-md-12 col-sm-12 col-xs-12 ">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs text-center" role="tablist">
                        <li class="active"><a href="#feature-1" role="tab" data-toggle="tab"><i class="fa fa-product-hunt"></i><br /><span class="hidden-sm hidden-xs">产品介绍</span></a></li>
                        <li><a href="#feature-2" role="tab" data-toggle="tab"><i class="fa fa-tachometer"></i><br /><span class="hidden-sm hidden-xs">方案介绍</span></a></li>
                        <li><a href="#feature-3" role="tab" data-toggle="tab"><i class="fa fa-photo"></i><br /><span class="hidden-sm hidden-xs">套餐介绍</span></a></li>
                        <li class="last"><a href="#feature-4" role="tab" data-toggle="tab"><i class="fa fa-users"></i><br /><span class="hidden-sm hidden-xs">团队介绍</span></a></li>
                    </ul><!--//nav-tabs-->

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="feature-1">
                            <h3 class="title sr-only">产品介绍</h3>
                          <%--  <figure class="figure text-center">
                                <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/introduction/screenshot-1.png" alt="产品图" />
                                <figcaption class="figure-caption">(产品图)</figcaption>
                            </figure>
                            <div class="desc text-left">
                                <p>文字介绍区</p>
                            </div><!--//desc-->--%>
                            <section id="why" class="section why">
                                <div class="container">
                                    <h2 class="title text-center">为什么要选择这样的处理技术？</h2>
                                    <p class="intro text-center">六个无法拒绝的理由</p>
                                    <div class="row item">
                                        <div class="content col-xs-12 col-md-7">
                                            <h2 class="title">降低重量而不是质量</h2>
                                            <div class="desc text-justify">
                                                <p>
                                                    <img src="${pageContext.request.contextPath}/static/assets/images/icon/quarity.png">&nbsp;
                                                    通过我们的优化算法，你得到的图片质量没有受到损害，却获得了尽可能小的文件大小。
                                                    虽然可以将任何图像缩小到其原始大小的一小部分，但这种方法往往会导致严重的视觉退化。
                                                    Pngbits的基于深度学习的优化内核提供了行业领先的压缩方案，其结果每次必不会让你失望。
                                                </p>
                                            </div>
                                        </div><!--//content-->
                                        <figure class="figure col-md-offset-1 col-sm-offset-0 col-xs-offset-0 col-xs-12 col-md-4">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/figures/figure-1.png" alt="" />
                                        </figure>
                                    </div><!--//item-->

                                    <div class="row item">
                                        <div class="content col-md-push-5 col-sm-push-0 col-xs-push-0 col-xs-12 col-md-7">
                                            <h3 class="title">把艰苦的工作交给我们</h3>
                                            <div class="desc text-justify">
                                                <p>
                                                    <img src="${pageContext.request.contextPath}/static/assets/images/icon/work.png">&nbsp;
                                                    所有的优化都是由我们强大的服务器完成的，而不需要使用你自己的资源。
                                                    我们最先进的服务器集群起始目标只有一个，那就是以最快的速度优化你的图片。
                                                    你只要全心关注于你自己业务，而我们则是竭力让你的图片变得更快更好——每一张图片都有提升。
                                                </p>

                                            </div>
                                        </div><!--//content-->
                                        <figure class="figure col-md-pull-7 col-sm-pull-0 col-xs-pull-0 col-xs-12 col-md-4">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/figures/figure-2.png" alt="" />
                                        </figure>
                                    </div><!--//item-->

                                    <div class="row item ">
                                        <div class="content col-xs-12 col-md-7">
                                            <h2 class="title">让你的应用程序和网站加速</h2>
                                            <div class="desc text-justify">
                                                <p>
                                                    <img src="${pageContext.request.contextPath}/static/assets/images/icon/app.png">&nbsp;
                                                    应用程序和网站的速度是用户体验的重要指标。更快的网站会让你的用户更快乐。
                                                    相信我们，快乐的用户会购买更多的产品。
                                                    一个更快的网站会让你得到更多的流量，并获得更多的领先优势——所有这些都将有助于你的事业成功。
                                                    如果你的应用程序或网站是图片丰富的，你需要格外警惕。这些都是我们可以帮到你的。
                                                </p>
                                            </div>
                                        </div><!--//content-->
                                        <figure class="figure col-md-offset-1 col-sm-offset-0 col-xs-offset-0 col-xs-12 col-md-4">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/figures/figure-3.png" alt="" />
                                        </figure>
                                    </div><!--//item-->

                                    <div class="row item">
                                        <div class="content col-md-push-5 col-sm-push-0 col-xs-push-0 col-xs-12 col-md-7">
                                            <h2 class="title">手机和平板电脑的优化</h2>
                                            <div class="desc text-justify">
                                                <p>
                                                    <img src="${pageContext.request.contextPath}/static/assets/images/icon/computer.png">&nbsp;
                                                    随着越来越多的人通过平板电脑或移动设备访问你的内容，减少内容到屏幕端的时间应该是你最优先考虑的事情之一。
                                                    不要用超大、未优化的图片来浪费你的用户宝贵的带宽。
                                                    我们可以调整图片大小属性，减少额外不必要的图片重量，为各类移动设备生成优化的图片集。
                                                    最为关键的是，你的用户不会注意到任何不同。
                                                </p>
                                            </div>
                                        </div><!--//content-->
                                        <figure class="figure col-md-pull-7 col-sm-pull-0 col-xs-pull-0 col-xs-12 col-md-4">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/figures/figure-4.png" alt="" />
                                        </figure>
                                    </div><!--//item-->
                                    <div class="row item ">
                                        <div class="content col-xs-12 col-md-7">
                                            <h2 class="title">降低企业运营成本</h2>
                                            <div class="desc text-justify">
                                                <p>
                                                    <img src="${pageContext.request.contextPath}/static/assets/images/icon/enterprise.png">&nbsp;
                                                    我们相信你在带宽和存储上花了很多钱，虽然我们不知道具体有多少，但是我们估计你花的肯定比你需要的多。
                                                    使用Pngbits可以把这些费用削减到一半以上（通常更多）。
                                                    较以往相比，你的图片占据的空间将至少减小一半，你的带宽也得到大大的节省。
                                                </p>
                                            </div>
                                        </div><!--//content-->
                                        <figure class="figure col-md-offset-1 col-sm-offset-0 col-xs-offset-0 col-xs-12 col-md-4">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/figures/figure-5.png" alt="" />
                                        </figure>
                                    </div><!--//item-->
                                    <div class="row item">
                                        <div class="content col-md-push-5 col-sm-push-0 col-xs-push-0 col-xs-12 col-md-7">
                                            <h2 class="title">搜索排名有效提高</h2>
                                            <div class="desc text-justify">
                                                <p>
                                                    <img src="${pageContext.request.contextPath}/static/assets/images/icon/rank.png">&nbsp;
                                                    各大搜索引擎将站点的加载速度作为衡量其相对于其他可比站点的排名的重要标准。
                                                    换言之，更快的加载站点被视为比其较慢的同行更有利。
                                                    Pngbits可以通过显著加快页面的加载时间来帮助您提高搜索排名。
                                                </p>
                                            </div>
                                        </div><!--//content-->
                                        <figure class="figure col-md-pull-7 col-sm-pull-0 col-xs-pull-0 col-xs-12 col-md-4">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/figures/figure-6.png" alt="" />
                                        </figure>
                                    </div><!--//item-->
                                    <div class="feature-lead text-center">
                                        <h4 class="title">想了解更多?</h4>
                                        <p>  <c:if test="${not empty user}"><a class="btn btn-cta btn-cta-secondary" href=" ${pageContext.request.contextPath}/passport/probation">开始试用</a></c:if>
                                            <c:if test="${empty user}"><a class="btn btn-cta btn-cta-secondary" href=" ${pageContext.request.contextPath}/passport/login">开始试用</a></c:if>
                                        </p>
                                    </div>
                                </div><!--//container-->
                            </section><!--//why-->

                        </div><!--//tab-pane-->
                        <div class="tab-pane" id="feature-2">
                            <h3 class="title sr-only">方案介绍</h3>
                           <%-- <figure class="figure text-center">
                                <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/introduction/screenshot-2.png" alt="方案介绍图" />
                                <figcaption class="figure-caption">(方案介绍)</figcaption>
                            </figure>--%>
                            <section id="why" class="section why">
                                <div class="container">
                                    <h2 class="title text-center">为什么要选择这样的处理技术？</h2>
                                    <p class="intro text-center">六个无法拒绝的理由</p>
                                    <div class="row item">
                                        <div class="content col-xs-12 col-md-7">
                                            <h2 class="title">降低重量而不是质量</h2>
                                            <div class="desc text-justify">
                                                <p>
                                                    <img src="${pageContext.request.contextPath}/static/assets/images/icon/quarity.png">&nbsp;
                                                    通过我们的优化算法，你得到的图片质量没有受到损害，却获得了尽可能小的文件大小。
                                                    虽然可以将任何图像缩小到其原始大小的一小部分，但这种方法往往会导致严重的视觉退化。
                                                    Pngbits的基于深度学习的优化内核提供了行业领先的压缩方案，其结果每次必不会让你失望。
                                                </p>
                                            </div>
                                        </div><!--//content-->
                                        <figure class="figure col-md-offset-1 col-sm-offset-0 col-xs-offset-0 col-xs-12 col-md-4">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/figures/figure-1.png" alt="" />
                                        </figure>
                                    </div><!--//item-->

                                    <div class="row item">
                                        <div class="content col-md-push-5 col-sm-push-0 col-xs-push-0 col-xs-12 col-md-7">
                                            <h3 class="title">把艰苦的工作交给我们</h3>
                                            <div class="desc text-justify">
                                                <p>
                                                    <img src="${pageContext.request.contextPath}/static/assets/images/icon/work.png">&nbsp;
                                                    所有的优化都是由我们强大的服务器完成的，而不需要使用你自己的资源。
                                                    我们最先进的服务器集群起始目标只有一个，那就是以最快的速度优化你的图片。
                                                    你只要全心关注于你自己业务，而我们则是竭力让你的图片变得更快更好——每一张图片都有提升。
                                                </p>

                                            </div>
                                        </div><!--//content-->
                                        <figure class="figure col-md-pull-7 col-sm-pull-0 col-xs-pull-0 col-xs-12 col-md-4">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/figures/figure-2.png" alt="" />
                                        </figure>
                                    </div><!--//item-->

                                    <div class="row item ">
                                        <div class="content col-xs-12 col-md-7">
                                            <h2 class="title">让你的应用程序和网站加速</h2>
                                            <div class="desc text-justify">
                                                <p>
                                                    <img src="${pageContext.request.contextPath}/static/assets/images/icon/app.png">&nbsp;
                                                    应用程序和网站的速度是用户体验的重要指标。更快的网站会让你的用户更快乐。
                                                    相信我们，快乐的用户会购买更多的产品。
                                                    一个更快的网站会让你得到更多的流量，并获得更多的领先优势——所有这些都将有助于你的事业成功。
                                                    如果你的应用程序或网站是图片丰富的，你需要格外警惕。这些都是我们可以帮到你的。
                                                </p>
                                            </div>
                                        </div><!--//content-->
                                        <figure class="figure col-md-offset-1 col-sm-offset-0 col-xs-offset-0 col-xs-12 col-md-4">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/figures/figure-3.png" alt="" />
                                        </figure>
                                    </div><!--//item-->

                                    <div class="row item">
                                        <div class="content col-md-push-5 col-sm-push-0 col-xs-push-0 col-xs-12 col-md-7">
                                            <h2 class="title">手机和平板电脑的优化</h2>
                                            <div class="desc text-justify">
                                                <p>
                                                    <img src="${pageContext.request.contextPath}/static/assets/images/icon/computer.png">&nbsp;
                                                    随着越来越多的人通过平板电脑或移动设备访问你的内容，减少内容到屏幕端的时间应该是你最优先考虑的事情之一。
                                                    不要用超大、未优化的图片来浪费你的用户宝贵的带宽。
                                                    我们可以调整图片大小属性，减少额外不必要的图片重量，为各类移动设备生成优化的图片集。
                                                    最为关键的是，你的用户不会注意到任何不同。
                                                </p>
                                            </div>
                                        </div><!--//content-->
                                        <figure class="figure col-md-pull-7 col-sm-pull-0 col-xs-pull-0 col-xs-12 col-md-4">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/figures/figure-4.png" alt="" />
                                        </figure>
                                    </div><!--//item-->
                                    <div class="row item ">
                                        <div class="content col-xs-12 col-md-7">
                                            <h2 class="title">降低企业运营成本</h2>
                                            <div class="desc text-justify">
                                                <p>
                                                    <img src="${pageContext.request.contextPath}/static/assets/images/icon/enterprise.png">&nbsp;
                                                    我们相信你在带宽和存储上花了很多钱，虽然我们不知道具体有多少，但是我们估计你花的肯定比你需要的多。
                                                    使用Pngbits可以把这些费用削减到一半以上（通常更多）。
                                                    较以往相比，你的图片占据的空间将至少减小一半，你的带宽也得到大大的节省。
                                                </p>
                                            </div>
                                        </div><!--//content-->
                                        <figure class="figure col-md-offset-1 col-sm-offset-0 col-xs-offset-0 col-xs-12 col-md-4">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/figures/figure-5.png" alt="" />
                                        </figure>
                                    </div><!--//item-->
                                    <div class="row item">
                                        <div class="content col-md-push-5 col-sm-push-0 col-xs-push-0 col-xs-12 col-md-7">
                                            <h2 class="title">搜索排名有效提高</h2>
                                            <div class="desc text-justify">
                                                <p>
                                                    <img src="${pageContext.request.contextPath}/static/assets/images/icon/rank.png">&nbsp;
                                                    各大搜索引擎将站点的加载速度作为衡量其相对于其他可比站点的排名的重要标准。
                                                    换言之，更快的加载站点被视为比其较慢的同行更有利。
                                                    Pngbits可以通过显著加快页面的加载时间来帮助您提高搜索排名。
                                                </p>
                                            </div>
                                        </div><!--//content-->
                                        <figure class="figure col-md-pull-7 col-sm-pull-0 col-xs-pull-0 col-xs-12 col-md-4">
                                            <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/figures/figure-6.png" alt="" />
                                        </figure>
                                    </div><!--//item-->
                                    <div class="feature-lead text-center">
                                        <h4 class="title">想了解更多?</h4>
                                        <p>  <c:if test="${not empty user}"><a class="btn btn-cta btn-cta-secondary" href=" ${pageContext.request.contextPath}/passport/probation">开始试用</a></c:if>
                                            <c:if test="${empty user}"><a class="btn btn-cta btn-cta-secondary" href=" ${pageContext.request.contextPath}/passport/login">开始试用</a></c:if>
                                        </p>
                                    </div>
                                </div><!--//container-->
                            </section><!--//why-->

                      <%--      <div class="desc text-left">
                                <p>方案介绍</p>

                            </div><!--//desc-->--%>
                        </div><!--//tab-pane-->
                        <div class="tab-pane" id="feature-3">
                            <h3 class="title sr-only">Feature Three</h3>
                            <figure class="figure text-center">
                                <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/introduction/screenshot-3.png" alt="" />
                                <figcaption class="figure-caption">(套餐资费)</figcaption>
                            </figure>

                        </div><!--//tab-pane-->
                        <div class="tab-pane" id="feature-4">
                            <h3 class="title sr-only">团队介绍</h3>
                            <figure class="figure text-center">
                                <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/introduction/screenshot-2.png" alt="" />
                                <figcaption class="figure-caption">(团队介绍)</figcaption>
                            </figure>
                        </div><!--//tab-pane-->
                    </div><!--//tab-content-->
                </div><!--//col-md-x-->
            </div><!--//row-->
        </div><!--//container-->
    </section><!--//features-tabbed-->
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