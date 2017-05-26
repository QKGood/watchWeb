<%@ page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>鞋子详情</title>
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
                <li class="active"><a href="<%=path%>/shose/product/${requestScope.shose.brand.des}">${requestScope.shose.brand.des}</a></li>
                <li class="active">鞋子详情</li>
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
                                <li data-thumb="<%=path %>/${requestScope.shose.image}">
                                    <div class="thumb-image"> <img src="<%=path %>/${requestScope.shose.image}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                                <li data-thumb="<%=path %>/${requestScope.shose.image1}">
                                    <div class="thumb-image"> <img src="<%=path %>/${requestScope.shose.image1}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                                <li data-thumb="<%=path %>/${requestScope.shose.image2}">
                                    <div class="thumb-image"> <img src="<%=path %>/${requestScope.shose.image2}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                                <li data-thumb="<%=path %>/${requestScope.shose.image3}">
                                    <div class="thumb-image"> <img src="<%=path %>/${requestScope.shose.image3}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                                <li data-thumb="<%=path %>/${requestScope.shose.image4}">
                                    <div class="thumb-image"> <img src="<%=path %>/${requestScope.shose.image4}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                                <li data-thumb="<%=path %>/${requestScope.shose.image5}">
                                    <div class="thumb-image"> <img src="<%=path %>/${requestScope.shose.image5}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
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
                            <h2>${requestScope.shose.title}</h2>
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

                            <h5 class="item_price">￥${requestScope.shose.price}</h5>
                            <p>鞋子品质&nbsp;&nbsp;:&nbsp;<a class="function" style="text-decoration: none;margin-left: 7%;">${requestScope.shose.table}</a></p>
                            <div class="available">
                                <ul>
                                    <li>颜色选择<select>
                                        <option selected="selected">加姜戈微信选颜色</option>
                                        <option>黑色</option>
                                        <option>红色</option>
                                        <option>白色</option>
                                        <option>蓝色</option>
                                    </select></li>
                                    <li class="size-in">鞋子尺码<select>
                                        <option selected="selected">中国尺码</option>
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
                                    <span class="women1">${requestScope.shose.type}</span></li>
                                <li><span>类型&nbsp;&nbsp;&nbsp;:</span>
                                    <span class="women1">${requestScope.shose.style.des}</span></li>
                                <li><span>材质&nbsp;&nbsp;&nbsp;:</span>
                                    <span class="women1">${requestScope.shose.material.des}</span></li>
                            </ul>
                            <a href="#" class="add-cart item_add">立即购买</a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="tabs">
                    <ul class="menu_drop">
                        <li class="item1"><a href=""><img src="<%=path %>/images/arrow.png" alt="">鞋子参数</a>
                            <ul class="parameter1" style="background: #fff;">
                                <li class="subitem0"><span class="parameter"style="height: 20px;"></span></li>
                                <li class="subitem1"><span class="parameter">品牌：${requestScope.shose.brand.des}</span></li>
                                <li class="subitem4"><span class="parameter">产地：${requestScope.shose.origin.des}</span></li>
                                <li class="subitem4"><span class="parameter">风格：${requestScope.shose.style.des}</span></li>
                                <li class="subitem3"><span class="parameter">款式：${requestScope.shose.type}</span></li>
                                <p><i class="parameter" style="height: 100%;font-style: normal;">描述：<b style="font-size: 14px;font-weight: normal;">${requestScope.shose.des}</b></i></p>
                                <li class="subitem4"><span class="parameter">材质：${requestScope.shose.material.des}</span></li>
                            </ul>
                        </li>
                        <li class="item2"><a href="#"><img src="<%=path %>/images/arrow.png" alt="">鞋子细节图片</a>
                            <ul>
                                <li class="subitem0"><img alt="" src="/${requestScope.shose.image}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.shose.image1}" style="width: 100%"></li>
                                <li class="subitem2"><img alt="" src="/${requestScope.shose.image2}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.shose.image3}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.shose.image4}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.shose.image5}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.shose.image6}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.shose.image7}" style="width: 100%"></li>
                                <li class="subitem0"><img alt="" src="/${requestScope.shose.image8}" style="width: 100%"></li>
                            </ul>
                        </li>
                        <li class="item3"><a href="#"><img src="<%=path %>/images/arrow.png" alt="">实拍视频</a>
                            <ul>
                                <li>
                                    <video src="/${requestScope.shose.video}" id = "video" controls="controls" style="width: 100%;">抱歉,您的浏览器无法播放视频.</video>
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
                        <c:forEach items="${requestScope.shoses}" var="w">
                            <div class="col-md-4 product-left p-left">
                                <div class="product-main simpleCart_shelfItem">
                                    <a href="/shose/details/${w.id}" class="mask"><img class="img-responsive zoom-img" src="<%=path %>/${w.image}" alt="" /></a>
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
                    <form action="/shose/queryByPrices" method="get">
                        <section  class="sky-form">
                            <h4>鞋子分类</h4>
                            <div class="row1 row2 scroll-pane" >
                                <div class="col col-4">
                                    <label class="checkbox"><input type="radio" name="type"  value="跑步鞋"checked=""><i></i>跑步鞋</label>
                                    <label class="checkbox"><input type="radio" name="type"  value="足球鞋"><i></i>足球鞋</label>
                                    <label class="checkbox"><input type="radio" name="type"  value="篮球鞋"><i></i>篮球鞋</label>
                                    <label class="checkbox"><input type="radio" name="type"  value="滑板鞋"><i></i>滑板鞋</label>
                                    <label class="checkbox"><input type="radio" name="type"  value="帆布鞋"><i></i>帆布鞋</label>
                                    <label class="checkbox"><input type="radio" name="type"  value="真皮鞋"><i></i>真皮鞋</label>
                                    <label class="checkbox"><input type="radio" name="type"  value="休闲鞋"><i></i>休闲鞋</label>
                                </div>
                            </div>
                        </section>
                        <section  class="sky-form">
                            <h4>品牌选择</h4>
                            <div class="row1 row2 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="radio" name="des" value=""checked=""><i></i>所有品牌</label>
                                    <label class="checkbox"><input type="radio" name="des" value="万斯"><i></i>万斯(Vans)</label>
                                    <label class="checkbox"><input type="radio" name="des" value="耐克"><i></i>耐克(Nike)</label>
                                    <label class="checkbox"><input type="radio" name="des" value="彪马"><i></i>彪马(Puma)</label>
                                    <label class="checkbox"><input type="radio" name="des" value="匡威"><i></i>匡威(Convers)</label>
                                    <label class="checkbox"><input type="radio" name="des" value="锐步"><i></i>锐步(Reebok)</label>
                                    <label class="checkbox"><input type="radio" name="des" value="亚瑟士"><i></i>亚瑟士(Asics)</label>
                                    <label class="checkbox"><input type="radio" name="des" value="斯凯奇"><i></i>斯凯奇(Skechres)</label>
                                    <label class="checkbox"><input type="radio" name="des" value="乔丹"><i></i>乔丹(JordanBrand)</label>
                                    <label class="checkbox"><input type="radio" name="des" value="新百伦"><i></i>新百伦(New Balance)</label>
                                    <label class="checkbox"><input type="radio" name="des" value="阿迪达斯"><i></i>阿迪达斯(Adidas)</label>
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

<%--  tail start--%>
<%@ include file="../common/tail.jsp" %>
<%--  tail end--%>

</body>
</html>