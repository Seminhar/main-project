<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title></title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">    
    <link rel="shortcut icon" href="favicon.ico">  
    <!---<link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,500,500italic,700,700italic,900,900italic,300italic,300' rel='stylesheet' type='text/css'> 
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300,100' rel='stylesheet' type='text/css'>--->
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

<body class="signup-page access-page has-full-screen-bg">
    <div class="upper-wrapper">
        <!-- ******HEADER****** -->
    <%--    <header class="header">

        </header><!--//header-->
        --%>
        <!-- ******Signup Section****** --> 
        <section class="signup-section access-section section">
            <div class="container">
                <div class="row">
                    <div class="form-box col-md-offset-2 col-sm-offset-0 xs-offset-0 col-xs-12 col-md-8">     
                        <div class="form-box-inner">
                            <h2 class="title text-center">欢迎注册标示</h2>
                            <p class="intro text-center">只需两分钟</p>
                            <div class="row">
                                <div class="form-container col-xs-12 col-md-6 col-md-offset-3">
                                    <form class="signup-form" action="${pageContext.request.contextPath}/user/signup" method="post">
                                        <div class="form-group email">
                                            <label class="sr-only" for="signup-email">您的电子邮箱</label>
                                            <input id="signup-email" type="email" name="email" class="form-control login-email" placeholder="邮箱">
                                        </div><!--//form-group-->
                                        <div class="form-group phonenumber">
                                            <label class="sr-only" for="signup-phonenumber">您的手机号码</label>
                                            <input id="signup-phonenumber" type="tel" name="phonenumber" class="form-control" placeholder="手机号码">
                                        </div><!--//form-group-->
                                        <div class="form-group username">
                                            <label class="sr-only" for="signup-email">您的用户名</label>
                                            <input id="signup-username" type="text" name="username" class="form-control" placeholder="用户名">
                                        </div><!--//form-group-->
                                        <div class="form-group password">
                                            <label class="sr-only" for="signup-password">密码</label>
                                            <input id="signup-password" type="password"  name="password" class="form-control login-password" placeholder="密码">
                                        </div><!--//form-group-->
                                        <div class="input-group usertype">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <input type="radio" name="usertype" aria-label="Radio button for following text input" value="0" >个人
                                                    <input type="radio" name="usertype" aria-label="Radio button for following text input" value="1" >企业
                                                </div>
                                            </div>
                                        </div>
                                        <br/>
                                        <button type="submit" class="btn btn-block btn-cta-primary">注&nbsp&nbsp&nbsp&nbsp册</button>
                                        <p class="note">注册即代表着您同意并遵循相关服务条例和政策</p>
                                        <div class="row">
                                            <span class="lead col-xs-12 col-md-6">已有账户? <a class="login-link" id="login-link" href="${pageContext.request.contextPath}/passport/login">登录</a></span>
                                            <span class="lead col-xs-12 col-md-6"><a class="signup-link" href="${pageContext.request.contextPath}/passport/index">返回主页</a></span>
                                        </div>
                                    </form>
                                </div><!--//form-container-->
                            </div><!--//row-->
                        </div><!--//form-box-inner-->
                    </div><!--//form-box-->
                </div><!--//row-->
            </div><!--//container-->
        </section><!--//signup-section-->
    </div><!--//upper-wrapper-->
    
    <!-- ******FOOTER****** --> 
    <footer class="footer">
        <div class="bottom-bar">
            <div class="container">
                <p class=" text-center">Copyright &copy; 2018  Kasiya All rights</p>
            </div><!--//container-->
        </div><!--//bottom-bar-->
    </footer><!--//footer-->

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


