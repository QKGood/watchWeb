<%--
  Created by IntelliJ IDEA.
  User: iJangoGuo
  Date: 2017/5/26
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="Java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!--start-menu-->
<script src="<%=path%>/js/simpleCart.min.js"> </script>
<link href="<%=path%>/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<%=path%>/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>

<!--top-header start-->
<div class="top-header">
    <div class="container">
        <div class="top-header-main">
            <div class="col-md-6 top-header-left">
                <div class="drop">
                    <div class="box">
                        <select class="dropdown drop" onchange="self.location.href=options[selectedIndex].value">
                            <option value="" class="label">快速进入 :&nbsp;</option>
                            <option value="http://weidian.com/?userid=1093447508">姜戈微店</option>
                            <option value="<%=path%>/index">姜戈官网</option>
                        </select>
                    </div>
                    <div class="box1">
                        <select class="dropdown" onchange=mbar(this) name="select">
                            <option value="" class="label">友情链接 :&nbsp;</option>
                            <option value="<%=path%>/forum/forum">专业技术贴</option>
                            <option value="http://tieba.baidu.com/f?ie=utf-8&kw=姜戈名品">贴吧论坛</option>
                            <option value="http://www.xbiao.com/">腕表之家</option>
                        </select>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-md-6 top-header-left">
                <div class="cart box_1">
                    <img src="<%=path %>/images/cart-1.png" style="height:37px;" alt="" />
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--top-header end-->
<!--start-logo start-->
<div class="logo">
    <p>
        <a style="font-weight: bolder; font-family: MingLiU; font-size: 19px;cursor: default;">&nbsp;Jango&nbsp;&nbsp;&nbsp;MingPin</a>
    </p>
    <p>
        <a style="font-weight: bolder; font-family: KaiTi; font-size: 38px; color: #000000; cursor: default;">姜戈名品</a>
    </p>
</div>
<!--start-logo end-->
<!--bottom-header 导航条-->
<div class="header-bottom">
    <div class="container">
        <div class="header">
            <div class="col-md-9 header-left">
                <div class="top-nav">
                    <ul class="memenu skyblue">
                        <li class="active"><a href="<%=path%>/index">首页</a></li>
                        <li class="grid"><a href="#">男表</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <h4>顶级 复刻</h4>
                                        <ul>
                                            <li><a href="<%=path%>/watch/products/万国/男款">万国(IWC)</a></li>
                                            <li><a href="<%=path%>/watch/products/劳力士/男款">劳力士(Rolex)</a></li>
                                            <li><a href="<%=path%>/watch/products/欧米茄/男款">欧米茄(OMEGA)</a></li>
                                            <li><a href="<%=path%>/watch/products/卡地亚/男款">卡地亚(Cartier)</a></li>
                                            <li><a href="<%=path%>/watch/products/真力时/男款">真力时(Zenith)</a></li>
                                            <li><a href="<%=path%>/watch/products/宇舶/男款">宇舶(Hublot)</a></li>
                                            <li><a href="<%=path%>/watch/products/爱彼/男款">爱彼(Audemars Piguet)</a></li>
                                            <li><a href="<%=path%>/watch/products/积家/男款">积家(Jaeger LeCoultre)</a></li>
                                            <li><a href="<%=path%>/watch/products/宝珀/男款">宝珀(BLANCPAIN)</a></li>
                                            <li><a href="<%=path%>/watch/products/万宝龙/男款">万宝龙(Montblanc)</a></li>
                                            <li><a href="<%=path%>/watch/products/百达翡丽/男款">百达翡丽(Patek Philippe)</a></li>
                                            <li><a href="<%=path%>/watch/products/江诗丹顿/男款">江诗丹顿(Vacheron Constantin)</a></li>
                                            <li><a href="<%=path%>/watch/productsType/男款">更多+</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>小众 轻奢</h4>
                                        <ul>
                                            <li><a href="<%=path%>/watch/products/浪琴/男款">浪琴(Longines)</a></li>
                                            <li><a href="<%=path%>/watch/products/天梭/男款">天梭(Tissot)</a></li>
                                            <li><a href="<%=path%>/watch/products/美度/男款">美度(Mido)</a></li>
                                            <li><a href="<%=path%>/watch/products/精工/男款">精工(SEIKO)</a></li>
                                            <li><a href="<%=path%>/watch/products/梅花/男款">梅花(Titoni)</a></li>
                                            <li><a href="<%=path%>/watch/products/摩凡陀/男款">摩凡陀(Movado)</a></li>
                                            <li><a href="<%=path%>/watch/products/泰格豪雅/男款">泰格豪雅(TAG Heuer)</a></li>
                                            <li><a href="<%=path%>/watch/productsType/男款">更多+</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>精致 石英</h4>
                                        <ul>
                                            <li><a href="<%=path%>/watch/products/古驰/男款">古驰(GUCCI)</a></li>
                                            <li><a href="<%=path%>/watch/products/范思哲/男款">范思哲(Versace)</a></li>
                                            <li><a href="<%=path%>/watch/products/阿玛尼/男款">阿玛尼(Armani)</a></li>
                                            <li><a href="<%=path%>/watch/products/卡西欧/男款">卡西欧(Casio)</a></li>
                                            <li><a href="<%=path%>/watch/products/CK/男款">CK(Calvin Klein)</a></li>
                                            <li><a href="<%=path%>/watch/products/施华洛世奇/男款">施华洛世奇(Swarovski)</a></li>
                                            <li><a href="<%=path%>/watch/products/丹尼尔惠灵顿/男款">丹尼尔惠灵顿(Daniel Wellington)</a></li>
                                            <li><a href="<%=path%>/watch/productsType/男款">更多+</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div></li>
                        <li class="grid"><a href="#">女表</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <h4>定制 复刻</h4>
                                        <ul>
                                            <li><a href="<%=path%>/watch/products/美度/女款">美度(Mido)</a></li>
                                            <li><a href="<%=path%>/watch/products/浪琴/女款">浪琴(Longines)</a></li>
                                            <li><a href="<%=path%>/watch/products/万国/女款">万国(IWC)</a></li>
                                            <li><a href="<%=path%>/watch/products/香奈儿/女款">香奈儿(Chanel)</a></li>
                                            <li><a href="<%=path%>/watch/products/宝玑/女款">宝玑(Breguet)</a></li>
                                            <li><a href="<%=path%>/watch/products/劳力士/女款">劳力士(Rolex)</a></li>
                                            <li><a href="<%=path%>/watch/products/欧米茄/女款">欧米茄(OMEGA)</a></li>
                                            <li><a href="<%=path%>/watch/products/卡地亚/女款">卡地亚(Cartier)</a></li>
                                            <li><a href="<%=path%>/watch/products/百达翡丽/女款">百达翡丽(Patek Philippe)</a></li>
                                            <li><a href="<%=path%>/watch/products/积家/女款">积家(Jaeger LeCoultre)</a></li>
                                            <li><a href="<%=path%>/watch/products/诺莫斯/女款">诺莫斯(Nomos)</a></li>
                                            <li><a href="<%=path%>/watch/products/江诗丹顿/女款">江诗丹顿(Vacheron Constantin)</a></li>
                                            <li><a href="<%=path%>/watch/products/理查德米勒/女款">理查德米勒(Richard Mille)</a></li>
                                            <li><a href="<%=path%>/watch/productsType/女款">更多+</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="<%=path%>/watch/productsBSO/all/1"style="color:#73B6E1;">正品 原单</a></h4>
                                        <ul>
                                            <li><a href="<%=path%>/watch/productsBSO/天梭/1">天梭(Tissot)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/古驰/1">古驰(GUCCI)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/范思哲/1">范思哲(Versace)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/阿玛尼/1">阿玛尼(Armani)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/卡西欧/1">卡西欧(Casio)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/摩凡陀/1">摩凡陀(Movado)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/CK/1">CK(Calvin Klein)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/亨利伦敦/1">亨利伦敦(Henry London)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/施华洛世奇/1">施华洛世奇(Swarovski)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/丹尼尔惠灵顿/1">丹尼尔惠灵顿(Daniel Wellington)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/all/1">更多+</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="<%=path%>/leather/product/all" style="color:#73B6E1;">原单 皮具</a></h4>
                                        <ul>
                                            <li><a href="<%=path%>/leather/product/古驰">古驰(Gucci)</a></li>
                                            <li><a href="<%=path%>/leather/product/迪奥">迪奥(Dior)</a></li>
                                            <li><a href="<%=path%>/leather/product/蔻驰">蔻驰(Coach)</a></li>
                                            <li><a href="<%=path%>/leather/product/登喜路">登喜路(dunhill)</a></li>
                                            <li><a href="<%=path%>/leather/product/范思哲">范思哲(Versace)</a></li>
                                            <li><a href="<%=path%>/leather/product/香奈儿">香奈儿(Chanel)</a></li>
                                            <li><a href="<%=path%>/leather/product/普拉达">普拉达(Prada)</a></li>
                                            <li><a href="<%=path%>/leather/product/爱马仕">爱马仕(Hermès)</a></li>
                                            <li><a href="<%=path%>/leather/product/路易威登">路易威登(L_V)</a></li>
                                            <li><a href="<%=path%>/leather/product/all">更多+</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div></li>
                        <li class="grid"><a href="#">正品原单</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <h4><a href="<%=path%>/watch/productsBSO/all/1" style="color: #73B6E1;">原单 手表</a></h4>
                                        <ul>
                                            <li><a href="<%=path%>/watch/productsBSO/天梭/1">天梭(Tissot)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/古驰/1">古驰(Gucci)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/摩凡陀/1">摩凡陀(Movado)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/CK/1">CK(Calvin Klein)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/范思哲/1">范思哲(Versace)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/卡西欧/1">卡西欧(Casio)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/盖尔斯/1">盖尔斯(Guess)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/薇薇安/1">薇薇安(Vivienne)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/施华洛世奇/1">施华洛世奇(Swarovski)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/亨利伦敦/1">亨利伦敦(Henry London)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/丹尼尔惠灵顿/1">丹尼尔惠灵顿(DW)</a></li>
                                            <li><a href="<%=path%>/watch/productsBSO/all/1">更多+</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="<%=path%>/shose/product/all" style="color: #73B6E1;">原单 运动鞋</a></h4>
                                        <ul>
                                            <li><a href="<%=path%>/shose/product/万斯">万斯(Vans)</a></li>
                                            <li><a href="<%=path%>/shose/product/耐克">耐克(Nike)</a></li>
                                            <li><a href="<%=path%>/shose/product/彪马">彪马(Puma)</a></li>
                                            <li><a href="<%=path%>/shose/product/卡帕">卡帕(kappa)</a></li>
                                            <li><a href="<%=path%>/shose/product/匡威">匡威(Convers)</a></li>
                                            <li><a href="<%=path%>/shose/product/锐步">锐步(Reebok)</a></li>
                                            <li><a href="<%=path%>/shose/product/亚瑟士">亚瑟士(Asics)</a></li>
                                            <li><a href="<%=path%>/shose/product/乔丹">乔丹(JordanBrand)</a></li>
                                            <li><a href="<%=path%>/shose/product/新百伦">新百伦(New Balance)</a></li>
                                            <li><a href="<%=path%>/shose/product/斯凯奇">斯凯奇(Skechres)</a></li>
                                            <li><a href="<%=path%>/shose/product/阿迪达斯">阿迪达斯(Adidas)</a></li>
                                            <li><a href="<%=path%>/shose/product/all">更多+</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="<%=path%>/leather/product/all" style="color: #73B6E1;">原单 皮具</a></h4>
                                        <ul>
                                            <li><a href="<%=path%>/leather/product/古驰">古驰(Gucci)</a></li>
                                            <li><a href="<%=path%>/leather/product/迪奥">迪奥(Dior)</a></li>
                                            <li><a href="<%=path%>/leather/product/蔻驰">蔻驰(Coach)</a></li>
                                            <li><a href="<%=path%>/leather/product/普拉达">普拉达(Prada)</a></li>
                                            <li><a href="<%=path%>/leather/product/范思哲">范思哲(Versace)</a></li>
                                            <li><a href="<%=path%>/leather/product/香奈儿">香奈儿(Chanel)</a></li>
                                            <li><a href="<%=path%>/leather/product/爱马仕">爱马仕(Hermès)</a></li>
                                            <li><a href="<%=path%>/leather/product/登喜路">登喜路(dunhill)</a></li>
                                            <li><a href="<%=path%>/leather/product/路易威登">路易威登(L_V)</a></li>
                                            <li><a href="<%=path%>/leather/product/all">更多+</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div></li>
                        <li class="grid"><a href="http://tieba.baidu.com/f?ie=utf-8&kw=姜戈名品">论坛入口</a></li>
                        <li class="grid"><a href="<%=path%>/forum/forum">贴子专区</a></li>
                        <li class="grid"><a>微信二维码</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <a style="text-decoration: none">扫我加好友&nbsp;&nbsp;&nbsp;&nbsp;了解详情</a>
                                        <img alt="微信号:gyq18370949034" src="<%=path %>/images/6666.jpg" style="margin-left: 224px">
                                    </div>
                                </div>
                            </div></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 header-right">
                <div class="search-bar">
                    <form action="<%=path%>/watch/queryByTitleDes" method="get" target="_blank">
                        <input type="text" name = "value" value="请输入手表品牌/型号/款式" onfocus="this.value = '';"
                               onblur="if (this.value == '') {this.value = '请输入手表品牌/型号/款式';}">
                        <input type="submit" value="">
                    </form>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--bottom-the end header  导航条结束-->

