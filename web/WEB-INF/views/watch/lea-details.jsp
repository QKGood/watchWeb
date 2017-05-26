﻿<%@ page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>皮具详情</title>
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
    <script type="<%=path %>/application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--start-menu-->
    <script src="<%=path %>/js/simpleCart.min.js"> </script>
    <link href="<%=path %>/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="<%=path %>/js/memenu.js"></script>
    <script>$(document).ready(function(){$(".memenu").memenu();});</script>
    <!--dropdown-->
    <script src="<%=path %>/js/jquery.easydropdown.js"></script>
    <script type="text/javascript">
        $(function() {

            var menu_ul = $('.menu_drop > li > ul'),
                    menu_a  = $('.menu_drop > li > a');

            menu_ul.hide();

            menu_a.click(function(e) {
                e.preventDefault();
                if(!$(this).hasClass('active')) {
                    menu_a.removeClass('active');
                    menu_ul.filter(':visible').slideUp('normal');
                    $(this).addClass('active').next().stop(true,true).slideDown('normal');
                } else {
                    $(this).removeClass('active');
                    $(this).next().stop(true,true).slideUp('normal');
                }
            });

        });
        /*导航栏*/
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
                <li class="active"><a href="<%=path%>/leather/product/${requestScope.leather.brand.des}">${requestScope.leather.brand.des}</a></li>
                <li class="active">皮具详情</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->
<!--start-single-->
<div class="single contact">
    <div class="container">
        <div class="single-main">
            <div class="col-md-9 single-main-left">
                <div class="sngl-top">
                    <div class="col-md-5 single-top-left">
                        <div class="flexslider">
                            <ul class="slides">
                                <li data-thumb="<%=path %>/${requestScope.leather.image}">
                                    <div class="thumb-image"> <img src="<%=path %>/${requestScope.leather.image}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                                <li data-thumb="<%=path %>/${requestScope.leather.image1}">
                                    <div class="thumb-image"> <img src="<%=path %>/${requestScope.leather.image1}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                                <li data-thumb="<%=path %>/${requestScope.leather.image2}">
                                    <div class="thumb-image"> <img src="<%=path %>/${requestScope.leather.image2}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                                <li data-thumb="<%=path %>/${requestScope.leather.image3}">
                                    <div class="thumb-image"> <img src="<%=path %>/${requestScope.leather.image3}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                                <li data-thumb="<%=path %>/${requestScope.leather.image4}">
                                    <div class="thumb-image"> <img src="<%=path %>/${requestScope.leather.image4}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                                <li data-thumb="<%=path %>/${requestScope.leather.image5}">
                                    <div class="thumb-image"> <img src="<%=path %>/${requestScope.leather.image5}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                            </ul>
                        </div>
                        <!-- FlexSlider -->
                        <script src="<%=path %>/js/imagezoom.js"></script>
                        <script defer src="<%=path %>/js/jquery.flexslider.js"></script>
                        <link rel="stylesheet" href="<%=path %>/css/flexslider.css" type="text/css" media="screen" />

                        <script>
                            // Can also be used with $(document).ready()
                            $(window).load(function() {
                                $('.flexslider').flexslider({
                                    animation: "slide",
                                    controlNav: "thumbnails"
                                });
                            });
                        </script>
                    </div>
                    <div class="col-md-7 single-top-right">
                        <div class="single-para simpleCart_shelfItem">
                            <h2>${requestScope.leather.title}</h2>
                            <div class="star-on">
                                <ul class="star-footer">
                                    <li><a href=""><i> </i></a></li>
                                    <li><a href=""><i> </i></a></li>
                                    <li><a href=""><i> </i></a></li>
                                    <li><a href=""><i> </i></a></li>
                                    <li><a href=""><i> </i></a></li>
                                </ul>
                                <div class="review">
                                    <a href="#">推荐热度</a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>

                            <h5 class="item_price">￥${requestScope.leather.price}</h5>
                            <p>皮具品质&nbsp;&nbsp;:&nbsp;<a class="function" style="text-decoration: none;margin-left: 7%;">${requestScope.leather.table}</a></p>
                            <div class="available">
                                <ul>
                                    <li>颜色选择<select>
                                        <option selected="selected">加姜戈微信选颜色</option>
                                        <option>黑色</option>
                                        <option>红色</option>
                                        <option>白色</option>
                                        <option>蓝色</option>
                                    </select></li>
                                    <li class="size-in">皮具尺寸<select>
                                        <option selected="selected">所有尺寸</option>
                                        <option>44</option>
                                        <option>43</option>
                                        <option>42</option>
                                        <option>41</option>
                                        <option>39</option>
                                        <option>38</option>
                                        <option>37</option>
                                        <option>36</option>
                                        <option>35</option>
                                        <option>49</option>
                                        <option>48</option>
                                        <option>47</option>
                                        <option>46</option>
                                        <option>45</option>
                                        <option>34</option>
                                        <option>33</option>
                                        <option>32</option>
                                        <option>31</option>
                                    </select></li>
                                    <div class="clearfix"> </div>
                                </ul>
                            </div>
                            <ul class="tag-men">
                                <li><span>款式&nbsp;&nbsp;&nbsp;:</span>
                                    <span class="women1">${requestScope.leather.type}</span></li>
                                <li><span>风格&nbsp;&nbsp;&nbsp;:</span>
                                    <span class="women1">${requestScope.leather.style.des}</span></li>
                                <li><span>材质&nbsp;&nbsp;&nbsp;:</span>
                                    <span class="women1">${requestScope.leather.material.des}</span></li>
                            </ul>
                            <a href="#" class="add-cart item_add">立即购买</a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="tabs">
                    <ul class="menu_drop">
                        <li class="item1"><a href=""><img src="<%=path %>/images/arrow.png" alt="">皮具参数</a>
                            <ul class="parameter1" style="background: #fff;">
                                <li class="subitem0"><span class="parameter"style="height: 20px;"></span></li>
                                <li class="subitem1"><span class="parameter">品牌：${requestScope.leather.brand.des}</span></li>
                                <li class="subitem4"><span class="parameter">产地：${requestScope.leather.origin.des}</span></li>
                                <li class="subitem4"><span class="parameter">风格：${requestScope.leather.style.des}</span></li>
                                <li class="subitem3"><span class="parameter">款式：${requestScope.leather.type}</span></li>
                                <p><i class="parameter" style="height: 100%;font-style: normal;">描述：<b style="font-size: 14px;font-weight: normal;">${requestScope.leather.des}</b></i></p>
                                <li class="subitem4"><span class="parameter">材质：${requestScope.leather.material.des}</span></li>
                            </ul>
                        </li>
                        <li class="item2"><a href="#"><img src="<%=path %>/images/arrow.png" alt="">皮具细节图片</a>
                            <ul>
                                <li class="subitem0"><img alt="" src="/${requestScope.leather.image}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.leather.image1}" style="width: 100%"></li>
                                <li class="subitem2"><img alt="" src="/${requestScope.leather.image2}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.leather.image3}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.leather.image4}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.leather.image5}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.leather.image6}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.leather.image7}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.leather.image8}" style="width: 100%"></li>
                            </ul>
                        </li>
                        <li class="item3"><a href="#"><img src="<%=path %>/images/arrow.png" alt="">实拍视频</a>
                            <ul>
                                <li>
                                    <video src="/${requestScope.leather.video}" id = "video" controls="controls" style="width: 100%;">抱歉,您的浏览器无法播放视频.</video>
                                </li>
                            </ul>
                        </li>
                        <li class="item4"><a href="#"><img src="<%=path %>/images/arrow.png" alt="">了解更多详情加我微信</a>
                            <ul>
                                <li class="subitem2"><img alt="" src="<%=path %>/images/6666.jpg" style="width: 40%;"></li>
                            </ul>
                        </li>

                        <li class="item5"><a href="#"><img src="<%=path %>/images/arrow.png" alt="">退换货说明</a>
                            <ul>
                                <li class="subitem0" style="height: 20px"><span> </span></li>
                                <li class="subitem1"> <span style="margin-top: 0%"><h3>实物拍摄：</h3>
                                    <p style="font-size: 16px;text-indent: 10em;">姜戈工作室承诺，所售商品均是100%实物拍摄。</p>
                                    </span></li>
                                <li class="subitem0" style="height: 0px"><span> </span></li>
                                <li class="subitem1"> <span style="margin-top: 0%"><h3>关于尺寸：</h3>
                                    <p style="font-size: 16px;text-indent: 10em;">姜戈工作室保证，描述尺寸100%和实物匹配,细节详情可加姜戈工作室微信。</p>
                                    </span></li>
                                <li class="subitem0" style="height: 0px"><span> </span></li>
                                <li class="subitem1"> <span style="margin-top: 0%"><h3>关于发货：</h3>
                                    <p style="font-size: 16px;text-indent: 10em;">姜戈工作室合作快递为顺丰快递，力求每块表都安全 便捷 迅速的到达每位顾客手上.</p>
                                    </span></li>
                                <li class="subitem0" style="height: 0px"><span> </span></li>
                                <li class="subitem1"> <span style="margin-top: 0%"><h3>关于退货：</h3>
                                    <p style="font-size: 16px;text-indent: 10em;">姜戈工作室秉持7天无理由退换货，退货前请一定先联系姜戈工作室人员，我们一定第一时间为您处理.保证您购物放心无忧.</p>
                                    </span></li>
                                <li class="subitem0" style="height: 0px"><span> </span></li>
                                <li class="subitem1"> <span style="margin-top: 0%"><h3>关于售后：</h3>
                                    <p style="font-size: 16px;text-indent: 10em;">姜戈工作室复刻品质的手表无人为损坏保修一年,瑞士定制级保修二年,原单正品机芯保修二年,如果您在任何使用过程中手表产生了偷停，动力不足的情况，请不要自己盲目拆卸，请联系姜戈售后.在保修时间范围内我们会及时为您维修或者更换机芯，返修的周期为10天左右</p>
                                    </span></li>
                            </ul>
                        </li>

                    </ul>
                </div>
                <div class="latestproducts">
                    <div class="product-one">
                        <c:forEach items="${requestScope.leathers}" var="w">
                            <div class="col-md-4 product-left p-left">
                                <div class="product-main simpleCart_shelfItem">
                                    <a href="/leather/details/${w.id}" class="mask"><img class="img-responsive zoom-img" src="<%=path %>/${w.image}" alt="" /></a>
                                    <div class="product-bottom">
                                        <h3>${w.title}</h3>
                                        <p>${w.style.des}</p>
                                        <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ ${w.price}</span></h4>
                                    </div>
                                    <div class="srch">
                                        <span>${w.table}</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 single-right">
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
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--end-single-->
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
</body>
</html>