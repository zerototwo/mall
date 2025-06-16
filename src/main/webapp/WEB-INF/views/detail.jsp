<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!doctype html> 
<html class="" lang="en"> 

<head> 
<meta charset="utf-8"> 
<meta http-equiv="x-ua-compatible" content="ie=edge"> 
<title>Changli Mall - ${goodsInfo['goods'].goodsname}</title> 
<meta name="description" content=""> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 

<!-- all css here --> 
<!-- bootstrap v3.3.6 css --> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"> 

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css"> 
<!-- style css --> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"> 

<link href="${pageContext.request.contextPath}/css/shopdetail.css" rel="stylesheet"> 
<!-- <script src="./detail/js/jquery.js"></script> --> 
<script src="${pageContext.request.contextPath}/js/jquery.js"></script> 

<%--<script src="${pageContext.request.contextPath}/js/sort.js"></script>--%> 

<!-- bootstrap js --> 
<script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/sort.js"></script> 
<script src="${pageContext.request.contextPath}/js/detail.js"></script> 
<script type="text/javascript"> 
$(document).ready(function () { 
var showproduct = { 
"boxid": "showbox", 
"sumid": "showsum", 
"boxw": 400, 
"boxh": 550, "sumw": 60, // List width, please fill in the same width and height in this version
"sumh": 60, // List height, please fill in the same width and height in this version
"sumi": 7, // List interval
"sums": 5, // Number of lists displayed
"sumsel": "sel",
"sumborder": 1, // List border, fill in 0 if there is no border, modify the border in css
"lastid": "showlast",
"nextid": "shownext"
}; // Parameter definition
$.ljsGlasses.pcGlasses(showproduct); // Method call, must be executed after loading

$(function () {

$('.tabs a').click(function () {

var $this = $(this);
$('.panel').hide();
$('.tabs a.active').removeClass('active');
$this.addClass('active').blur();
var panel = $this.attr("href");
$(panel).show();
return fasle; //Tell the browser not to box this link
}); //end click

$(".tabs li:first a").click(); //web browser, click the first tab

}); //end ready

$(".centerbox li").click(function () {
$("li").removeClass("now");
$(this).addClass("now");

});

/*$("#chatto").click(function () {
$.ajax({
url: "/shop/chat/", //Send form data to ajax.jsp
type: "POST",
data: {
sendto: 5
},
error: function (request) {
alert(result.msg);
},
success: function (result) {
}
});
});*/ 

$('.fav-button').click(function () { 
//$(this).removeClass("glyphicon-heart-empty"); 
var goodsId = $(this).attr('data-id'); 
var isChangeBtn = true; 
if (!$(this).children("i").hasClass('fa-heart')) { 
//collect 
$.ajax({ 
url: "/shop/collect", 
type: "POST", 
data: {goodsid: goodsId
},
success: function (result) {
//Collection successful
if (result.code === 200) {
location.href = "/shop/login";
isChangeBtn = false;
}
},
error: function () {
alert("Collection failed");
}
})
} else {
//Cancel collection
$.ajax({
url: "/shop/deleteCollect",
type: "POST",
data: {
goodsid: goodsId
},
success: function (result) {
//Cancel collection successfully
if (result.code === 200) {
location.href = "/shop/login";
isChangeBtn = false;
}
},
error: function () {
alert("Cancel collection failed");
}
})
}

/*$.post("servlet/CollectServlet", {
goodsId: goodsId,
});
// alert("The product has been added to the shopping cart!");*/

if (isChangeBtn) {
$(this).children("i").toggleClass("fa-heart fa-heart-o");
var likeContent = $(this).children("span").text();
if (likeContent == 'Collection') {
$(this).children("span").text('Cancel collection');
} else {
$(this).children("span").text('Collection');
}
}
});
});
</script>
<style>
.head {
width: 45px !important;
background: rgba(0, 0, 0, .0001) none repeat scroll 0 0 !important;
border: 1px solid rgba(0, 0, 0, .075) !important; 
} 

.span-block { 
display: block !important; 
padding: 5px; 
} 
</style> 

</head> 

<body> 
<!--zoom elavator area one start--> 
<div class="elavator_area"> 
<div class="container"> 
<jsp:include page="header.jsp" /> 
<div class="shop_menu shop_menu_2 main-detail-div"> 
<ul class="cramb_area cramb_area_5 main-detail-nav"> 
<li><a href="/shop/main">Home /</a></li> 
<%--<li><a href="index.html">Shop /</a></li> 
<li><a href="index.html">Headlight/</a></li> 
<li><a href="index.html">Hats /</a></li>--%> 
<li class="br-active">${goodsInfo['goods'].goodsname}</li> 
</ul> 
</div> 
<div class="row"> 
<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12"> 
<div class="shopdetails"> 
<div id="leftbox"> 
<div id="showbox"> 
<c:forEach items="${goodsInfo['image']}" var="path"> 
<img src="${pageContext.request.contextPath}/pictures/${path.path}" 
width="400" height="400" /> 
</c:forEach> 
</div> 
<div id="showsum"> 
</div> 
<p class="showpage"> 
<a href="javascript:void(0);" id="showlast">< </a> 
<a href="javascript:void(0);" id="shownext"> > </a> 
</p> 
</div> 
</div> 
</div> 
<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12"> 
<div class="elav_titel"> 
<div class="elv_heading"> 
<h3>${goodsInfo['goods'].goodsname}</h3> 
</div> 
<div class="price_rating"> 
<%--<a href="#"> 
<i class="fa fa-star"></i> 
</a> 
<a href="#"> 
<i class="fa fa-star"></i> 
</a> 
<a href="#"> 
<i class="fa fa-star"></i> 
</a> 
<a href="#"> 
<i class="fa fa-star"></i> 
</a> 
<a class="not-rated" href="#"> 
<i class="fa fa-star-o"></i> 
</a> 
<a class="review-link" href="#"> 
( 
<span class="count">2</span> 
customer reviews) 
</a>--%> 
</div> 
<!-- <div class="evavet_description"> 
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
</div> --> 
</div> 
<div class="elav_info"> 
<!-- Price --> 
<div class="price_box price_box_acr new_meta"> 
<%--<span class="old- price old- price-2">$250.00</span>--%> 
<span 
class="spical-price spical-price-2">￥${goodsInfo['goods'].price}</span> 
</div> 
<div class="new_meta"> 
<span class="sku_wrapper big-font"> 
Category: 
<span class="sku">${goodsInfo['cate'].catename}</span> 
</span> 
<span class="sku_wrapper big-font"> 
Quantity: 
<span class="sku">${goodsInfo['goods'].num}</span> 
</span> 
</div> 

<div class="new_meta"> 
<span class="sku_wrapper big-font"> 
Promotion: 
<c:if test="${goodsInfo['goods'].activityid != 1}"> 
<span class="sku">${goodsInfo['goods'].activity.activityname}</span> 
<span 
class="span-block">${goodsInfo['goods'].activity.activitydes}</span> 
<span class="span-block">Discount: 
${goodsInfo['goods'].activity.discount}</span> 
<c:if test="${!empty goodsInfo['goods'].activity.fullprice}"> 
<span class="span-block"> 
Spend ${goodsInfo['goods'].activity.fullprice} Save 
${goodsInfo['goods'].activity.reduceprice} 
</span> 
</c:if> 
<c:if test="${!empty goodsInfo['goods'].activity.fullnum}"> 
<span class="span-block"> 
Buy ${goodsInfo['goods'].activity.fullnum} Get 
${goodsInfo['goods'].activity.reducenum} Free 
</span> 
</c:if> 
</c:if> 
<c:if test="${goodsInfo['goods'].activityid == 1}"> 
<span class="sku">No promotion, stay tuned!</span> 
</c:if> 
</span> 
</div> 
<%--<div class="new_meta"> 
</div>--%> 

<div class="rel-div"> 
<div class="add_defi new_meta"> 
<a id="chatto" href="#" data-original-title="Add to Wishlist" 
data-toggle="tooltip" class="big-font"> 
<i class="fa fa-commenting"></i> 
Please read the product description before purchasing 
</a> 
</div> 
<form class="cart-btn-area new_meta" 
action="${pageContext.request.contextPath}/addCart" method="post"> 
<input type="hidden" value="${goodsInfo['goods'].goodsid}" name="goodsid" /> 
<input type="number" value="1" name="goodsnum"> 
<button class="add-tocart cart_zpf" type="submit">Add to Cart</button> 
</form> 
<div class="add_defi new_meta"> 
<a data-original-title="Add to Wishlist" data-toggle="tooltip" 
class="fav-button big-font" data-id="${goodsInfo['goods'].goodsid}"> 
<c:if test="${goodsInfo['goods'].fav}"> 
<i class="fa fa-heart"></i> 
Unfavorite 
</c:if> <c:if test="${!goodsInfo['goods'].fav}"> 
<i class="fa fa-heart-o"></i> 
<span class="like-content">Favorite</span> 
</c:if> 
</a> 
</div> 
</div> 

<!-- <div class="add_defi_2"> 
<a data-original-title="Compare" title="" data-toggle="tooltip" rel="nofollow" data-product_id="45" href=""><i class="fa fa-refresh another_icon"></i> Compare</a> 
</div> --> 

</div> 
</div> 
<!-- <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"> 

</div> --> 
</div> 
</div> 
</div> 
<!--zoom elavator area one end--> 
<!--tab area start--> 
<div class="tab_area_start"> 
<div class="container"> 
<div class="row"> 
<div class="col-md-12 col-sm-12 col-xs-12 text-right"> 
<div class="my-tabs"> 
<!-- Nav tabs --> 
<ul class="favtabs favtabs-2 favtabs-nytr" role="tablist"> 
<%--<li role="presentation" class="active"><a href="#home" aria-controls="home" 
role="tab" data-toggle="tab">Discription</a></li>--%> 
<li role="presentation" class="active"><a href="#home" aria-controls="home" 
role="tab" data-toggle="tab">Product Description</a></li> 
<li role="presentation"><a href="#profile" aria-controls="profile" 
role="tab" data-toggle="tab">Reviews 
(${commentList.size()})</a></li> 
</ul> 
<!-- Tab panes --> 
<div class="tab-content"> 
<div role="tabpanel" class="tab-pane active" id="home"> 
<div class="row"> 
<div class="col-md-12 col-xs-12"><div class="tb_desc"> 
<h2>Product Description</h2> 
<p>${goodsInfo['goods'].description}</p> 
</div> 
</div> 
</div> 
</div> 
<div role="tabpanel" class="tab-pane" id="profile"> 
<div class="row"> 
<div class="col-md-12 col-xs-12"> 
<div class="tb_desc"> 
<div class="review_area_heading"> 
<div id="comnt"> 
<h2>${commentList.size()} Comments</h2> 
<ol class="commentlist"> 
<c:forEach items="${commentList}" var="comment"> 
<li id="li-comment-22" 
class="comment even thread-even depth-1" 
itemscope=""> 
<div id="comment-22" class="comment_container"> 
<img class="head avatar avatar-60 photo " 
width="60" height="60" 
src="${pageContext.request.contextPath}/image/head.jpg" 
alt=""> 
<div class="comment-text"> 
<div class="star-rating" 
title="Rated ${comment.point} out of 5" 
itemscope=""> 
<div 
class="price_rating price_rating_2"> 
<c:forEach begin="1" 
end="${comment.point}"> 
<a href="#"> 
<i 
class="fa fa-star"></i> 
</a> 
</c:forEach> 
<c:forEach 
begin="${comment.point+1}" 
end="5"> 
<a class="not-rated" 
href="#"> 
<i class="fa fa-star-o" aria-hidden="true"></i> 
</a> 
</c:forEach> 
<span> 
<strong>${comment.point}</strong>out of
${5-comment.point}
</span>
</div>
</div>
<p class="meta">
<strong>${comment.username}</strong>
–
<time
datetime="${comment.commenttime}">
${comment.commenttime.year+1900}/${comment.commenttime.month+1}/${comment.commenttime.date}
</time>
:
<a href="#"
data-original-title="Add to Wishlist"
data-toggle="tooltip"
class=" big-font">
<i
class="fa fa-commenting"></i>
</a>
</p>
<div class="description">
<p>${comment.content}</p>
</div>
</div>
</div>
</li>
</c:forEach>
</ol>
</div>
<%--<div class="review_form_area">
<div class="review_form">
<div class="revew_form_content">
<h3 id="reply-title"
class="comment-reply-title">
Add a review
<small>
<a id="cancel-comment-reply-link"
style="display:none;" href="#"
rel="nofollow">Cancel reply</a>
</small>
</h3>
<form id="commentform" class="comment-form"
method="post" action="form">
<div class="comment-form-rating">
<label class="comment">Your
Rating</label>
<div
class="price_rating price_rating_2 price_rating_3">
<a href="#"><i class="fa fa-star-o"></i> 
</a> 
<a href="#"> 
<i class="fa fa-star-o"></i> 
</a> 
<a href="#"> 
<i class="fa fa-star-o"></i> 
</a> 
<a href="#"> 
<i class="fa fa-star-o"></i> 
</a> 
<a href="#"> 
<i class="fa fa-star-o"></i> 
</a> 
</div> 
</div> 
<div class="comment-form-comment"> 
<label class="comment">Your 
Review</label> 
<textarea id="comment" 
aria-required="true" rows="8" 
cols="45" name="comment"></textarea> 
</div> 
<div class="comment-form-author"> 
<label class="comment"> 
Name <span 
class="required required_menu">*</span> 
</label> 
<input id="author" class="mix_type" 
type="text" aria-required="true" 
size="30" value="" name="author"> 
</div> 
<div class="comment-form-email"> 
<label class="comment"> 
Email 
<span 
class="required required_menu">*</span> 
</label> 
<input id="email" class="mix_type" 
type="text" aria-required="true" 
size="30" value="" name="email"> 
</div> 
<div class="form-submit"> 
<input id="sub" class="submt" 
type="submit" value="Submit" 
name="submit"> 
</div> 
</form></div> 
</div> 
</div>--%> 
</div> 
</div> 
</div> 
</div> 
</div> 
</div> 
</div> 
</div> 
</div> 
</div> 
</div> 
<!--tab area end--> 
<!-- jquery latest version --> 
<!-- <script src="js/vendor/jquery-1.12.0.min.js"></script> --> 
<!-- bootstrap js --> 
<!-- <script src="js/bootstrap.min.js"></script> --> 

</body> 

</html>
