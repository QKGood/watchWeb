<%@ page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>原单皮具</title>
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
                <li class="active">所有皮具</li>
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
                <c:when test="${requestScope.leathers.size() > 0 }">
                    <div class="col-md-9 prdt-left">
                        <c:forEach items="${requestScope.leathers}" var="s">
                            <div class="col-md-4 product-left p-left" style="margin-top: 1%;">
                                <div class="product-main simpleCart_shelfItem">
                                    <a href="<%=path%>/leather/details/${s.id}" class="mask"><img class="img-responsive zoom-img" src="<%=path %>/${s.image}" alt="" style="height: 190px"/></a>
                                    <div class="product-bottom">
                                        <h3>${s.title}</h3>
                                        <p>${s.style.des}</p>
                                        <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">￥${s.price}</span></h4>
                                    </div>
                                    <div class="srch srch1">
                                        <span>${s.table}</span>
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
                    <form action="/leather/queryByPrices" method="get">
                    <section  class="sky-form">
                        <h4>皮具款式</h4>
                        <div class="row1 row2 scroll-pane" >
                            <div class="col col-4">
                                <label class="checkbox"><input type="radio" name="type"  value="公文包"checked=""><i></i>公文包</label>
                                <label class="checkbox"><input type="radio" name="type"  value="手包"><i></i>手包</label>
                                <label class="checkbox"><input type="radio" name="type"  value="钱夹"><i></i>钱夹</label>
                                <label class="checkbox"><input type="radio" name="type"  value="皮带"><i></i>皮带</label>
                                <label class="checkbox"><input type="radio" name="type"  value="卡夹"><i></i>卡夹</label>
                                <label class="checkbox"><input type="radio" name="type"  value="手提包"><i></i>手提包</label>
                                <label class="checkbox"><input type="radio" name="type"  value="肩背包"><i></i>肩背包</label>
                                <label class="checkbox"><input type="radio" name="type"  value="斜挎包"><i></i>斜挎包</label>
                                <label class="checkbox"><input type="radio" name="type"  value="钥匙包"><i></i>钥匙包</label>
                                <label class="checkbox"><input type="radio" name="type"  value="手拿包"><i></i>手拿包</label>
                                <label class="checkbox"><input type="radio" name="type"  value="双肩包"><i></i>双肩包</label>
                                <label class="checkbox"><input type="radio" name="type"  value="手提旅行袋"><i></i>手提旅行袋</label>
                            </div>
                        </div>
                    </section>
                    <section  class="sky-form">
                        <h4>品牌选择</h4>
                        <div class="row1 row2 scroll-pane">
                            <div class="col col-4">
                                <label class="checkbox"><input type="radio" name="des" value=""checked=""><i></i>所有品牌</label>
                                <label class="checkbox"><input type="radio" name="des" value="迪奥"><i></i>迪奥(Dior)</label>
                                <label class="checkbox"><input type="radio" name="des" value="古驰"><i></i>古驰(Gucci)</label>
                                <label class="checkbox"><input type="radio" name="des" value="蔻驰"><i></i>蔻驰(Coach)</label>
                                <label class="checkbox"><input type="radio" name="des" value="登喜路"><i></i>登喜路(dunhill)</label>
                                <label class="checkbox"><input type="radio" name="des" value="范思哲"><i></i>范思哲(Versace</label>
                                <label class="checkbox"><input type="radio" name="des" value="香奈儿"><i></i>香奈儿(Chanel)</label>
                                <label class="checkbox"><input type="radio" name="des" value="普拉达"><i></i>普拉达(Prada)</label>
                                <label class="checkbox"><input type="radio" name="des" value="爱马仕"><i></i>爱马仕(Hermès)</label>
                                <label class="checkbox"><input type="radio" name="des" value="路易威登"><i></i>路易威登(L_V)</label>
                            </div>
                        </div>
                    </section>
                    <section class="sky-form">
                        <h4>价格区间</h4>
                        <div class="row1 row2 scroll-pane" style="overflow: hidden">
                            <div class="col col-4">
                                <label class="radio"><input type="radio" name="prices"value="6"checked=""><i></i>所有</label>
                                <label class="radio"><input type="radio" name="prices"value="1"><i></i>240以下</label>
                                <label class="radio"><input type="radio" name="prices"value="2"><i></i>240至350</label>
                                <label class="radio"><input type="radio" name="prices"value="3"><i></i>350至550</label>
                                <label class="radio"><input type="radio" name="prices"value="4"><i></i>550至950</label>
                                <label class="radio"><input type="radio" name="prices"value="5"><i></i>950以上</label>
                            </div>
                        </div>
                    </section>
                    <section class="sky-form">
                        <h4><input type="submit" value="搜索"/></h4>
                    </section>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
<!--product-end-->

<%--  tail starts--%>
<%@ include file="../common/tail.jsp" %>
<%--  tail end--%>

<%--pageBtn start--%>
<script type="text/javascript">
    $(function(){
        var element1 = $('#bp-element1');
        var element2 = $('#bp-element2');
        var element3 = $('#bp-element3');
        var element4 = $('#bp-element4');
        var element5 = $('#bp-element5');
        var url = '';
        if(${check == 1}){
            url = '/leather/product/${brand}'
        }else if(${check == 2}){
            url = '/leather/queryByTitleDes?value=${value}'
        }else if(${check == 3}){
            url = '/shose/productsType/${type}'
        }else if(${check == 4}){
            url = '/leather/queryByPrices?type=${type}&des=${des}&prices=${prices}'
        }
        else if(${check == 5}){
            url = '/shose/productsBSO/${des}'
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
<%--pageBtn end--%>
</body>
</html>