<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html> 
<html lang="en"> 

<head> 
<meta charset="utf-8"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>Backend management</title> 
<meta name="description" content=""> 
<meta name="author" content="templatemo"> 
<!-- 
Visual Admin Template 
http://www.templatemo.com/preview/templatemo_455_visual_admin 
--> 
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' 
type='text/css'> 
<link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet"> 
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"> 
<link href="${pageContext.request.contextPath}/css/templatemo-style.css" rel="stylesheet"> 

<!-- JS --> 
<script type="text/javascript" 
src="${pageContext.request.contextPath}/js/jquery-1.11.2.min.js"></script> 
<!-- jQuery --> 
<script type="text/javascript" 
src="${pageContext.request.contextPath}/js/templatemo-script.js"></script> 
<!-- Templatemo Script --> 
<style> 
.head-div { 
font-size: 18px; 
} 

.goods-table thead { 
background-color: #fbffff; 
} 

.white-text { 
color: #404040; 
} 
</style> 
</head> 

<body> 
<!-- Left column --> 
<div class="templatemo-flex-row"> 
<jsp:include page="sidebar.jsp" /> 
<!-- Main content --> 
<div class="templatemo-content col-1 light-gray-bg"> 
<jsp:include page="adminOrderNav.jsp" /> 
<div class="templatemo-content-container"> <%--<div class="templatemo-content-widget white-bg">--%> 
<%--<h2 class="margin-bottom-10">Geo Charts</h2>--%> 
<%--<p class="margin-bottom-0">Credit goes to <a href="http://jqvmap.com" 
target="_parent">JQVMap</a>.</p>--%> 
<%--< /div>--%> 

<c:forEach items="${pageInfo.list}" var="orderInfo"> 
<div class="templatemo-flex-row flex-content-row"> 
<div class="col-1"> 
<div class="panel panel-default margin-10"> 
<div class="panel-heading"> 
<h2>${orderInfo.address.conname}</h2> 
</div> 
<div class="panel-body"> 
<div> 
<div class="order-info margin-bottom-10"> 
<div class="head-div">Order Information</div> 
<div> 
<table id="orderinfo" 
class="table table-striped table-bordered templatemo-user-table goods-table"> 
<thead> 
<tr> 
<td><a href="" 
class="white-text templatemo-sort-by">Order 
ID<span 
class="caret"></span></a> 
</td> 
<td><a href=""class="white-text templatemo-sort-by">User<span
class="caret"></span></a>
</td>
<td><a href=""
class="white-text templatemo-sort-by">Original
Price<span
class="caret"></span></a>
</td>
<td><a href=""
class="white-text templatemo-sort-by">Actual
Payment<span
class="caret"></span></a>
</td>
<td><a href=""
class="white-text templatemo-sort-by">Recipient<span
class="caret"></span></a>
</td>
<td><a href=""
class="white-text templatemo-sort-by">Shipping
Address<span
class="caret"></span></a>
</td>
<td><a href=""
class="white-text templatemo-sort-by">Contact<span
class="caret"></span></a>
</td>
<td><a href=""
class="white-text templatemo-sort-by">Time<span
class="caret"></span></a>
</td>
</tr>
</thead>
<tbody>
<tr>
<td>${orderInfo.orderid}</td>
<td>${orderInfo.userid}</td>
<td>￥${orderInfo.oldprice}</td>
<td>￥${orderInfo.newprice}</td>
<td>${orderInfo.address.conname}
</td>
<td>${orderInfo.address.province}
${orderInfo.address.city}
${orderInfo.address.county}
${orderInfo.address.detailaddr}</td>
<td>${orderInfo.address.contel}
</td>
<td>${orderInfo.ordertime}</td>
</tr>

</tbody>
</table>

</div>
</div>
<div class="goods-info margin-bottom-10">
<div class="head-div">Product Information</div>
<div>
<table id="goodsinfo"
class="table table-striped table-bordered templatemo-user-table goods-table">
<thead>
<tr>
<td><a href=""
class="white-text templatemo-sort-by">Product
ID<span
class="caret"></span></a>
</td>
<td><a href=""
class="white-text templatemo-sort-by">Product
Name<span
class="caret"></span></a>
</td>
<td><a href=""
class="white-text templatemo-sort-by">Price<span
class="caret"></span></a>
</td>
<td><a href=""
class="white-text templatemo-sort-by">Quantity<span
class="caret"></span></a>
</td>
<%--<td><a href=""
class="white-text templatemo-sort-by">类别<span--%>
<%--class="caret"></span></a>
</td>--%>
<td>Details</td>
</tr>
</thead>
<tbody>
<c:forEach
items="${orderInfo.goodsInfo}"
var="goods">
<tr>
<td>${goods.goodsid}</td> 
<td>${goods.goodsname}</td> 
<td>￥${goods.price}</td> 
<td>${goods.num}</td> 
<%--<td>234&lt;%&ndash;${goods.detailcate}&ndash;%&gt; 
</td>--%> 
<td><a href="${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}" 
class="templatemo-link">Details</a> 
</td> 
<%--<td> 
<button href="" 
class="templatemo-edit-btn">Edit</button> 
</td> 
<td> 
<button href="" 
class="templatemo-delete-btn">Delete</button> </td>--%> 
</tr> 
</c:forEach> 

</tbody> 
</table> 
</div> 
</div> 
</div> 
</div> 
</div> 
</div> 
</div> 
</c:forEach> 

<div class="pagination-wrap" id="page-div-nav"> 
<div class="page-info" id="page-info-area"> 
Page ${pageInfo.pageNum} of ${pageInfo.pages}, Total 
${pageInfo.total} records 
</div> 
<ul class="pagination"> 
<li> 
<a href="${pageContext.request.contextPath}/admin/order/send?page=1" 
aria-label="Next"> 
<span aria-hidden="true">First</span> 
</a> 
</li> 

<c:if test="${pageInfo.hasPreviousPage}"> 
<li> 
<a href="${pageContext.request.contextPath}/admin/order/send?page=${pageInfo.pageNum - 1}" 
aria-label="Previous"> 
<span aria-hidden="true"><i 
class="fa fa-backward"></i></span> 
</a> 
</li> 
</c:if> 

<c:forEach items="${pageInfo.navigatepageNums}" var="pageNums"> 
<c:if test="${pageNums == pageInfo.pageNum}"> 
<li class="active"><ahref="${pageContext.request.contextPath}/admin/order/send?page=${pageNums}">${pageNums}</a> 
</li> 
</c:if> 
<c:if test="${pageNums != pageInfo.pageNum}"> 
<li><a 
href="${pageContext.request.contextPath}/admin/order/send?page=${pageNums}">${pageNums}</a> 
</li> 
</c:if> 
</c:forEach> 

<c:if test="${pageInfo.hasNextPage}"> 
<li> 
<a href="${pageContext.request.contextPath}/admin/order/send?page=${pageInfo.pageNum + 1}" 
aria-label="Next"> 
<span aria-hidden="true"><i 
class="fa fa-forward"></i></span> 
</a> 
</li> 
</c:if> 
<li> 
<a href="${pageContext.request.contextPath}/admin/order/send?page=${pageInfo.pages}" 
aria-label="Next"> 
<span aria-hidden="true">Last</span> 
</a> 
</li> 
</ul> 
</div> 
</div> 
</div> 
</div> 
</body> 

</html>
