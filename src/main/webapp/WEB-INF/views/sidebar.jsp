
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <div class="templatemo-sidebar">
            <header class="templatemo-site-header">
                <div class="square"></div>
                <h1>Admin Panel</h1>
            </header>
            <div class="mobile-menu-icon">
                <i class="fa fa-bars"></i>
            </div>
            <nav class="templatemo-left-nav">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/admin/user/show"><i
                                class="fa fa-user fa-fw"></i>User Management</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/goods/show"><i
                                class="fa fa-bar-chart fa-fw"></i>Product Management</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/order/send"><i
                                class="fa fa-users fa-fw"></i>Order Management</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/activity/show"><i
                                class="fa fa-database fa-fw"></i>Activity Management</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/logout"><i
                                class="fa fa-eject fa-fw"></i>Logout</a></li>
                </ul>
            </nav>
        </div>
