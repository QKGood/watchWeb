<%@ page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>帖子专区</title>
    <link rel="shortcut icon" href="<%=path%>/images/webLogo.ico" type="image/x-icon" />
    <link href="<%=path %>/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--Custom-Theme-files-->
    <!--theme-style-->
    <link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="Jango, 467524272@qq.com" />
    <meta name="Description" Content="姜戈名品,专注原单,姜戈团队,手表行业顶级复刻,为顾客定制高端复刻手表,定制正品原单鞋子,原单皮具.">
    <meta name="Kyewords" Lang="EN" Content="Jango,Watch,Genuine,Luxury, sports shoes, Famous,Leather goods,Purse">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">


    <!-- Bootstrap styles -->
    <link rel="stylesheet" href="<%=path %>/css/bootstrap.min.css">

    <!-- Font-Awesome -->
    <link rel="stylesheet" href="<%=path %>/css/font-awesome/css/font-awesome.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="<%=path %>/css/font-awesome/css/style.css" id="theme-styles">

    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
    </script>
    <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
    <script src="<%=path %>/js/jquery-1.11.0.min.js"></script>
    <!--dropdown-->
    <script src="<%=path %>/js/jquery.easydropdown.js"></script>

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

<%--rightMenu start--%>
<%@ include file="../common/rightMenu.jsp" %>
<%--rightMenu end--%>

<%--  header menu starts--%>
<%@ include file="../common/header.jsp" %>
<%--  header menu end--%>

<!--start-breadcrumbs-->
<div class="breadcrumbs">
    <div class="container">
        <div class="breadcrumbs-main">
            <ol class="breadcrumb" style="margin-bottom: 0px;">
                <li><a href="<%=path%>/index">首页</a></li>
                <li class="active">贴子专区</li>
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
                    <div class="row">
                        <c:choose>
                        <c:when test="${requestScope.forum.size() > 0 }">
                            <c:forEach items="${requestScope.forum}" var="f">
                            <div class="col-md-6 col-sm-6">
                                <article class=" blog-teaser">
                                    <header>
                                        <img src="<%=path %>/${f.image}" alt="内容图片" style="height: 200px;">
                                        <h3><a href="#">${f.title}</a></h3>
                                        <span class="meta">
                                        <fmt:formatDate value="${f.dateTime}" pattern="yyyy/MM/dd"></fmt:formatDate>
                                        </span>
                                        <hr>
                                    </header>
                                    <div class="body">
                                        <span class="meta" title="${f.des}" style="  display: block;width: 310px;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">
                                            ${f.des}
                                        </span>
                                    </div>
                                    <div class="clearfix">
                                        <a href="<%=path%>/forum/details/${f.id}" class="btn btn-clean-one">了解更多</a>
                                    </div>
                                </article>
                            </div>
                            </c:forEach>
                            <ul id='bp-element' style="float: right;"></ul>
                        </c:when>
                            <c:otherwise>
                                <h2>查看更多帖子联系姜戈表哥</h2>
                            </c:otherwise>
                        </c:choose>

                    </div>

                </div>
                <aside class="col-md-4 blog-aside">

                    <div class="aside-widget">
                        <header>
                            <h3>复刻专题帖</h3>
                        </header>
                        <div class="body">
                            <ul class="clean-list">
                        <c:choose>
                        <c:when test="${requestScope.forumMB.size() > 0 }">
                            <c:forEach items="${requestScope.forumMB}" var="fmb">
                                <li><a href="<%=path%>/forum/details/${fmb.id}">${fmb.title}</a></li>
                            </c:forEach>
                        </c:when>
                            <c:otherwise>
                                <h2>查看更多帖子联系姜戈表哥</h2>
                            </c:otherwise>
                        </c:choose>
                            </ul>
                        </div>
                    </div>

                    <div class="aside-widget">
                        <header>
                            <h3>精选帖子</h3>
                        </header>
                        <div class="body">
                            <ul class="clean-list">
                                <c:choose>
                                    <c:when test="${requestScope.forum.size() > 0 }">
                                        <c:forEach items="${requestScope.forum}" var="f">
                                            <li><a href="<%=path%>/forum/details/${f.id}">${f.title}</a></li>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <h2>查看更多帖子联系姜戈表哥</h2>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </div>
                    </div>

                    <div class="aside-widget">
                        <header>
                            <h3>品牌文化帖</h3>
                        </header>
                        <div class="body">
                            <ul class="clean-list">
                                <c:choose>
                                    <c:when test="${requestScope.forumPP.size() > 0 }">
                                        <c:forEach items="${requestScope.forumPP}" var="fpp">
                                            <li><a href="<%=path%>/forum/details/${fpp.id}">${fpp.title}</a></li>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <h2>查看更多帖子联系姜戈表哥</h2>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </div>

</div>
<!--contact-end-->

<%--  tail start--%>
<%@ include file="../common/tail.jsp" %>
<%--  tail end--%>

<!--[if lt IE 9]>
<script src="<%=path %>/js/vendor/google/html5-3.6-respond-1.1.0.min.js"></script>
<![endif]-->

<%--pageBtn start--%>
<script type="text/javascript" src="<%=path%>/js/bootstrap-paginator.js"></script>
<script type="text/javascript">
    $(function(){
        var element = $('#bp-element');
        if(${totalPages > 1}){
            options = {
                bootstrapMajorVersion:3, //对应的bootstrap版本
                currentPage: ${currentPage}, //当前页数，这里是用的EL表达式，获取从后台传过来的值
                numberOfPages: 3, //每页页数
                totalPages:${totalPages}, //总页数，这里是用的EL表达式，获取从后台传过来的值
                //shouldShowPage:true,//是否显示该按钮
                itemTexts: function (type, page, current) {//设置显示的样式，默认是箭头
                    switch (type) {
                        case "first":
                            return "<span style='cursor: pointer'>首页</span>";
                        case "prev":
                            return "<span style='cursor: pointer'>上一页</span>";
                        case "next":
                            return "<span style='cursor: pointer'>下一页</span>";
                        case "last":
                            return "<span style='cursor: pointer'>末页</span>";
                        case "page":
                            return page;
                    }
                },
                //点击事件
                onPageClicked: function (event, originalEvent, type, page) {

                        location.href = "/forum/forum?pageNoStr=" + page;
                }
            };
                element.bootstrapPaginator(options);
        }
    });
</script>
<%--pageBtn end--%>

</body>
</html>