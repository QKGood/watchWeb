<%--
  Created by IntelliJ IDEA.
  User: iJangoGuo
  Date: 2017/5/26
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="Java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

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