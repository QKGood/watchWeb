<!DOCTYPE HTML>
<%@ page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>姜戈名品</title>
    <link rel="shortcut icon" href="<%=path%>/images/webLogo.ico" type="image/x-icon" />
    <link href="<%=path%>/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
    <script src="<%=path%>/js/jquery-1.11.0.min.js"></script>
    <!--dropdown-->
    <script src="<%=path%>/js/jquery.easydropdown.js"></script>
    <!--Custom-Theme-files-->
    <!--theme-style-->
    <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="Jango, 467524272@qq.com" />
    <meta name="Description" Content="姜戈名品,专注原单,姜戈团队坚持实拍测评,手表行业顶级复刻,为顾客定制顶级高端复刻手表,定制正品原单鞋子,原单皮具.姜戈团队力求完美,专注细节.">
    <meta name="Kyewords" Lang="EN" Content="Jango,Watch,Genuine,Luxury, sports shoes, Famous,Leather goods,Purse">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

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

<!--banner-starts 横幅图片开始-->
<div class="bnr" id="home">
    <div id="top" class="callbacks_container">
        <ul class="rslides" id="slider4">
            <li>
                <div class="banner"></div>
            </li>
            <li>
                <div class="banner1"></div>
            </li>
            <li>
                <div class="banner2"></div>
            </li>
        </ul>
    </div>
    <div class="clearfix"></div>
</div>
<!--banner-ends 横幅图片结束-->
<!--Slider-Starts-Here-->
<script src="<%=path%>/js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
        // Slideshow 4
        $("#slider4").responsiveSlides({
            auto: true,
            pager: true,
            nav: true,
            speed: 500,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });

    });
</script>
<!--End-slider-script-->
<!--about-starts-->
<div class="about">
    <div class="container">
        <div class="about-top grid-1">
            <div class="col-md-4 about-left" onclick="window.open('<%=path%>/watch/products/天梭/男款')">
                <figure class="effect-bubba">
                    <img class="img-responsive" src="<%=path%>/images/abt-1.jpg" alt="" />
                    <figcaption>
                        <h2>天梭力洛克</h2>
                        <p>入门级机械表</p>
                    </figcaption>
                </figure>
            </div>
            <div class="col-md-4 about-left" onclick="window.open('<%=path%>/watch/products/欧米茄/男款')">
                <figure class="effect-bubba">
                    <img class="img-responsive" src="<%=path%>/images/abt-2.jpg" alt="" />
                    <figcaption>
                        <h4>欧米茄蝶飞</h4>
                        <p>奢侈商务机械表</p>
                    </figcaption>
                </figure>
            </div>
            <div class="col-md-4 about-left" onclick="window.open('<%=path%>/watch/products/万国/男款')">
                <figure class="effect-bubba">
                    <img class="img-responsive" src="<%=path%>/images/abt-3.jpg" alt="" />
                    <figcaption>
                        <h4>万国葡萄牙系列</h4>
                        <p>陀飞轮毒物</p>
                    </figcaption>
                </figure>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</div>
<!--about-end-->
<!--product-starts-->
<div class="product">
    <div class="container">
        <div class="product-top">
            <div class="product-one" style="">
                <c:forEach items ="${requestScope.watchs1}" var = "w1">
                    <div class="col-md-3 product-left" style="">
                        <div class="product-main simpleCart_shelfItem"  style="">
                            <a href="/watch/details/${w1.id}" target="_blank" class="mask"><img
                                    class="img-responsive zoom-img" src="/${w1.image}" alt="" /></a>
                            <div class="product-bottom">
                                <h3>${w1.title}</h3>
                                <p></p>
                                <p>${w1.style.des}</p>
                                <h4>
                                    <a class="item_add" href="#"><i></i></a> <span
                                        class=" item_price">${w1.price}</span>
                                </h4>
                            </div>
                            <div class="srch">
                                <span>${w1.table}</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="clearfix"></div>
            </div>
            <div class="product-one">
                <c:forEach items ="${requestScope.watchs2}" var = "w2">
                    <div class="col-md-3 product-left"  style="">
                        <div class="product-main simpleCart_shelfItem" style="">
                            <a href="/watch/details/${w2.id}" class="mask"><img
                                    class="img-responsive zoom-img" src="/${w2.image}" alt="" /></a>
                            <div class="product-bottom">
                                <h3>${w2.title}</h3>
                                <p>${w2.style.des}</p>
                                <h4>
                                    <a class="item_add" href="#"><i></i></a> <span
                                        class=" item_price">￥${w2.price}</span>
                                </h4>
                            </div>
                            <div class="srch">
                                <span>${w2.table}</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="clearfix"></div>
            </div>
            <div class="product-one">
                <c:forEach items ="${requestScope.watchs3}" var = "w3">
                    <div class="col-md-3 product-left"  style=" margin-top: 30px;">
                        <div class="product-main simpleCart_shelfItem"style="">
                            <a href="/watch/details/${w3.id}" target="_blank" class="mask"><img
                                    class="img-responsive zoom-img" src="/${w3.image}" alt="" /></a>
                            <div class="product-bottom">
                                <h3>${w3.title}</h3>
                                <p>${w3.style.des}</p>

                                <h4>
                                    <a class="item_add" href="#"><i></i></a> <span
                                        class=" item_price">￥${w3.price}</span>
                                </h4>
                            </div>
                            <div class="srch">
                                <span>${w3.table}</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!--product-end-->

<%--  tail start--%>
<%@ include file="../common/tail.jsp" %>
<%--  tail end--%>


</body>
</html>