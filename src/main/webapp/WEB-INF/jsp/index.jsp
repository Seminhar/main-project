<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
﻿
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Home</title>
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
    <!--define-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/diy.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>

    </style>
</head> 

<body class="home-page">   
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
                        <li class="active nav-item"><a href="${pageContext.request.contextPath}/passport/index">主&nbsp&nbsp页</a></li>
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
                                                                      href="${pageContext.request.contextPath}/user/logout">退&nbsp&nbsp出</a></li>
                        </c:if>
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->

    <div class="bg-slider-wrapper">
        <div class="flexslider bg-slider">
            <ul class="slides">
                <li class="slide slide-1"></li>
                <li class="slide slide-2"></li>
                <li class="slide slide-3"></li>
            </ul>
        </div>
    </div><!--//bg-slider-wrapper-->

    <section class="promo section section-on-bg">
        <div class="container text-center">                
            <h1 class="title"><span class="dimensional">Pngbits,让你的图片更</span>&nbsp<span class="spanTitle"> “精”</span>&nbsp<span class="dimensional">彩！</span></h1>
            <!--<p class="intro">简短的介绍语 <br /> 对你的应用会很有帮助哦</p>-->
            <p>

                <c:if test="${not empty user}"><a class="btn btn-cta btn-cta-primary" href="${pageContext.request.contextPath}/passport/probation">免费试用</a></c:if>
                <c:if test="${empty user}"><a class="btn btn-cta btn-cta-primary" href="${pageContext.request.contextPath}/passport/login">免费试用</a></c:if>

            </p>
            <!--<button type="button" class="play-trigger btn-link " data-toggle="modal" data-target="#modal-video" ><i class="fa fa-youtube-play"></i> 短视频介绍</button>-->
        </div><!--//container-->
    </section><!--//promo-->

    <div class="sections-wrapper">
        <!-- ******Compare Section****** -->
        <section class="section">
            <div class="container">
                <h3 class="title text-center">效果对比</h3>
                <p class="source text-center">是如何处理的呢？</p>
                <div class="row">
                    <section class="section testimonials">
                        <div class="container">
                            <div id="testimonials-carousel" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#testimonials-carousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#testimonials-carousel" data-slide-to="1"></li>
                                    <li data-target="#testimonials-carousel" data-slide-to="2"></li>
                                </ol><!--//carousel-indicators-->
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <div class="content">
                                            <div class="row">
                                                <div class="container">
                                                    <div class="col-md-5 col-xs-12 " >
                                                        <img class=" img-responsive" src="${pageContext.request.contextPath}/static/assets/images/results/01-original.jpg" />
                                                    </div>
                                                    <div class=" vsText col-md-2 text-center">源图vs处理</div>
                                                    <div class="col-md-5 col-xs-12">
                                                        <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/results/01-original.jpg"/>
                                                    </div>
                                                </div>
                                                <p class="note">原图：100kb</p>
                                                <p class="source">处理后：60kb(减少60%)</p>
                                            </div>
                                        </div><!--//content-->
                                    </div><!--//item-->
                                    <div class="item">
                                        <div class="content">
                                            <div class="row">
                                                <div class="container">
                                                    <div class="col-md-5 col-xs-12 " >
                                                        <img class=" img-responsive" src="${pageContext.request.contextPath}/static/assets/images/results/02-original.jpg" />
                                                    </div>
                                                    <div class=" vsText col-md-2 text-center">源图vs处理</div>
                                                    <div class="col-md-5 col-xs-12">
                                                        <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/results/02-original.jpg"/>
                                                    </div>
                                                </div>
                                                <p class="note">原图：100kb</p>
                                                <p class="source">处理后：60kb(减少60%)</p>
                                            </div>
                                        </div><!--//content-->
                                    </div><!--//item-->
                                    <div class="item">
                                        <div class="content">
                                            <div class="row">
                                                <div class="container">
                                                    <div class="col-md-5 col-xs-12 " >
                                                        <img class=" img-responsive" src="${pageContext.request.contextPath}/static/assets/images/results/04-original.jpg" />
                                                    </div>
                                                    <div class=" vsText col-md-2 text-center">源图vs处理</div>
                                                    <div class="col-md-5 col-xs-12">
                                                        <img class="img-responsive" src="${pageContext.request.contextPath}/static/assets/images/results/04-original.jpg"/>
                                                    </div>
                                                </div>
                                                <p class="note">原图：100kb</p>
                                                <p class="source">处理后：60kb(减少60%)</p>
                                            </div>
                                        </div><!--//content-->
                                    </div><!--//item-->
                                </div><!--//carousel-inner-->
                            </div><!--//carousel-->
                        </div><!--//container-->
                    </section><!--//testimonials-->
                </div>
            </div><!--//container-->
        </section><!--//press-->

        <hr class="diy_divider">

        <!-- ******Why Section****** -->
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
                    <p>

                        <c:if test="${not empty user}"><a class="btn btn-cta btn-cta-secondary" href=" ${pageContext.request.contextPath}/passport/probation">开始试用</a></c:if>
                        <c:if test="${empty user}"><a class="btn btn-cta btn-cta-secondary" href=" ${pageContext.request.contextPath}/passport/login">开始试用</a></c:if>

                    </p>
                </div>
            </div><!--//container-->
        </section><!--//why-->

        <!-- ******Testimonials Section****** -->
        <!--<section class="section testimonials">
            <div class="container">
                <h2 class="title text-center">客户评价</h2>
                <div id="testimonials-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#testimonials-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#testimonials-carousel" data-slide-to="1"></li>
                        <li data-target="#testimonials-carousel" data-slide-to="2"></li>
                    </ol>&lt;!&ndash;//carousel-indicators&ndash;&gt;
                    <div class="carousel-inner">
                        <div class="item active">
                            <figure class="profile"><img src="assets/images/people/profile-m-1.png" alt="" /></figure>
                            <div class="content">
                                <blockquote>
                                <i class="fa fa-quote-left"></i>
                                <p>We used Velocity as a front-end design template for our product site. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elit tortor, consectetur vitae varius at, interdum eget libero. Morbi.</p>
                                </blockquote>
                                <p class="source">Kevin Knight<br /><span class="title">Co-Founder, Startup Hub</span></p>
                            </div>&lt;!&ndash;//content&ndash;&gt;
                        </div>&lt;!&ndash;//item&ndash;&gt;
                        <div class="item">
                            <figure class="profile"><img src="assets/images/people/profile-m-2.png" alt="" /></figure>
                            <div class="content">
                                <blockquote>
                                <i class="fa fa-quote-left"></i>
                                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint.</p>
                                </blockquote>
                                <p class="source">Diana	Luna<br /><span class="title">Entrepreneur, Maecenas</span></p>
                            </div>&lt;!&ndash;//content&ndash;&gt;
                        </div>&lt;!&ndash;//item&ndash;&gt;
                        <div class="item">
                            <figure class="profile"><img src="assets/images/people/profile-m-3.png" alt="" /></figure>
                            <div class="content">
                                <blockquote>
                                <i class="fa fa-quote-left"></i>
                                <p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere.</p>
                                </blockquote>
                                <p class="source">Tony Lee<br /><span class="title">CTO, Lorem Ipsum</span></p>
                            </div>&lt;!&ndash;//content&ndash;&gt;
                        </div>&lt;!&ndash;//item&ndash;&gt;
                    </div>&lt;!&ndash;//carousel-inner&ndash;&gt;

                </div>&lt;!&ndash;//carousel&ndash;&gt;
            </div>&lt;!&ndash;//container&ndash;&gt;
        </section>&lt;!&ndash;//testimonials&ndash;&gt;
        -->
        <!-- ******Press Section****** -->
        <section class="section press">
            <div class="container text-center">
                <h2 class="title">服务厂商</h2>
                <ul class="press-list list-inline row">
                    <li class="col-xs-4 col-sm-2"><a href="#"><img class="img-responsive"
                                                                   src="${pageContext.request.contextPath}/static/assets/images/press/press-1.png"
                                                                   alt="服务厂商logo"/></a></li>
                    <li class="col-xs-4 col-sm-2"><a href="#"><img class="img-responsive"
                                                                   src="${pageContext.request.contextPath}/static/assets/images/press/press-2.png"
                                                                   alt="服务厂商logo"/></a></li>
                    <li class="xs-break col-xs-4 col-sm-2"><a href="#"><img class="img-responsive"
                                                                            src="${pageContext.request.contextPath}/static/assets/images/press/press-3.png"
                                                                            alt=""/></a></li>
                    <li class="col-xs-4 col-sm-2"><a href="#"><img class="img-responsive"
                                                                   src="${pageContext.request.contextPath}/static/assets/images/press/press-4.png"
                                                                   alt="服务厂商logo"/></a></li>
                    <li class="col-xs-4 col-sm-2"><a href="#"><img class="img-responsive"
                                                                   src="${pageContext.request.contextPath}/static/assets/images/press/press-5.png"
                                                                   alt="服务厂商logo"/></a></li>
                    <li class="col-xs-4 col-sm-2"><a href="#"><img class="img-responsive"
                                                                   src="${pageContext.request.contextPath}/static/assets/images/press/press-6.png"
                                                                   alt="服务厂商logo"/></a></li>
                </ul><!--//press-list-->
                <ul class="press-list list-inline row last">
                    <li class="col-xs-4 col-sm-2"><a href="#"><img class="img-responsive"
                                                                   src="${pageContext.request.contextPath}/static/assets/images/press/press-7.png"
                                                                   alt="服务厂商logo"/></a></li>
                    <li class="col-xs-4 col-sm-2"><a href="#"><img class="img-responsive"
                                                                   src="${pageContext.request.contextPath}/static/assets/images/press/press-8.png"
                                                                   alt="服务厂商logo"/></a></li>
                    <li class="xs-break col-xs-4 col-sm-2"><a href="#"><img class="img-responsive"
                                                                            src="${pageContext.request.contextPath}/static/assets/images/press/press-9.png"
                                                                            alt="服务厂商logo"/></a></li>
                    <li class="col-xs-4 col-sm-2"><a href="#"><img class="img-responsive"
                                                                   src="${pageContext.request.contextPath}/static/assets/images/press/press-10.png"
                                                                   alt="服务厂商logo"/></a></li>
                    <li class="col-xs-4 col-sm-2"><a href="#"><img class="img-responsive"
                                                                   src="${pageContext.request.contextPath}/static/assets/images/press/press-11.png"
                                                                   alt="服务厂商logo"/></a></li>
                    <li class="col-xs-4 col-sm-2"><a href="#"><img class="img-responsive"
                                                                   src="${pageContext.request.contextPath}/static/assets/images/press/press-12.png"
                                                                   alt="服务厂商logo"/></a></li>
                </ul><!--//press-list-->

                <div class="press-lead text-center">

                </div>

            </div><!--//container-->
        </section><!--//press-->

    </div><!--//section-wrapper-->

    <!-- ******FOOTER****** --> 
    <footer class="footer">
        <div class="footer-content">
            <div class="container">
                <div class="row">                    
                    <div class="footer-col links col-md-4 col-sm-4 col-xs-12">
                        <div class="footer-col-inner">
                            <h3 class="title">关于我们</h3>
                            <ul class="list-unstyled">
                                <li><a href="#"><i class="fa fa-caret-right"></i>我们是谁</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>厂商</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>微博</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>招聘</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>联系我们</a></li>
                            </ul>
                        </div><!--//footer-col-inner-->
                    </div><!--//foooter-col-->    
                    <div class="footer-col links col-md-4 col-sm-4 col-xs-12 ">
                        <div class="footer-col-inner">
                            <h3 class="title">产品</h3>
                            <ul class="list-unstyled">
                                <li><a href="#"><i class="fa fa-caret-right"></i>如何工作</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>说明文档</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>下载</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>价格</a></li>
                            </ul>
                        </div><!--//footer-col-inner-->
                    </div><!--//foooter-col-->
                    <div class="footer-col links col-md-4 col-sm-4 col-xs-12 ">
                        <div class="footer-col-inner">
                            <h3 class="title">支持</h3>
                            <ul class="list-unstyled">
                                <li><a href="#"><i class="fa fa-caret-right"></i>帮助</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>文档</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>服务条例</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>隐私</a></li>
                            </ul>
                        </div><!--//footer-col-inner-->
                    </div><!--//foooter-col-->
                </div><!--//row-->
            </div><!--//container-->
        </div><!--//footer-content-->

        <div class="clearfix visible-xs"></div>

        <div class="bottom-bar">
            <div class="container">
                <p class=" text-center">Copyright &copy; 2018  Kasiya All rights</p>
            </div><!--//container-->
        </div><!--//bottom-bar-->
    </footer><!--//footer-->

    <!--Login Modal -->
    <div class="modal fade" id="LoginModel" tabindex="-1" role="dialog" data-backdrop="true" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog" >
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="title text-center">Log in to Biaoshi</h2>
                </div>
                <div class="modal-body">

                    <form class="login-form">
                        <div class="form-group email">
                            <label class="sr-only" for="login-email">Email or username</label>
                            <input id="login-email" type="email" class="form-control login-email" placeholder="Email or username">
                        </div><!--//form-group-->
                        <div class="form-group password">
                            <label class="sr-only" for="login-password">Password</label>
                            <input id="login-password" type="password" class="form-control login-password" placeholder="Password">
                            <p class="forgot-password"><a href="reset-password.html">Forgot password?</a></p>
                        </div><!--//form-group-->
                        <button type="submit" class="btn btn-block btn-cta-primary">Log in</button>
                        <p class="lead">Don't have a BiaoshiTech account yet? <br /><a class="signup-link" href="signup.html">Create your account now</a></p>
                    </form>

                <div class="modal-footer">
                </div>
                </div><!--//modal-body-->
            </div><!--//modal-content-->
        </div><!--//modal-dialog-->
    </div><!--//modal-->

    <!-- Video Modal -->
    <div class="modal modal-video" id="modal-video" tabindex="-1" role="dialog" aria-labelledby="videoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 id="videoModalLabel" class="modal-title sr-only">Video Tour</h4>
                </div>
                <div class="modal-body">
                    <div class="video-container">
                        <iframe id="vimeo-video" src="" width="720" height="405" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                    </div><!--//video-container-->
                </div><!--//modal-body-->
            </div><!--//modal-content-->
        </div><!--//modal-dialog-->
    </div><!--//modal-->


    <!-- Javascript -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/bootstrap-hover-dropdown.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/back-to-top.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/jquery-placeholder/jquery.placeholder.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/FitVids/jquery.fitvids.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/js/main.js"></script>

    <!-- Vimeo video API -->
    <script src="${pageContext.request.contextPath}/static/assets/js/froogaloop2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/js/vimeo.js"></script>
</body>
</html> 


