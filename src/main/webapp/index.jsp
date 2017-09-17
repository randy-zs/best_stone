<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>老张家石雕 -- 祖传手艺</title>
    <meta name="keywords" content="智能马桶，马桶，浴室柜，花洒，浴缸，淋浴房，恒洁卫浴，恒洁卫浴官网，广东恒洁卫浴有限公司，十大卫浴品牌，卫浴洁具，卫浴品牌，智能卫浴，hegii">
    <meta name="description" content="恒洁卫浴HEGII始终坚持“恒于心，专于质”的品牌价值观，以领先技术为消费者提供专业的卫浴洁具解决方案，连年荣膺中国卫浴领军企业十强、中国十大卫浴品牌，更多智能卫浴尽在HEGII恒洁卫浴官方网站。">
    <meta charset='utf-8'>
    <meta content='IE=edge' http-equiv='X-UA-Compatible'>
    <script type="text/javascript">
        var autoRedirect=function(){
            var w=window.screen.width;
            if (parseInt(w) < 960 && location.href.indexOf("/m/") < 0) {
                location.href="/m"+location.pathname;
            }
        };
        autoRedirect();
        window.onresize=function(){
            autoRedirect();
        };
    </script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <link href="https://cdn.bootcss.com/Swiper/3.4.0/css/swiper.min.css" rel="stylesheet">

    <link type="text/css" rel="stylesheet" href="http://hegii.com/assets/css/common.min.css" />

    <link type="text/css" rel="stylesheet" href="http://hegii.com/assets/css/index.min.css" />

</head>
<body>
<header class="theme-bright clearifix">


    <div class="logo pull-left"><a href="/" onclick="trackEvent('nav', 'logo')"><img src="img/theme-dark-logo.png" data-theme-dark="img/theme-dark-logo.png" data-theme-bright="img/theme-dark-logo.png" /></a></div>

    <div class="header pull-right">
        <!--main nav begin-->
        <nav>
            <ul>
                <li class="">
                    <a href="/salable/"  onclick="trackEvent('nav', 'top_bestseller')">畅销榜单</a>
                </li>
                <li class="double-q">
                    <a href="/double-q/"  onclick="trackEvent('nav', 'top_doubleq')">智能双Q</a>
                </li>
                <li class="">
                    <a href="javascript:;" onclick="trackEvent('nav','top_product')" class="submenu" data-control="product">产品一览</a>
                </li>
                <li class="">
                    <a href="/renovation/"  onclick="trackEvent('nav', 'top_taojian')">套间灵感</a>
                </li>
                <li class="">
                    <a href="javascript:;" onclick="trackEvent('nav','top_')" class="submenu" data-control="support">技术服务</a>
                </li>
                <li class="">
                    <a href="/about-hegii/"  onclick="trackEvent('nav', 'top_about')">关于恒洁</a>
                </li>
                <li class="">
                    <a href="/e-comm/"  onclick="trackEvent('nav', 'top_shop')">官方商城</a>
                </li>
                <li class="">
                    <a href="/dealer/"  onclick="trackEvent('nav', 'top_dealer')">网点查询</a>
                </li>
                <li class="zoom">
                    <a href="/search/"  onclick="trackEvent('nav', 'top_search')"><span class="glyphicon glyphicon-search"></span></a>
                </li>
            </ul>
        </nav>
        <!--main nav end-->
        <!--assistant begin-->
        <div class="site-assistant">
            <a href="javascript:;" class="assistant-switch"><img src="img/icon-assistant-open.jpg" data-icon-open="img/icon-assistant-open.jpg" data-icon-close="img/icon-assistant-close.jpg" class="img-responsive"></a>
            <ul>
                <li>
                    <a href="javascript:;" class="assistant-banner">
                        <img src="img/assistant-icon-01.png" class="center-block img-responsive" />
                        <span>最新活动</span>
                    </a>
                    <div class="assistant-banner-pop">
                        <a href="/about-hegii/action/" onclick="trackEvent('nav', 'side_banner1')"><img src="img/assistant-banner-01.png" class="img-responsive" alt="智能双Q系列"></a>
                        <a target="_blank" href="http://brandlive.hegii.com/pc/" onclick="trackEvent('nav', 'side_banner2')"><img src="img/assistant-banner-02.png" class="img-responsive" alt="节水中国行"></a>
                        <a target="_blank" href="javascript:;"><img src="img/assistant-banner-03.jpg" class="img-responsive" alt="梦想改造家"></a>
                    </div>
                </li>
                <li>
                    <a rel="nofollow" target="_blank" onclick="trackEvent('nav', 'side_chat')" href="https://hegii123.qiyukf.com/client?k=2b1f473a035ea415f9e334f4f37eda52&wp=1">
                        <img src="img/assistant-icon-02.png" class="center-block img-responsive" />
                        <span>在线客服</span>
                    </a>
                </li>
                <li>
                    <a href="/dealer/" onclick="trackEvent('nav', 'side_dealer')">
                        <img src="img/assistant-icon-03.png" class="center-block img-responsive" />
                        <span>网点查询</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;" class="assistant-wechat">
                        <img src="img/assistant-icon-wechat.png" class="center-block img-responsive" />
                        <span>关注微信</span>
                    </a>
                    <div class="assistant-wechat-pop">
                        <a href="javascript:;"><img src="img/qrcode-wechat-top.png" class="img-responsive"></a>
                    </div>
                </li>
                <li>
                    <a rel="nofollow" href="http://weibo.com/hengjieweiyu" target="_blank" onclick="trackEvent('nav', 'side_weibo')">
                        <img src="img/assistant-icon-weibo.png" class="center-block img-responsive" />
                        <span>关注微博</span>
                    </a>
                </li>
            </ul>
        </div>
        <!--assistant end-->
    </div>

    <!--sub nav begin-->
    <div class="docker-container">
        <div class="docker-content clearfix">
            <div class="docker-container-width pull-right">
                <!--docker product begin-->
                <div class="docker-container-product docker-container-item clearfix">
                    <ul>
                        <li class="col-md-2">
                            <img src="img/nav-listmenu-01_1.jpg" class="img-responsive" alt="卫生区">
                            <h5>卫生区</h5>

                            <ul>
                                <li><a href="/product/intelligent-toilet/"  onclick="trackEvent('nav', 'top_yitiji')">智能一体机</a></li>
                                <li><a href="/product/intelligent-cover/"  onclick="trackEvent('nav', 'top_gaiban')">智能盖板</a></li>
                                <li><a href="/product/toilet/"  onclick="trackEvent('nav', 'top_zuobianqi')">坐便器</a></li>
                                <li><a href="/product/squatting-pan/"  onclick="trackEvent('nav', 'top_dunbianqi')">蹲便器/配件</a></li>
                            </ul>

                        </li>
                        <li class="col-md-2">
                            <img src="img/nav-listmenu-02.jpg" class="img-responsive" alt="盥洗区">
                            <h5>盥洗区</h5>

                            <ul>
                                <li><a href="/product/bathroom-cabinet/"  onclick="trackEvent('nav', 'top_yushigui')">浴室柜</a></li>
                                <li><a href="/product/washbasin/"  onclick="trackEvent('nav', 'top_mianpen')">面盆</a></li>
                                <li><a href="/product/basin-faucet/"  onclick="trackEvent('nav', 'top_mianpenlongtou')">面盆龙头</a></li>
                            </ul>

                        </li>
                        <li class="col-md-2">
                            <img src="img/nav-listmenu-03.jpg" class="img-responsive" alt="淋浴区">
                            <h5>淋浴区</h5>

                            <ul>
                                <li><a href="/product/rain-shower/"  onclick="trackEvent('nav', 'top_huasa')">花洒</a></li>
                                <li><a href="/product/shower-faucet/"  onclick="trackEvent('nav', 'top_linyulongtou')">淋浴龙头</a></li>
                                <li><a href="/product/shower-room/"  onclick="trackEvent('nav', 'top_linyufang')">淋浴房</a></li>
                                <li><a href="/product/bathtub/"  onclick="trackEvent('nav', 'top_yugang')">浴缸</a></li>
                                <li><a href="/product/bathtub-faucet/"  onclick="trackEvent('nav', 'top_yuganglongtou')">浴缸龙头</a></li>
                            </ul>
f
                        </li>
                        <li class="col-md-2">
                            <img src="img/nav-listmenu-04.jpg" class="img-responsive" alt="浴室小五金">
                            <h5>浴室小五金</h5>

                            <ul>
                                <li><a href="/product/hanging-accessories/"  onclick="trackEvent('nav', 'top_wujinguajian')">五金挂件</a></li>
                                <li><a href="/product/hardware/"  onclick="trackEvent('nav', 'top_wujinpeijian')">五金配件</a></li>
                            </ul>

                        </li>
                        <li class="col-md-2">
                            <img src="img/nav-listmenu-05.jpg" class="img-responsive" alt="厨房阳台">
                            <h5>厨房阳台</h5>

                            <ul>
                                <li><a href="/product/sink/"  onclick="trackEvent('nav', 'top_shuicao')">水槽</a></li>
                                <li><a href="/product/kitchen-faucet/"  onclick="trackEvent('nav', 'top_chufanglongtou')">厨房龙头</a></li>
                                <li><a href="/product/washing-cabinet/"  onclick="trackEvent('nav', 'top_xiyigui')">洗衣柜</a></li>
                                <li><a href="/product/mop-pool/"  onclick="trackEvent('nav', 'top_tuobachi')">拖把池</a></li>
                                <li><a href="/product/balcony-accessories/"  onclick="trackEvent('nav', 'top_yangtaiwujin')">阳台五金</a></li>
                            </ul>

                        </li>
                        <li class="col-md-2">
                            <img src="img/nav-listmenu-06.jpg" class="img-responsive" alt="商用产品">
                            <h5>商用产品</h5>

                            <ul>
                                <li><a href="/product/sensor-products/"  onclick="trackEvent('nav', 'top_shangyongdianzi')">商用电子类</a></li>
                                <li><a href="/product/commercial-accessories/"  onclick="trackEvent('nav', 'top_shangyongwujin')">商用五金</a></li>
                                <li><a href="/product/commercial-toilet/"  onclick="trackEvent('nav', 'top_shangyongbianqi')">商用便器</a></li>
                                <li><a href="/product/urinals/"  onclick="trackEvent('nav', 'top_xiaobiandou')">小便斗</a></li>
                            </ul>

                        </li>
                    </ul>
                </div>
                <!--docker product end-->
                <!--docker support begin-->
                <div class="docker-container-support docker-container-item col-fix-padding clearfix">
                    <ul>
                        <li class="col-md-3"><a class="tech" href="/technology-and-service/hegii-technology/intelligence/" onclick="trackEvent('nav', 'top_tech')"><span>&nbsp;</span><span>恒洁技术</span></a></li>
                        <li class="col-md-3"><a class="service-1350" href="/technology-and-service/service-1350/" onclick="trackEvent('nav', 'top_1350')"><span>&nbsp;</span><span>恒洁服务1350</span></a></li>
                        <li class="col-md-3"><a class="six-year" href="/technology-and-service/six-year/" onclick="trackEvent('nav', 'top_6year')"><span>&nbsp;</span><span>恒洁六年质保</span></a></li>
                        <li class="col-md-3"><a class="faq" href="/technology-and-service/faq/" onclick="trackEvent('nav', 'top_faq')"><span>&nbsp;</span><span>恒洁百科</span></a></li>
                    </ul>
                </div>
                <!--docker support end-->
            </div>
        </div>
    </div>
    <!--sub nav begin-->
</header>


<div class="index-banner swiper-container custom-swiper">
    <div class="swiper-wrapper">
        <div class="swiper-slide theme-bright">
            <a href="javascript::"  onclick="trackEvent('nav', 'hp_KV1')"><img src="img/kv5.jpg" alt="恒洁助力 梦想改造家" class="img-responsive" alt=""></a>
        </div>
        <div class="swiper-slide theme-bright">
            <a href="/about-hegii/culture/"  onclick="trackEvent('nav', 'hp_KV2')"><img src="img/kv1.jpg" alt="恒于心 专于质" class="img-responsive" alt=""></a>
            <div class="slide-container" style="top:56%;left:54%;">
                <a class="btn-hegii btn-hegii-default" onclick="trackEvent('nav', 'hp_KV2')" href="/about-hegii/culture/" >了解详情</a>
            </div>
        </div>
        <div class="swiper-slide theme-bright">
            <a href="/technology-and-service/service-1350/"  onclick="trackEvent('nav', 'hp_KV3')"><img src="img/kv2.jpg" alt="" class="img-responsive" alt=""></a>
        </div>
        <div class="swiper-slide theme-bright">
            <a href="/double-q/"  onclick="trackEvent('nav', 'hp_KV4')"><img src="img/kv3.jpg" alt="" class="img-responsive" alt=""></a>
        </div>
        <div class="swiper-slide theme-bright">
            <a href="/about-hegii/action/"  onclick="trackEvent('nav', 'hp_KV5')"><img src="img/kv4.jpg" alt="" class="img-responsive" alt=""></a>
        </div>
    </div>
    <div class="swiper-pagination adjustment-pagination"></div>
</div>





<div class="index-product-series align-vertical container">
    <ul class="toggle-icon clearfix exclude-default">
        <li>
            <a class="toggle clearfix" href="javascript:;">
                <span><img src="img/product-series-01-off.png" data-img-on="img/product-series-01-on.png" data-img-off="img/product-series-01-off.png" class="center-block img-responsive"></span>
                <span>智能坐便器</span>
            </a>

            <ul>
                <li><a href="/product/intelligent-toilet/" onclick="trackEvent('nav', 'middle_yitiji')">智能一体机</a></li>
                <li><a href="/product/intelligent-cover/" onclick="trackEvent('nav', 'middle_gaiban')">智能盖板</a></li>
            </ul>
        </li>
        <li>
            <a class="toggle clearfix" href="javascript:;">
                <span><img src="img/product-series-02-off.png" data-img-on="img/product-series-02-on.png" data-img-off="img/product-series-02-off.png" class="center-block img-responsive"></span>
                <span>浴室家具</span>
            </a>

            <ul>
                <li><a href="/product/bathroom-cabinet/" onclick="trackEvent('nav', 'middle_yushigui')">浴室柜</a></li>
            </ul>
        </li>
        <li>
            <a class="toggle clearfix" href="javascript:;">
                <span><img src="img/product-series-03-off.png" data-img-on="img/product-series-03-on.png" data-img-off="img/product-series-03-off.png" class="center-block img-responsive"></span>
                <span>陶瓷便器</span>
            </a>

            <ul>
                <li><a href="/product/toilet/" onclick="trackEvent('nav', 'middle_zuobianqi')">坐便器</a></li>
                <li><a href="/product/squatting-pan/" onclick="trackEvent('nav', 'middle_dunbianqi')">蹲便器/配件</a></li>
            </ul>
        </li>
        <li>
            <a class="toggle clearfix" href="javascript:;">
                <span><img src="img/product-series-04-off.png" data-img-on="img/product-series-04-on.png" data-img-off="img/product-series-04-off.png" class="center-block img-responsive"></span>
                <span>洗漱产品</span>
            </a>

            <ul>
                <li><a href="/product/washbasin/" onclick="trackEvent('nav', 'middle_mianpen')">面盆</a></li>
                <li><a href="/product/basin-faucet/" onclick="trackEvent('nav', 'middle_mianpenlongtou')">面盆龙头</a></li>
            </ul>
        </li>
        <li>
            <a class="toggle clearfix" href="javascript:;">
                <span><img src="img/product-series-05-off.png" data-img-on="img/product-series-05-on.png" data-img-off="img/product-series-05-off.png" class="center-block img-responsive"></span>
                <span>花洒组合</span>
            </a>

            <ul>
                <li><a href="/product/rain-shower/" onclick="trackEvent('nav', 'middle_huasa')">花洒</a></li>
            </ul>
        </li>
        <li>
            <a class="toggle clearfix" href="javascript:;">
                <span><img src="img/product-series-06-off.png" data-img-on="img/product-series-06-on.png" data-img-off="img/product-series-06-off.png" class="center-block img-responsive"></span>
                <span>淋浴产品</span>
            </a>

            <ul>
                <li><a href="/product/shower-room/" onclick="trackEvent('nav', 'middle_linyufang')">淋浴房</a></li>
                <li><a href="/product/shower-faucet/" onclick="trackEvent('nav', 'middle_linyulongtou')">淋浴龙头</a></li>
                <li><a href="/product/rain-shower/" onclick="trackEvent('nav', 'middle_huasa')">花洒</a></li>
            </ul>
        </li>
        <li>
            <a class="toggle clearfix" href="javascript:;">
                <span><img src="img/product-series-07-off.png" data-img-on="img/product-series-07-on.png" data-img-off="img/product-series-07-off.png" class="center-block img-responsive"></span>
                <span>沐浴产品</span>
            </a>

            <ul>
                <li><a href="/product/bathtub/" onclick="trackEvent('nav', 'middle_yugang')">浴缸</a></li>
                <li><a href="/product/bathtub-faucet/" onclick="trackEvent('nav', 'middle_yuganglongtou')">浴缸龙头</a></li>
            </ul>
        </li>
        <li>
            <a class="toggle clearfix" href="javascript:;">
                <span><img src="img/product-series-08-off.png" data-img-on="img/product-series-08-on.png" data-img-off="img/product-series-08-off.png" class="center-block img-responsive"></span>
                <span>其他配件</span>
            </a>

            <ul>
                <li><a href="/product/sink/" onclick="trackEvent('nav', 'middle_shuicao')">水槽</a></li>
                <li><a href="/product/kitchen-faucet/" onclick="trackEvent('nav', 'middle_chufanglongtou')">厨房龙头</a></li>
                <li><a href="/product/washing-cabinet/" onclick="trackEvent('nav', 'middle_xiyigui')">洗衣柜</a></li>
                <li><a href="/product/mop-pool/" onclick="trackEvent('nav', 'middle_tuobachi')">拖把池</a></li>
                <li><a href="/product/balcony-accessories/" onclick="trackEvent('nav', 'middle_yangtaiwujin')">阳台五金</a></li>
            </ul>
        </li>
        <li>
            <a class="toggle clearfix" href="javascript:;">
                <span><img src="img/product-series-09-off.png" data-img-on="img/product-series-09-on.png" data-img-off="img/product-series-09-off.png" class="center-block img-responsive"></span>
                <span>商用</span>
            </a>

            <ul>
                <li><a href="/product/urinals/" onclick="trackEvent('nav', 'middle_xiaobiandou')">小便斗</a></li>
                <li><a href="/product/sensor-products/" onclick="trackEvent('nav', 'middle_shangyongdianzi')">商用电子类</a></li>
                <li><a href="/product/commercial-accessories/" onclick="trackEvent('nav', 'middle_shangyongwujin')">商用五金</a></li>
                <li><a href="/product/commercial-toilet/" onclick="trackEvent('nav', 'middle_shangyongbianqi')">商用便器</a></li>
            </ul>
        </li>
    </ul>
</div>



<div class="full-width special-product">
    <img src="img/index-img1.jpg" class="img-responsive" alt="恒洁智能双Q系列">
    <a href="/double-q/" class="btn-hegii btn-hegii-default">了解详情</a>
</div>




<div class="hot-product auto-vertical-align">
    <img src="img/index-img2.jpg" class="img-responsive">
    <div class="product-board-container vertical-align-item">
        <!--product board begin-->
        <div class="product-board pull-right">
            <div class="product-board-title">
                <div class="col-md-12"><img src="img/hot-product-title.png" class="img-responsive"></div>
            </div>
            <!--product board loop begin-->
            <div class="col-md-6">
                <div class="toggle-mask revert-mask">
                    <img src="img/hot-product-01.jpg" class="img-responsive" alt="恒洁Q9">
                    <div class="mask exclude-height">
                        <h5><span class="glyphicon glyphicon-minus"> </span>恒洁Q9</h5>
                        <p class="clearfix"><a href="/salable/#salable-02" class="pull-right">了解详情&gt;</a>智能坐便器</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="toggle-mask revert-mask">
                    <img src="img/hot-product-02.jpg" class="img-responsive" alt="臻尚系列">
                    <div class="mask exclude-height">
                        <h5><span class="glyphicon glyphicon-minus"> </span>臻尚系列</h5>
                        <p class="clearfix"><a href="/salable/#salable-03" class="pull-right">了解详情&gt;</a>浴室柜</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="toggle-mask revert-mask">
                    <img src="img/hot-product-03.jpg" class="img-responsive" alt="恒洁雨沐">
                    <div class="mask exclude-height">
                        <h5><span class="glyphicon glyphicon-minus"> </span>恒洁雨沐</h5>
                        <p class="clearfix"><a href="/salable/#salable-06" class="pull-right">了解详情&gt;</a>大花洒</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="toggle-mask revert-mask">
                    <img src="img/hot-product-04.jpg" class="img-responsive" alt="恒洁豪华嵌入式">
                    <div class="mask exclude-height">
                        <h5><span class="glyphicon glyphicon-minus"> </span>恒洁豪华嵌入式</h5>
                        <p class="clearfix"><a href="/salable/#salable-08" class="pull-right">了解详情&gt;</a>双人按摩浴缸</p>
                    </div>
                </div>
            </div>
            <!--product board loop end-->
        </div>
        <!--product board end-->
    </div>
    <div class="product-q8-container vertical-align-item">
        <div class="product-q8-ranking">
            <h3><span class="glyphicon glyphicon-minus"> </span>恒洁Q8</h3>
            <p>智能坐便器</p>
            <p>
                <a class="btn-hegii btn-hegii-white" href="/salable/#salable-01">了解详情</a>
                <a class="rank-like popularity" data-popularity-id="3576" href="javascript:;"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;<small>2439</small>赞</a>
            </p>
        </div>
        <div class="product-q8">
            <img src="img/hot-product-q8.png" class="img-responsive" alt="恒洁Q8">
        </div>
    </div>
</div>


<div class="full-width">
    <a href="/renovation/">
        <img src="img/index-img3.jpg" class="img-responsive" alt="恒洁套间灵感">
    </a>
</div>


<div class="news clearfix">
    <div class="col-md-6">
        <div class="toggle-mask disable-animate">
            <a href="javascript:;">
                <img src="img/600x600.jpg" class="img-responsive" alt="恒洁助力 梦想改造家">
                <div class="mask">恒洁助力 梦想改造家</div>
            </a>
        </div>
    </div>
    <div class="col-md-6">
        <div class="toggle-mask disable-animate">
            <a href="/about-hegii/action/">
                <img src="img/news-2.jpg" class="img-responsive" alt="节水中国行">
                <div class="mask">节水中国行</div>
            </a>
        </div>
    </div>
</div>

<div class="recommend clearfix">
    <div class="col-md-4">
        <div class="toggle-mask">
            <a href="/technology-and-service/hegii-technology/intelligence/">
                <img src="img/recommend-01.jpg" class="img-responsive" alt="恒洁技术">
                <div class="mask">恒洁技术</div>
            </a>
        </div>
    </div>
    <div class="col-md-4">
        <div class="toggle-mask">
            <a href="/technology-and-service/service-1350/">
                <img src="img/recommend-02.jpg" class="img-responsive" alt="恒洁服务">
                <div class="mask">恒洁服务</div>
            </a>
        </div>
    </div>
    <div class="col-md-4">
        <div class="toggle-mask">
            <a href="/about-hegii/">
                <img src="img/recommend-03.jpg" class="img-responsive" alt="关于我们">
                <div class="mask">关于我们</div>
            </a>
        </div>
    </div>
</div>

<footer>

    <div class="container">
        <div class="clearfix footer-nav">
            <div class="col-md-8">
                <ul class="col-md-3">
                    <li><h5>快速链接</h5></li>
                    <li><a href="/salable/" onclick="trackEvent('nav', 'btm_bestseller')">畅销榜单</a></li>
                    <li><a href="/double-q/" onclick="trackEvent('nav', 'btm_doubleq')">智能双Q</a></li>
                    <li><a href="/e-comm/" onclick="trackEvent('nav', 'btm_shop')">官方商城</a></li>
                    <li><a href="/dealer/" onclick="trackEvent('nav', 'btm_dealer')">网点查询</a></li>
                    <li><a href="/technology-and-service/faq/" onclick="trackEvent('nav', 'btm_faq')">恒洁百科</a></li>
                </ul>
                <ul class="col-md-3">
                    <li><h5>产品分类</h5></li>
                    <li><a href="/product/intelligent-toilet/" onclick="trackEvent('nav', 'btm_yitiji')">智能一体机</a></li>
                    <li><a href="/product/intelligent-cover/" onclick="trackEvent('nav', 'btm_gaiban')">智能盖板</a></li>
                    <li><a href="/product/toilet/" onclick="trackEvent('nav', 'btm_zuobianqi')">坐便器</a></li>
                    <li><a href="/product/bathroom-cabinet/" onclick="trackEvent('nav', 'btm_yushigui')">浴室柜</a></li>
                    <li><a href="/product/rain-shower/" onclick="trackEvent('nav', 'btm_huasa')">花洒</a></li>
                    <li><a href="/product/shower-room/" onclick="trackEvent('nav', 'btm_linyufang')">淋浴房</a></li>
                    <li><a href="/product/bathtub/" onclick="trackEvent('nav', 'btm_yugang')">浴缸</a></li>
                    <li><a href="/product/washbasin/" onclick="trackEvent('nav', 'btm_mianpen')">面盆</a></li>
                </ul>
                <ul class="col-md-3">
                    <li><h5>套间系列</h5></li>
                    <li><a href="/renovation/yilan/" onclick="trackEvent('nav', 'btm_yilan')">艺澜套间系列</a></li>
                    <li><a href="/renovation/jinzhi/" onclick="trackEvent('nav', 'btm_jinzhi')">金致套间系列</a></li>
                    <li><a href="/renovation/yazhi/" onclick="trackEvent('nav', 'btm_yazhi')">雅致套间系列</a></li>
                    <li><a href="/renovation/zhendian/" onclick="trackEvent('nav', 'btm_zhendian')">臻典套间系列</a></li>
                    <li><a href="/renovation/oudian/" onclick="trackEvent('nav', 'btm_oudian')">欧典套间系列</a></li>
                    <li><a href="/renovation/zhenshang/" onclick="trackEvent('nav', 'btm_zhenshang')">臻尚套间系列</a></li>
                </ul>
                <ul class="col-md-3">
                    <li><h5>关于恒洁</h5></li>
                    <li><a href="/about-hegii/culture/" onclick="trackEvent('nav', 'btm_culture')">品牌文化</a></li>
                    <li><a href="/about-hegii/case/" onclick="trackEvent('nav', 'btm_case')">工程案例</a></li>
                    <li><a href="/about-hegii/news/all/" onclick="trackEvent('nav', 'btm_news')">全部新闻</a></li>
                    <li><a href="/about-hegii/honor/brand/" onclick="trackEvent('nav', 'btm_honor_brand')">品牌荣誉</a></li>
                    <li><a href="/about-hegii/hr/join/" onclick="trackEvent('nav', 'btm_join')">加入我们</a></li>
                    <li><a href="/about-hegii/history/" onclick="trackEvent('nav', 'btm_history')">发展历程</a></li>
                    <li><a href="/about-hegii/contact/" onclick="trackEvent('nav', 'btm_contact')">联系我们</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <div class="footer-logo"><img src="img/footer-logo-big.png" class="img-responsive"></div>
                <p>全国服务热线</p>
                <p class="tel">400-833-1350</p>
                <div class="footer-social clearfix">
                    <p>关注我们：</p>
                    <div class="social-wechat">
                        <a class="" href="javascript:;" onclick="trackEvent('nav', 'btm_wechat')"></a>
                        <div class="social-wechat-pop"><img src="img/qrcode-wechat-footer.jpg" class="img-responsive"></div>
                    </div>
                    <div class="social-weibo">
                        <a class="" href="http://weibo.com/hengjieweiyu" target="_blank" onclick="trackEvent('nav', 'btm_weibo')"></a>
                    </div>
                </div>
                <p>服务时间：8:30-12:00,13:30-18:00</p>
            </div>
        </div>
        <div class="clearfix copyright">
            <div class="col-md-5">
                <ul>
                    <li><a onclick="trackEvent('nav', 'btm_privacy')" href="/contents/privacy-statement/">隐私声明</a></li>
                    <li><a onclick="trackEvent('nav', 'btm_legal')" href="/contents/legal-statement/">法律声明</a></li>
                    <li><a onclick="trackEvent('nav', 'btm_contact')" href="/about-hegii/contact/">联系我们</a></li>
                    <li><a onclick="trackEvent('nav', 'btm_sitemap')" href="/contents/sitemap/">网站地图</a></li>
                </ul>
            </div>
            <div class="col-md-7">
                广东恒洁卫浴有限公司版权所有 COPYRIGHT 2016 HEGII 粤ICP备10071902号-4<br>
                <small>*广告描述以本网站描述为准</small>
            </div>
        </div>

    </div>
</footer>
<div class="go-top hidden"><a href="javascript:;"><img src="img/btn-go-top.jpg"></a></div>

<script src="img/jquery.min.js"></script>
<script src="img/bootstrap.min.js"></script>

<script src="img/swiper.min.js"></script>
<script src="img/jquery.sticky.min.js"></script>

<script src="img/common.min.js"></script>

<script src="img/index.min.js"></script>

<!--Ga统计代码 -->
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-104535796-1', 'auto');
    ga('send', 'pageview');
</script>

<div style="display:none">
    <!--Cnzz统计代码 -->
    <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1258044938'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1258044938' type='text/javascript'%3E%3C/script%3E"));</script>
    <!--百度统计代码 -->;
    <script>
        // var _hmt = _hmt || [];
        // (function () {
        //     var hm = document.createElement("script");
        //     hm.src = "//hm.baidu.com/hm.js?ddc6e9c9ebae9e82b14e3147bf393d51";
        //     var s = document.getElementsByTagName("script")[0];
        //     s.parentNode.insertBefore(hm, s);
        // })();
    </script>
</div>

<div style="display:none">
    <p>asdfasdfadf</p>
</div>
</body>
</html>