<%@ page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Contact</title>
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
                <li class="active">详情复刻贴</li>
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
            <div class="row">
                <div class="col-md-8 blog-main">

                    <!-- 分页按钮 -->
                    <div class="paging">
                        <nav>
                            <ul class="pagination">
                                <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- 分页结束 -->
                </div>
                <aside class="col-md-4 blog-aside">

                    <div class="aside-widget">
                        <header>
                            <h3>精选帖子</h3>
                        </header>
                        <div class="body">
                            <ul class="clean-list">
                                <li><a href="">Clean - Responsive HTML5 Template</a></li>
                                <li><a href="">Responsive Pricing Table</a></li>
                                <li><a href="">Yellow HTML5 Template</a></li>
                                <li><a href="">Blackor Responsive Theme</a></li>
                                <li><a href="">Portfolio Bootstrap Template</a></li>
                                <li><a href="">Clean Slider Template</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="aside-widget">
                        <header>
                            <h3>复刻专题贴</h3>
                        </header>
                        <div class="body">
                            <ul class="clean-list">
                                <li><a href="">Blackor Responsive Theme</a></li>
                                <li><a href="">Portfolio Bootstrap Template</a></li>
                                <li><a href="">Clean Slider Template</a></li>
                                <li><a href="">Clean - Responsive HTML5 Template</a></li>
                                <li><a href="">Responsive Pricing Table</a></li>
                                <li><a href="">Yellow HTML5 Template</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="aside-widget">
                        <header>
                            <h3>品牌文化贴</h3>
                        </header>
                        <div class="body">
                            <ul class="clean-list">
                                <li><a href="">Blackor Responsive Theme</a></li>
                                <li><a href="">Portfolio Bootstrap Template</a></li>
                                <li><a href="">Clean Slider Template</a></li>
                                <li><a href="">Clean - Responsive HTML5 Template</a></li>
                                <li><a href="">Responsive Pricing Table</a></li>
                                <li><a href="">Yellow HTML5 Template</a></li>
                            </ul>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </div>

</div>
<!--contact-end-->

<%--  tail starts--%>
<%@ include file="../common/tail.jsp" %>
<%--  tail end--%>

</body>
</html>