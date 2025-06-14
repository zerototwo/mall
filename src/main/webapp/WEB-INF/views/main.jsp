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
                                                    href="${pageContext.request.contextPath}/category?cate=Digital">Digital</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Mobile">Mobile
                                                                Phone</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Phone Case">Phone
                                                                Case</a> <a
                                                                href="${pageContext.request.contextPath}/category?cate=Charger">Charger</a>
                                                            <a href="">Battery</a> <a
                                                                href="${pageContext.request.contextPath}/category?cate=Earphone">Earphone</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Camera">Camera</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Lens">Lens</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=DSLR">DSLR</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Film">Film</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Video">Video</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Computer">Computer</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Monitor">Monitor</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Graphics Card">Graphics
                                                                Card</a> <a
                                                                href="${pageContext.request.contextPath}/category?cate=Hard Disk">Hard
                                                                Disk</a> <a
                                                                href="${pageContext.request.contextPath}/category?cate=RAM">RAM</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Audio & Video">Audio
                                                                & Video</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=MP3">MP3</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Speaker">Speaker</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Microphone">Microphone</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Radio">Radio</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=Daily Use">Daily
                                                    Use</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Skin Care">Skin
                                                                Care</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Shampoo">Shampoo</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Body Wash">Body
                                                                Wash</a>
                                                            <a href="">Facial Cleanser</a> <a href="">Hand Soap</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Beauty">Beauty</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Facial Mask">Facial
                                                                Mask</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Lipstick">Lipstick</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Sunscreen">Sunscreen</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Perfume">Perfume</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Home">Home</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Bookshelf">Bookshelf</a><a
                                                                href="${pageContext.request.contextPath}/category?cate=Shoe Cabinet">Shoe
                                                                Cabinet</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Clothes Hanger">Clothes
                                                                Hanger</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Desk Lamp">Desk
                                                                Lamp</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=Books">Books</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=English">English</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=CET-4/6">CET-4/6</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Business English">Business
                                                                English</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Listening">Listening</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Postgraduate Entrance Exam">Postgraduate
                                                                Entrance Exam</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Postgraduate Entrance Exam">Postgraduate
                                                                Entrance Exam</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Computer Science">Computer
                                                                Science</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Automation">Automation</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Finance">Finance</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Others">Others</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Sports">Sports</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Football">Football</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Table Tennis">Table
                                                                Tennis</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Basketball">Basketball</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Badminton">Badminton</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Classics">Classics</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=History">History</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Celebrities">Celebrities</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Politics">Politics</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Novel">Novel</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=Clothing">Clothing</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Women's Wear">Women's
                                                                Wear</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Dress">Dress</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Skirt">Skirt</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate= T-shirt/Shirt">T-shirt/Shirt</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Sweatshirt">Sweatshirt</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Men's Wear">Men's
                                                                Wear</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Coat">Coat</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Shirt">Shirt</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Jacket">Jacket</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Sports Jacket">Sports
                                                                Jacket</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Shoes">Shoes</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Sneakers">Sneakers</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Single Shoes">Single
                                                                Shoes</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Leather Shoes">Leather
                                                                Shoes</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Slippers">Slippers</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Bags">Bags</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Women's Bag">Women's
                                                                Bag</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Men's Bag">Men's
                                                                Bag</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Suitcase">Suitcase</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=Accessories">Accessories</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Ornaments">Ornaments</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Belt">Belt</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Leather Belt">Leather
                                                                Belt</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Hat">Hat</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Scarf">Scarf</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Gloves">Gloves</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Watch">Watch</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Mechanical Watch">Mechanical
                                                                Watch</a><a
                                                                href="${pageContext.request.contextPath}/category?cate=Quartz Watch">Quartz
                                                                Watch</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Electronic Watch">Electronic
                                                                Watch</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Jewelry">Jewelry</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Glasses">Glasses</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Bracelet">Bracelet</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Necklace">Necklace</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Pendant">Pendant</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Collectibles">Collectibles</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Antiques">Antiques</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Stamps">Stamps</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Coins">Coins</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Ceramics">Ceramics</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=Study Supplies">Study
                                                    Supplies</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Coding">Coding</a>
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
                                                                href="${pageContext.request.contextPath}/category?cate=Training">Training</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Driver's License">Driver's
                                                                License</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Postgraduate Entrance Exam">Postgraduate
                                                                Entrance Exam</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Computer Certificate">Computer
                                                                Certificate</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=CET-4/6">CET-4/6</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Online Course">Online
                                                                Course</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Fitness">Fitness</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Certificate Exam">Certificate
                                                                Exam</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Study">Study</a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </li>
                                            <li class="list-group-item"><a
                                                    href="${pageContext.request.contextPath}/category?cate=General Merchandise">General
                                                    Merchandise</a>
                                                <div class="sort-detail">
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Daily Use">Daily
                                                                Use</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Umbrella">Umbrella</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Mask">Mask</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Mop">Mop</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Fan">Fan</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Tableware">Tableware</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Plate">Plate</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Thermos Cup">Thermos
                                                                Cup</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Lunch Box">Lunch
                                                                Box</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Tableware Set">Tableware
                                                                Set</a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-hor">
                                                        <dt>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Travel">Travel</a>
                                                        </dt>
                                                        <dd>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Bicycle">Bicycle</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=E-bike">E-bike</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/category?cate=Skateboard">Skateboard</a>
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
                                    <h2>Digital</h2>
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
                                    <h2>Electronics</h2>
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
                                    <h2>Clothing</h2>
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
                                    <h2>Books</h2>
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