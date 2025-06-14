<%-- Created by IntelliJ IDEA. User: zhangxin Date: 2019/5/13 Time: 15:45 --%>
    <%@ page language="java" pageEncoding="UTF-8" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <title>Second-hand Trading Mall</title>
                <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
                <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
                <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
                <script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
                <script src="${pageContext.request.contextPath}/js/sort.js"></script>
                <script src="${pageContext.request.contextPath}/js/holder.js"></script>

                <script>

                </script>
                <style type="text/css">
                    .button {
                        clear: both;
                        margin: 10px auto;
                        text-align: center;
                        font-size: 20px;
                        padding: 10px 0;
                        line-height: 25px;
                        color: #666;
                        border-top: #ddd 1px solid;
                    }

                    .button a {
                        margin: 0 7px;
                        color: #666;
                    }

                    .button a:hover {
                        color: #000;
                        text-decoration: none;
                    }
                </style>
            </head>

            <body>
                <div id="main" class="container">

                    <div id="header">
                        <%@ include file="header.jsp" %>

                            <!-- 旋转图 -->
                            <div class="header-bottom">
                                <div class="sort">
                                    <div class="sort-channel">
                                        <ul class="sort-channel-list list-group">
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=数码">Digital</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=手机">Mobile
                                                                Phone</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=手机壳">Phone
                                                                Case</a> <a
                                                                href="${pageContext.request.contextPath}/category?cate=充电器">Charger</a>
                                                            <a href="">Battery</a> <a
                                                                href="${pageContext.request.contextPath}/category?cate=耳机">Earphone</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=相机">Camera</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=镜头">Lens</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=单反">DSLR</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=胶片">Film</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=摄像">Video</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=电脑">Computer</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=显示屏">Monitor</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=显卡">Graphics
                                                                Card</a> <a
                                                                href="${pageContext.request.contextPath}/category?cate=硬盘">Hard
                                                                Disk</a> <a
                                                                href="${pageContext.request.contextPath}/category?cate=内存条">RAM</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=影音">Audio
                                                                & Video</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=MP3">MP3</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=音响">Speaker</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=麦克风">Microphone</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=收音机">Radio</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=日用">Daily
                                                    Use</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=护肤">Skin
                                                                Care</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=洗发水">Shampoo</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=沐浴露">Body
                                                                Wash</a>
                                                            <a href="">Facial Cleanser</a> <a href="">Hand Soap</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=美妆">Beauty</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=面膜">Facial
                                                                Mask</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=口红">Lipstick</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=防嗮">Sunscreen</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=香水">Perfume</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=家居">Home</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=书架">Bookshelf</a><a
                                                                href="${pageContext.request.contextPath}/category?cate=鞋柜">Shoe
                                                                Cabinet</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=衣架">Clothes
                                                                Hanger</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=台灯">Desk
                                                                Lamp</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=闲置书籍">Books</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=英语">English</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=四六级">CET-4/6</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=充电器">Business
                                                                English</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=听力">Listening</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=考研">Postgraduate
                                                                Entrance Exam</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=考研">Postgraduate
                                                                Entrance Exam</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=计算机">Computer
                                                                Science</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=自动化">Automation</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=金融">Finance</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=其他">Others</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=体育">Sports</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=足球">Football</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=乒乓球">Table
                                                                Tennis</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=篮球">Basketball</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=羽毛球">Badminton</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=经典">Classics</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=历史">History</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=名人">Celebrities</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=政治">Politics</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=小说">Novel</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=服饰">Clothing</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=女装">Women's
                                                                Wear</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=连衣裙">Dress</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=充电器">Skirt</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate= T恤">T-shirt/Shirt</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=卫衣">Sweatshirt</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=男装">Men's
                                                                Wear</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=外套">Coat</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=衬衫">Shirt</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=夹克">Jacket</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=运动外套">Sports
                                                                Jacket</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=鞋子">Shoes</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=运动鞋">Sneakers</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=单鞋">Single
                                                                Shoes</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=皮鞋">Leather
                                                                Shoes</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=拖鞋">Slippers</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=箱包">Bags</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=女包">Women's
                                                                Bag</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=男包">Men's
                                                                Bag</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=旅行箱">Suitcase</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=装饰品">Accessories</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=配饰">Ornaments</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=腰带">Belt</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=皮带">Leather
                                                                Belt</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=帽子">Hat</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=围巾">Scarf</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=手套">Gloves</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=手表">Watch</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=机械表">Mechanical
                                                                Watch</a><a
                                                                href="${pageContext.request.contextPath}/category?cate=石英表">Quartz
                                                                Watch</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=电子表">Electronic
                                                                Watch</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=饰品">Jewelry</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=眼镜">Glasses</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=手链">Bracelet</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=项链">Necklace</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=吊坠">Pendant</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=收藏品">Collectibles</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=古玩">Antiques</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=邮票">Stamps</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=钱币">Coins</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=陶瓷">Ceramics</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=学习用品">Study
                                                    Supplies</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=编码">Coding</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Java">Java</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=PHP">PHP</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=C">C++</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Python">Python</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=培训">Training</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=驾照">Driver's
                                                                License</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=考研">Postgraduate
                                                                Entrance Exam</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=计算机证书">Computer
                                                                Certificate</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=四六级">CET-4/6</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=线上课程">Online
                                                                Course</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=健身">Fitness</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=考证">Certificate
                                                                Exam</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=学习">Study</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=闲置百货">General
                                                    Merchandise</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=日用">Daily
                                                                Use</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=雨伞">Umbrella</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=口罩">Mask</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=拖布">Mop</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=电风扇">Fan</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=餐具">Tableware</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=餐盘">Plate</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=保温杯">Thermos
                                                                Cup</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=饭盒">Lunch
                                                                Box</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=餐具套装">Tableware
                                                                Set</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=出行">Travel</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=自行车">Bicycle</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=电动车">E-bike</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=滑板">Skateboard</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- <div class="sort-detail">
                    <dl class="dl-horizontal">
                        <dt>手机</dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/category?cate=手机壳">手机壳</a>
                            <a href="${pageContext.request.contextPath}/category?cate=充电器">充电器</a>
                            <a href="">电池</a>
                            <a href="${pageContext.request.contextPath}/category?cate=耳机">耳机</a>
                        </dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt>相机</dt>
                        <dd>
                            <a href="">镜头</a>
                            <a href="">单反</a>
                            <a href="">胶片</a>
                            <a href="">摄像</a>
                        </dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt>电脑</dt>
                        <dd></dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt>MP3</dt>
                        <dd></dd>
                    </dl>
                </div> -->
                                </div>
                                <div id="mycarousel" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <img src="${pageContext.request.contextPath}/image/4.jpg" alt="">
                                        </div>

                                        <div class="item">
                                            <img src="${pageContext.request.contextPath}/image/3.jpg" alt="">
                                        </div>
                                        <div class="item">
                                            <img src="${pageContext.request.contextPath}/image/5.jpg" alt="">
                                        </div>
                                        <div class="item">
                                            <img src="${pageContext.request.contextPath}/image/6.jpg" alt="">
                                        </div>
                                    </div>

                                    <ol class="carousel-indicators">
                                        <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                                        <li data-target="#mycarousel" data-slide-to="1"></li>
                                        <li data-target="#mycarousel" data-slide-to="2"></li>
                                        <li data-target="#mycarousel" data-slide-to="3"></li>
                                    </ol>

                                    <a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev"
                                        style="display: none;"> <span class="glyphicon glyphicon-chevron-left"
                                            aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a> <a class="right carousel-control" href="#mycarousel" role="button"
                                        data-slide="next" style="display: none;"> <span
                                            class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                                <div class="clear-float"></div>
                            </div>
                    </div>
                    <div class="content">

                        <c:if test="${!empty digGoods}">
                            <div class="module">
                                <div class="hd">
                                    <h2>数码</h2>
                                    <hr>
                                </div>

                                <div class="bd">
                                    <div class="data">
                                        <ul>
                                            <c:forEach items="${digGoods}" var="goods">
                                                <li class="data-item-li">
                                                    <div class="to-big">
                                                        <a
                                                            href="${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}"><img
                                                                src="${pageContext.request.contextPath}/pictures/${goods.imagePaths[0].path}"
                                                                alt="" width="200" height="200" />
                                                        </a>
                                                    </div>
                                                    <p class="text-right">
                                                        <a
                                                            href="${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}">${goods.goodsname}</a>
                                                    </p>
                                                    <div class="text-right">
                                                        <b>￥${goods.price}</b>
                                                    </div>
                                                    <div>
                                                        <c:if test="${goods.fav}">
                                                            <button
                                                                class="like-button glyphicon glyphicon-heart btn btn-default"
                                                                data-id="${goods.goodsid}"
                                                                style="display: none;"></button>
                                                        </c:if>
                                                        <c:if test="${!goods.fav}">
                                                            <button
                                                                class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                                                                data-id="${goods.goodsid}"
                                                                style="display: none;"></button>
                                                        </c:if>
                                                        <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                                                    </div>
                                                </li>
                                            </c:forEach>


                                            <div class="clear-float" style="clear: both;"></div>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </c:if>

                        <c:if test="${!empty houseGoods}">
                            <div class="module">
                                <div class="hd">
                                    <h2>家电</h2>
                                    <hr>
                                </div>

                                <div class="bd">
                                    <div class="data">
                                        <ul>
                                            <c:forEach items="${houseGoods}" var="housegoods">
                                                <li class="data-item-li">
                                                    <div class="to-big">
                                                        <a
                                                            href="${pageContext.request.contextPath}/detail?goodsid=${housegoods.goodsid}">
                                                            <img src="${pageContext.request.contextPath}/pictures/${housegoods.imagePaths[0].path}"
                                                                alt="" width="200" height="200">
                                                        </a>
                                                    </div>
                                                    <p class="text-right">
                                                        <a
                                                            href="${pageContext.request.contextPath}/detail?goodsid=${housegoods.goodsid}">${housegoods.goodsname}</a>
                                                    </p>
                                                    <div class="text-right">
                                                        <b>￥${housegoods.price}</b>
                                                    </div>
                                                    <div>
                                                        <c:if test="${housegoods.fav}">
                                                            <button
                                                                class="like-button glyphicon glyphicon-heart btn btn-default"
                                                                data-id="${housegoods.goodsid}"
                                                                style="display: none;"></button>
                                                        </c:if>
                                                        <c:if test="${!housegoods.fav}">
                                                            <button
                                                                class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                                                                data-id="${housegoods.goodsid}"
                                                                style="display: none;"></button>
                                                        </c:if>
                                                        <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                                                    </div>
                                                </li>
                                            </c:forEach>

                                            <div class="clear-float" style="clear: both;"></div>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </c:if>

                        <c:if test="${!empty colGoods}">
                            <div class="module">
                                <div class="hd">
                                    <h2>服饰</h2>
                                    <hr>
                                </div>

                                <div class="bd">
                                    <div class="data">
                                        <ul>
                                            <c:forEach items="${colGoods}" var="colgoods">
                                                <li class="data-item-li">
                                                    <div class="to-big">
                                                        <a
                                                            href="${pageContext.request.contextPath}/detail?goodsid=${colgoods.goodsid}">
                                                            <img src="${pageContext.request.contextPath}/pictures/${colgoods.imagePaths[0].path}"
                                                                alt="" width="200" height="200">
                                                        </a>
                                                    </div>
                                                    <p class="text-right">
                                                        <a
                                                            href="${pageContext.request.contextPath}/detail?goodsid=${colgoods.goodsid}">${colgoods.goodsname}</a>
                                                    </p>
                                                    <div class="text-right">
                                                        <b>￥${colgoods.price}</b>
                                                    </div>
                                                    <div>
                                                        <c:if test="${colgoods.fav}">
                                                            <button
                                                                class="like-button glyphicon glyphicon-heart btn btn-default"
                                                                data-id="${colgoods.goodsid}"
                                                                style="display: none;"></button>
                                                        </c:if>
                                                        <c:if test="${!colgoods.fav}">
                                                            <button
                                                                class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                                                                data-id="${colgoods.goodsid}"
                                                                style="display: none;"></button>
                                                        </c:if>
                                                        <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                                                    </div>
                                                </li>
                                            </c:forEach>

                                            <div class="clear-float" style="clear: both;"></div>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </c:if>

                        <c:if test="${!empty bookGoods}">
                            <div class="module">
                                <div class="hd">
                                    <h2>书籍</h2>
                                    <hr>
                                </div>

                                <div class="bd">
                                    <div class="data">
                                        <ul>
                                            <c:forEach items="${bookGoods}" var="bookgoods">
                                                <li class="data-item-li">
                                                    <div class="to-big">
                                                        <a
                                                            href="${pageContext.request.contextPath}/detail?goodsid=${bookgoods.goodsid}">
                                                            <img src="${pageContext.request.contextPath}/pictures/${bookgoods.imagePaths[0].path}"
                                                                alt="" width="200" height="200">
                                                        </a>
                                                    </div>
                                                    <p class="text-right">
                                                        <a
                                                            href="${pageContext.request.contextPath}/detail?goodsid=${bookgoods.goodsid}">${bookgoods.goodsname}</a>
                                                    </p>
                                                    <div class="text-right">
                                                        <b>￥${bookgoods.price}</b>
                                                    </div>
                                                    <div>
                                                        <c:if test="${bookgoods.fav}">
                                                            <button
                                                                class="like-button glyphicon glyphicon-heart btn btn-default"
                                                                data-id="${bookgoods.goodsid}"
                                                                style="display: none;"></button>
                                                        </c:if>
                                                        <c:if test="${!bookgoods.fav}">
                                                            <button
                                                                class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                                                                data-id="${bookgoods.goodsid}"
                                                                style="display: none;"></button>
                                                        </c:if>
                                                        <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                                                    </div>
                                                </li>
                                            </c:forEach>

                                            <div class="clear-float" style="clear: both;"></div>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </div>
                </div>
                <div class="button">Welcome to the Second-hand Trading Mall!</div>
            </body>

            </html>