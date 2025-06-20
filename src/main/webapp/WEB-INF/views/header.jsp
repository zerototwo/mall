
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
            <div class="row">
                <div class="col-md-4" role="navigation">
                    <!-- <h1 style="font-size: 20px;margin-top: 9px">东大咸鱼</h1> -->

                    <ul class="nav nav-pills">
                        <c:if test="${empty sessionScope.user}">
                            <li><a href="${pageContext.request.contextPath}/login" style="color: #F22E00">Please
                                    Login</a></li>
                        </c:if>
                        <c:if test="${!empty sessionScope.user}">
                            <li class="info-a">
                                <a href="${pageContext.request.contextPath}/information" style="color: #F22E00">
                                    ${sessionScope.user.username}
                                    <span class="glyphicon glyphicon-triangle-bottom"
                                        style="font-size: 5px;margin-left: 7px;" aria-hidden="true">
                                    </span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="${pageContext.request.contextPath}/information">Account Management</a>
                                    </li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="${pageContext.request.contextPath}/logout" class="login-out">Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </c:if>

                        <li><a href="${pageContext.request.contextPath}/register">Register</a></li>
                    </ul>
                </div>
                <div class="col-md-8">
                    <ul class="nav nav-pills pull-right">
                        <li><a href="${pageContext.request.contextPath}/showcart"> <i class="fa fa-shopping-cart"
                                    style="color: #F22E00"></i>
                                Cart
                            </a></li>
                        <li><a href="${pageContext.request.contextPath}/info/favorite"> <i class="fa fa-star"></i>
                                Favorites
                            </a></li>
                    </ul>
                </div>
            </div>
            <div id="header-nav">
                <nav class="navbar navbar-default" id="header-nav-middle">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
                                    class="icon-bar"></span> <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand"
                                href="${pageContext.request.contextPath}/main"><!-- <img alt="Brand" style="display: inline-block;" src="./image/tao.jpg" width="20" height="20"> --><span
                                    class="logo-word">Second-hand Trading Mall</span></a>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li><a class="a-color" href="${pageContext.request.contextPath}/main">Home</a></li>
                                <li><a class="a-color" href="${pageContext.request.contextPath}/information">Profile</a>
                                </li>
                                <li class="dropdown"><a class="a-color"
                                        href="${pageContext.request.contextPath}/info/list" class="dropdown-toggle"
                                        data-toggle="dropdown" role="button" aria-haspopup="true"
                                        aria-expanded="false">My Orders <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="${pageContext.request.contextPath}/info/address">Address
                                                Management</a></li>
                                        <li><a href="${pageContext.request.contextPath}/order">In Transaction</a></li>
                                        <li role="separator" class="divider"></li>
                                    </ul>
                                </li>
                            </ul>

                            <form class="navbar-form navbar-right" role="search" method="get"
                                action="${pageContext.request.contextPath}/search">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Search" name="keyword">
                                </div>
                                <button type="submit" class="btn btn-default">
                                    <span class="glyphicon glyphicon-search" aria-label="Search"></span>
                                </button>
                            </form>
                        </div>
                        <!-- /.navbar-collapse -->
                    </div>
                    <!-- /.container-fluid -->
                </nav>
            </div>
