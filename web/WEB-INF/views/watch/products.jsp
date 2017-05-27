<%@ page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
    </script>

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

<%--  tail start--%>
<%@ include file="../common/tail.jsp" %>
<%--  tail end--%>

<%--pageBtn strat--%>
<script type="text/javascript" src="<%=path %>/js/bootstrap-paginator.js"></script>
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
<%--pageBtn end--%>

</body>
</html>