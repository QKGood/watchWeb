<%@ page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>帖子详情</title>
    <link rel="shortcut icon" href="<%=path%>/images/webLogo.ico" type="image/x-icon" />
    <link href="<%=path%>/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
    <script src="<%=path%>/js/jquery-1.11.0.min.js"></script>
    <!--Custom-Theme-files-->
    <!--theme-style-->
    <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="Jango, 467524272@qq.com" />
    <meta name="Description" Content="姜戈名品,专注原单,姜戈团队,手表行业顶级复刻,为顾客定制高端复刻手表,定制正品原单鞋子,原单皮具.">
    <meta name="Kyewords" Lang="EN" Content="Jango,Watch,Genuine,Luxury, sports shoes, Famous,Leather goods,Purse">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--start-menu-->
    <script src="<%=path%>/js/simpleCart.min.js"> </script>
    <link href="<%=path%>/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="<%=path%>/js/memenu.js"></script>
    <script>$(document).ready(function(){$(".memenu").memenu();});</script>
    <!--dropdown-->
    <script src="<%=path%>/js/jquery.easydropdown.js"></script>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <!-- Bootstrap styles -->
    <link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">

    <!-- Font-Awesome -->
    <link rel="stylesheet" href="<%=path%>/css/font-awesome/css/font-awesome.min.css">


    <!-- Styles -->
    <link rel="stylesheet" href="<%=path%>/css/font-awesome/css/style.css" id="theme-styles">

    <!--[if lt IE 9]>
    <script src="<%=path%>/js/vendor/google/html5-3.6-respond-1.1.0.min.js"></script>
    <![endif]-->
    <script src="<%=path%>/js/bootstrap.min.js"></script>
    <script src="<%=path%>/js/modernizr.js"></script>
    <!--dropdown-->
    <script src="/js/jquery.easydropdown.js"></script>
    <%--导航栏弹出新窗口--%>
    <script>
        function mbar(sobj) {
            var docurl =sobj.options[sobj.selectedIndex].value;
            if (docurl != "") {
                open(docurl,'_blank');
                sobj.selectedIndex=0;
                sobj.blur();
            }
        }
    </script>
</head>
<body>

<%--  header menu starts--%>
<%@ include file="../common/header.jsp" %>
<%--  header menu end--%>

<!--start-breadcrumbs-->
<div class="breadcrumbs">
    <div class="container">
        <div class="breadcrumbs-main">
            <ol class="breadcrumb" style="margin-bottom: 0px;">
                <li><a href="<%=path%>/index">首页</a></li>
                <li class="active"><a href="<%=path%>/forum/forum">帖子专区</a></li>
                <li class="active">当前帖</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->
<!--contact-start-->
<div class="contact">
    <!-- 主内容展示 -->
    <div class="widewrapper main">
        <div class="container">
            <div class="row-font">
                <div style="margin:0 auto;">

                    <article class="blog-teaser"  style="border: 0px;">
                        <header>
                            <h3>${requestScope.forum.title}</h3>
                            <span class="meta">${requestScope.forum.dateTime}</span>
                            <img src="<%=path %>/${requestScope.forum.image}" alt="内容图片" style="width: 100%">
                            <video src="<%=path %>/${requestScope.forum.video}" id = "video" controls="controls" style="width: 100%;">抱歉,您的浏览器无法播放视频.</video>
                            <hr>
                        </header>
                        <div class="body">
                                        <span class="meta" title="" style="">
                                            ${requestScope.forum.des}
                                        </span>
                        </div>
                    </article>

                </div>
            </div>
        </div>
    </div>

</div>
<!--contact-end-->

<%--  tail start--%>
<%@ include file="../common/tail.jsp" %>
<%--  tail end--%>

</body>
</html>