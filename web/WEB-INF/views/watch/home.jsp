<%@ page language="Java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>姜戈名品</title>
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
<!--information-starts-->
<div class="information">
    <div class="container">
        <div class="infor-top">
            <div class="col-md-3 infor-left">
                <h3>
                    <b
                            style="font-weight: bolder; font-family: KaiTi; font-size: 23px; color: black;">关于我们</b>
                </h3>
                <ul>
                    <li><a href="#"><span class="fb"></span>
                        <h6>Facebook</h6></a></li>
                    <li><a href="#"><span class="twit"></span>
                        <h6>Twitter</h6></a></li>
                    <li><a href="#"><span class="google"></span>
                        <h6>Google+</h6></a></li>
                </ul>
            </div>
            <div class="col-md-3 infor-left">
                <h3>
                    <b
                            style="font-weight: bolder; font-family: KaiTi; font-size: 23px; color: black;">动态信息</b>
                </h3>
                <ul>
                    <li><a href="<%=path%>/forum/forum"><p>最新 复刻贴</p></a></li>
                    <li><a href="<%=path%>/watch/queryByTitleDes?value=定制"><p>最新 独家定制</p></a></li>
                    <li><a href="<%=path%>/watch/queryByTitleDes?value=机械"><p>畅销 机械表表</p></a></li>
                    <li><a href="<%=path%>/watch/productsBSO/all/2"><p>打折处理表</p></a></li>
                    <li><a href="http://weidian.com/?userid=1093447508"><p>保修 退换</p></a></li>
                </ul>
            </div>
            <div class="col-md-3 infor-left">
                <h3>
                    <b
                            style="font-weight: bolder; font-family: KaiTi; font-size: 23px; color: black;">合作厂家</b>
                </h3>
                <ul>
                    <li><a style="cursor: default;"><p>Noob Factory</p></a></li>
                    <li><a style="cursor: default;"><p>V6 Factory</p></a></li>
                    <li><a style="cursor: default;"><p>KW Factory</p></a></li>
                    <li><a style="cursor: default;"><p>MK Factory</p></a></li>
                    <li><a style="cursor: default;"><p>ZF Factory</p></a></li>
                </ul>
            </div>
            <div class="col-md-3 infor-left">
                <h3>
                    <b style="font-weight: bolder; font-family: KaiTi; font-size: 23px; color: black;">工作室信息</b>
                </h3>
                <h4>
                    工作室地址： <span>广东省佛山市南海区银河路89号(主地址)</span>
                    <span>江西省赣州市沙河金属物流城19栋(副地址)</span>
                    <span>湖南省长沙天心区上海城12栋(副地址)</span>
                </h4>
                <h5>18370949034(郭姜戈)</h5>
                <p>
                    <a>微信: gyq18370949034</a>
                </p>
                <p>
                    <a>QQ: 3234396045</a>
                </p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--information-end-->
<!--footer-starts-->
<div class="footer">
    <div class="container">
        <div class="footer-top">
            <div class="col-md-6 footer-left">
                <form action="<%=path%>/watch/queryByTitleDes" method="get" target="_blank">
                    <input type="text" name="value" value="搜索品牌关键字"
                           onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = '搜索品牌关键字';}">
                    <input type="submit" value="搜索">
                </form>
            </div>
            <div class="col-md-6 footer-right">
                <p>姜戈名品团队成立于<strong>2013年5月</strong>，为追求顶级复刻不断和厂家合作，<strong>自主更新</strong>，几年来为许多复刻玩家提供<strong>定制级复刻表</strong></p>
                <p><strong>诚信经营</strong>，在业界享有优良口碑和声誉。&nbsp;&nbsp;&nbsp;&nbsp;我们的服务态度&nbsp;&nbsp;和质量保障&nbsp;&nbsp;以及售后维修上都是<strong>高于同行，优于同行</strong></p>
                <p>姜戈名品 &nbsp;行业顶尖&nbsp;&nbsp;&nbsp;&nbsp;专注<strong>高端奢侈复刻</strong></p>
                <p>&copy; 2013.姜戈名品顶尖复刻表团队&nbsp;&nbsp;版权所有.</p>
                <p>&nbsp;&nbsp;&nbsp;<a href="/login/login" target="_blank">后台登陆</a></p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--footer-end-->
</body>
</html>