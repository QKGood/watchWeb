<%--
  Created by IntelliJ IDEA.
  User: iJangoGuo
  Date: 2017/5/25
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="Java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%--rightMenu start--%>
<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
<style type="text/css">
    body,div,ul,li,p,a,img{
        padding: 0;
        margin: 0;
    }
    /*右侧悬浮菜单*/
    .slide{
        width: 50px;
        height: 250px;
        position: fixed;
        top: 50%;
        margin-top: -126px;
        background: #9999;
        right: 0;
        border-radius: 5px 0 0 5px;
        z-index: 999;
    }
    .slide ul{
        list-style: none;
    }
    .slide .icon li{
        width: 49px;
        height: 50px;
        background: url(<%=path%>/images/icon.png) no-repeat;
    }
    .slide .icon .up{
        background-position:-330px -120px ;
    }
    .slide .icon li.qq{
        background-position:-385px -73px ;
    }
    .slide .icon li.tel{
        background-position:-385px -160px ;
    }
    .slide .icon li.wx{
        background-position:-385px -120px ;
    }
    .slide .icon li.down{
        background-position:-330px -160px ;
    }
    .slide .info{
        top: 50%;
        height: 147px;
        position: absolute;
        right: 100%;
        background: #9999;
        width: 0px;
        overflow: hidden;
        margin-top: -73.5px;
        transition:0.5s;
        border-radius:4px 0 0 4px ;
    }
    .slide .info.hover{
        width: 145px;

    }
    .slide .info li{
        width: 145px;
        color: #999999;
        text-align: center;
    }
    .slide .info li p{
        font-size: 1.2em;
        line-height: 2em;
        padding: 15px;
        text-align: left;
    }
    .slide .info li.qq p a{
        display: block;
        margin-top: 12px;
        width: 100px;
        height: 32px;
        line-height: 32px;
        color: #999999;
        text-align: center;
        text-decoration: none;
        border: 1px solid #CCCCCC;
        border-radius: 5px;
    }
    .slide .info li.qq p a:hover{
        color: #CCCCCC;
        border: none;
        background: #999999;
    }
    .slide .info li div.img{
        height: 100%;
        background: #9999;
        margin: 15px;
    }
    .slide .info li div.img img{
        width: 100%;
        height: 100%;
    }
    /*控制菜单的按钮*/
    .index_cy{
        width: 30px;
        height: 30px;
        background: url(<%=path%>/images/index_cy.png);
        position: fixed;
        right: 0;
        top: 50%;
        margin-top: 140px;
        background-position: 62px 0;
        cursor: pointer;
    }
    .index_cy2{
        width: 30px;
        height: 30px;
        background: url(<%=path%>/images/index_cy.png);
        position: fixed;
        right: 0;
        top: 50%;
        margin-top: 140px;
        background-position: 30px 0;
        cursor: pointer;
    }

    /*自适应 当屏小于1050时隐藏*/
    @media screen and (max-width: 300px) {
        .slide{
            display: none;
        }
        #btn{
            display: none;
        }

    }
</style>
<script type="text/javascript">
    function pageScroll() {
        window.scrollBy(0,-25);
        scrolldelay = setTimeout('pageScroll()',0.1);
        if(document.body.scrollTop== 0) clearTimeout(scrolldelay);
    }

    function pageEnd() {
        window.scrollBy(0,18);
        scrolldelayEnd = setTimeout('pageEnd()',0.1);

        var $document = $(document);//缓存一下$(document)
        $(window).scroll(function(){
            var $this = $(this),
                scrollTop = $this.scrollTop(),
                scrollHeight = $document.height(),
                windowHeight = $this.height();
            if(scrollTop + windowHeight >= scrollHeight){
                clearTimeout(scrolldelayEnd);
            }
        });

    }
</script>
<%--rightMenu end--%>

<!--右侧悬浮菜单-->
<div class="slide">
    <ul class="icon">
        <li class="up" title="顶端">
            <button style="background: transparent;cursor: pointer;margin-top: 15px;height: 50%;width: 100%;border: none;" onclick="pageScroll();"></button>
        </li>
        <li class="qq"></li>
        <li class="tel"></li>
        <li class="wx"></li>
        <li class="down" title="底部">
            <button style="background: transparent;cursor: pointer;margin-top: 15px;height: 50%;width: 100%;border: none;" onclick="pageEnd();"></button>
        </li>
    </ul>
    <ul class="info">
        <li class="qq">
            <p style="text-align: center;margin-top: 15px;">点我QQ咨询<a href="http://wpa.qq.com/msgrd?v=3&uin=3234396045&site=qq&menu=yes" target="_blank" style="font-size: 18px;margin-left: 12px;">在线咨询</a></p>
        </li>
        <li class="tel">
            <p style="font-size: 17px;">咨询热线：<br><b>18370949034</b><br>客服qq：<br><b>3234396045</b></p>
        </li>
        <li class="wx">
            <div class="img"><img src="/images/6666.jpg" style="width: 90%;height: 90%"/></div>
            <p style="font-size: 14px;margin-top: -60px;text-align: center;"><b>关注姜戈公众号</b></p>
        </li>
    </ul>
</div>


<%--rightMenu starts--%>
<div id="btn" class="index_cy"></div>
<script type="text/javascript">
    $(function(){

        $('.slide .icon li').not('.up,.down').mouseenter(function(){
            $('.slide .info').addClass('hover');
            $('.slide .info li').hide();
            $('.slide .info li.'+$(this).attr('class')).show();//.slide .info li.qq
        });
        $('.slide').mouseleave(function(){
            $('.slide .info').removeClass('hover');
        });

        $('#btn').click(function(){
            $('.slide').toggle();
            if($(this).hasClass('index_cy')){
                $(this).removeClass('index_cy');
                $(this).addClass('index_cy2');
            }else{
                $(this).removeClass('index_cy2');
                $(this).addClass('index_cy');
            }

        });

    });
</script>
<%--rightMenu end--%>