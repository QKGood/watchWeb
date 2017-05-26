﻿<%@ page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>姜戈名表</title>
    <link rel="shortcut icon" href="/images/webLogo.ico" type="image/x-icon" />
    <link href="<%=path %>/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
    <script src="<%=path %>/js/jquery-1.11.0.min.js"></script>
    <!--Custom-Theme-files-->
    <!--theme-style-->
    <link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="Jango, 467524272@qq.com" />
    <meta name="Description" Content="姜戈名品,专注原单,姜戈团队,手表行业顶级复刻,为顾客定制高端复刻手表,定制正品原单鞋子,原单皮具.">
    <meta name="Kyewords" Lang="EN" Content="Jango,Watch,Genuine,Luxury, sports shoes, Famous,Leather goods,Purse">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--start-menu-->
    <script src="<%=path %>/js/simpleCart.min.js"> </script>
    <link href="<%=path %>/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="/js/memenu.js"></script>
    <script type="text/javascript" src="/js/bootstrap-paginator.js"></script>
    <script>
        $(document).ready(function(){$(".memenu").memenu();});
        /*导航栏标题*/
        function mbar(sobj) {
            var docurl =sobj.options[sobj.selectedIndex].value;
            if (docurl != "") {
                open(docurl,'_blank');
                sobj.selectedIndex=0;
                sobj.blur();
            }
        }
    </script>
    <!--dropdown-->
    <script src="<%=path %>/js/jquery.easydropdown.js"></script>
</head>
<body>

<%--  header menu starts--%>
<%@ include file="../common/header.jsp" %>
<%--  header menu end--%>

<!--start-breadcrumbs-->
<div class="breadcrumbs">
    <div class="container">
        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><a href="<%=path%>/index">首页</a></li>
                <li class="active">所有手表</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->
<!--prdt-starts-->
<div class="prdt">
    <div class="container">
        <div class="prdt-top">
            <c:choose>
                <c:when test="${requestScope.watches.size() > 0 }">
                    <div class="col-md-9 prdt-left">
                        <c:forEach items="${requestScope.watches}" var="w">
                            <div class="col-md-4 product-left p-left" style="margin-top: 1%;">
                                <div class="product-main simpleCart_shelfItem">
                                    <a href="<%=path%>/watch/details/${w.id}" class="mask"><img class="img-responsive zoom-img" src="<%=path %>/${w.image}" alt="" style="height: 190px"/></a>
                                    <div class="product-bottom">
                                        <h3>${w.title}</h3>
                                        <p>${w.style.des}</p>
                                        <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">￥${w.price}</span></h4>
                                    </div>
                                    <div class="srch srch1">
                                        <span>${w.table}</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                                <c:if test="${requestScope.check == '1'}">
                                    <ul id='bp-element1' style="float: right;"></ul>
                                </c:if>
                                <c:if test="${requestScope.check == '2'}">
                                    <ul id='bp-element2' style="float: right;"></ul>
                                </c:if>
                        <div class="clearfix"></div>
                                <c:if test="${requestScope.check == '3'}">
                                    <ul id='bp-element3' style="float: right;"></ul>
                                </c:if>
                        <c:if test="${requestScope.check == '4'}">
                                    <ul id='bp-element4' style="float: right;"></ul>
                        </c:if>
                        <c:if test="${requestScope.check == '5'}">
                            <ul id='bp-element5' style="float: right;"></ul>
                        </c:if>
                    </div>
                </c:when>
                <c:otherwise>
                    <h2>抱歉,查询有误,试着减少关键字再试试.</h2>
                    <h2>若有疑问请加微信联系商家</h2>
                </c:otherwise>
            </c:choose>
            <div class="col-md-3 prdt-right" style="float: right;">

                <div class="w_sidebar">
                    <form action="/watch/queryByPrices" method="get">
                    <section  class="sky-form">
                        <h4>手表分类</h4>
                        <div class="row1 row2 scroll-pane">
                            <div class="col col-4">
                                <label class="checkbox"><input type="radio" name="type"  value="男款"checked=""><i></i>男表系列</label>
                                <label class="checkbox"><input type="radio" name="type"  value="女款"><i></i>女表系列</label>
                                <label class="checkbox"><input type="radio" name="type"  value="男款"><i></i>机械系列</label>
                                <label class="checkbox"><input type="radio" name="type"  value="女款"><i></i>石英系列</label>
                            </div>
                        </div>
                    </section>
                    <section  class="sky-form">
                        <h4>品牌选择</h4>
                        <div class="row1 row2 scroll-pane">
                            <div class="col col-4">
                                <label class="checkbox"><input type="radio" name="des" value=""checked=""><i></i>所有品牌</label>
                                <label class="checkbox"><input type="radio" name="des" value="劳力士"><i></i>劳力士(Rolex)</label>
                                <label class="checkbox"><input type="radio" name="des" value="欧米茄"><i></i>欧米茄(OMEGA)</label>
                                <label class="checkbox"><input type="radio" name="des" value="卡地亚"><i></i>卡地亚(Cartier)</label>
                                <label class="checkbox"><input type="radio" name="des" value="百达翡丽"><i></i>百达翡丽(PP)</label>
                                <label class="checkbox"><input type="radio" name="des" value="真力时"><i></i>真力时(Zenith)</label>
                                <label class="checkbox"><input type="radio" name="des" value="万国" ><i></i>万国(IWC)</label>
                                <label class="checkbox"><input type="radio" name="des" value="爱彼"><i></i>爱彼(AP)</label>
                                <label class="checkbox"><input type="radio" name="des" value="帝舵"><i></i>帝舵(Tudor)</label>
                                <label class="checkbox"><input type="radio" name="des" value="积家"><i></i>积家(JL)</label>
                                <label class="checkbox"><input type="radio" name="des" value="浪琴"><i></i>浪琴(LONGINES)</label>
                                <label class="checkbox"><input type="radio" name="des" value="天梭"><i></i>天梭(TISSOT)</label>
                                <label class="checkbox"><input type="radio" name="des" value="美度"><i></i>美度(MIDO)</label>
                                <label class="checkbox"><input type="radio" name="des" value="诺莫斯"><i></i>诺莫斯(Nomos)</label>
                            </div>
                        </div>
                    </section>
                    <section class="sky-form">
                        <h4>价格区间</h4>
                        <div class="row1 row2 scroll-pane" style="overflow: hidden">
                            <div class="col col-4">
                                <label class="radio"><input type="radio" name="prices"value="6"checked=""><i></i>所有</label>
                                <label class="radio"><input type="radio" name="prices"value="1"><i></i>2000以下</label>
                                <label class="radio"><input type="radio" name="prices"value="2"><i></i>2000至3500</label>
                                <label class="radio"><input type="radio" name="prices"value="3"><i></i>3500至4500</label>
                                <label class="radio"><input type="radio" name="prices"value="4"><i></i>4500至5500</label>
                                <label class="radio"><input type="radio" name="prices"value="5"><i></i>5500以上</label>
                            </div>
                        </div>
                    </section>
                    <section class="sky-form">
                        <h4><input type="submit" value="搜索"/></h4>
                        <!-- 	<ul class="w_nav2">
                                <li><a class="color1" href="#"></a></li>
                                <li><a class="color2" href="#"></a></li>
                            </ul> -->
                    </section>
                    </form>
                </div>
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
                    <span>江西省赣州市沙河金属物流城19栋(复地址)</span>
                    <span>湖南省长沙天心区上海城12栋(复地址)</span>
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
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--footer-end-->

<script type="text/javascript">
    $(function(){
        var element1 = $('#bp-element1');
        var element2 = $('#bp-element2');
        var element3 = $('#bp-element3');
        var element4 = $('#bp-element4');
        var element5 = $('#bp-element5');
        var url = '';
        if(${check == 1}){
            url = '/watch/products/${styleDes}/${type}'
        }else if(${check == 2}){
            url = '/watch/queryByTitleDes?value=${value}'
        }else if(${check == 3}){
            url = '/watch/productsType/${type}'
        }else if(${check == 4}){
            url = '/watch/queryByPrices?type=${type}&des=${des}&prices=${prices}'
        }
        else if(${check == 5}){
            url = '/watch/productsBSO/${des}/${prices}'
        }
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
                            return "首页";
                        case "prev":
                            return "上一页";
                        case "next":
                            return "下一页";
                        case "last":
                            return "末页";
                        case "page":
                            return page;
                    }
                },
                //点击事件
                onPageClicked: function (event, originalEvent, type, page) {
                    if(${check == 1}){
                        location.href = url+"?page=" + page;
                    }else if(${check == 2}){
                        location.href = url+"&page=" + page;
                    }else if(${check == 3}){
                        location.href = url+"?page=" + page;
                    }else if(${check == 4}){
                        location.href = url+"&page=" + page;
                    }else if(${check == 5}){
                        location.href = url+"?page=" + page;
                    }
                }
            };
            if(${check == 1}){
                element1.bootstrapPaginator(options);
            }else if(${check == 2}){
                element2.bootstrapPaginator(options);
            }else if(${check == 3}){
                element3.bootstrapPaginator(options);
            }else if(${check == 4}){
                element4.bootstrapPaginator(options);
            }else if(${check == 5}){
                element5.bootstrapPaginator(options);
            }
        }
    });
</script>
</body>
</html>