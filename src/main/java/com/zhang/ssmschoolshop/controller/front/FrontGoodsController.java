package com.zhang.ssmschoolshop.controller.front;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhang.ssmschoolshop.entity.*;
import com.zhang.ssmschoolshop.service.*;
import com.zhang.ssmschoolshop.util.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class FrontGoodsController { 

@Autowired 
private GoodsService goodsService; 

@Autowired 
private CateService cateService; 

@Autowired 
private CommentService commentService; 

@Autowired 
private UserService userService; 

@Autowired 
private ActivityService activityService; 

@RequestMapping(value = "/detail", method = RequestMethod.GET) 
public String detailGoods(Integer goodsid, Model model, HttpSession session) { 

if(goodsid == null) {
return "redirect:/main";
}

User user = (User) session.getAttribute("user");

//The data to be returned is stored in HashMap
Map<String,Object> goodsInfo = new HashMap<String,Object>();

//Query the basic information of the product
Goods goods = goodsService.selectById(goodsid);

if (user == null) {
goods.setFav(false);
} else {
Favorite favorite = goodsService.selectFavByKey(new FavoriteKey(user.getUserid(), goodsid));
if (favorite == null) {
goods.setFav(false);
} else {
goods.setFav(true);
}
}

//Query the product category
Category category = cateService.selectById(goods.getCategory());

//Product image
List<ImagePath> imagePath = goodsService.findImagePath(goodsid); 

//Product reviews 

//Product discount information 
Activity activity = activityService.selectByKey(goods.getActivityid()); 
goods.setActivity(activity); 

//return data 
goodsInfo.put("goods", goods); 
goodsInfo.put("cate", category); 
goodsInfo.put("image", imagePath); 
model.addAttribute("goodsInfo",goodsInfo);
// model.addAllAttributes(goodsInfo); 

//Comment information 
CommentExample commentExample=new CommentExample(); 
commentExample.or().andGoodsidEqualTo(goods.getGoodsid()); 
List<Comment> commentList=commentService.selectByExample(commentExample); 
for (Integer i=0;i<commentList.size();i++) 
{ 
Comment comment=commentList.get(i); 
User commentUser=userService.selectByPrimaryKey(comment.getUserid()); comment.setUserName(commentUser.getUsername()); 
commentList.set(i,comment); 
} 
model.addAttribute("commentList",commentList); 

return "detail"; 
} 

@RequestMapping(value = "/search", method = RequestMethod.GET) 
public String searchGoods(@RequestParam(value = "page",defaultValue = "1") Integer pn, String keyword, Model model, HttpSession session) { 
User user = (User) session.getAttribute("user"); 

//Display several data on one page 
PageHelper.startPage(pn, 16); 

//Query data 
GoodsExample goodsExample = new GoodsExample(); 
goodsExample.or().andGoodsnameLike("%" + keyword + "%"); 
List<Goods> goodsList = goodsService.selectByExample(goodsExample); 

//Get the image address 
for (int i = 0; i < goodsList.size(); i++) { 
Goods goods = goodsList.get(i); 

List<ImagePath> imagePathList = goodsService.findImagePath(goods.getGoodsid()); 

goods.setImagePaths(imagePathList); 

//Determine whether to collect 
if (user == null) { 
goods.setFav(false); 
} else { 
Favorite favorite = goodsService.selectFavByKey(new FavoriteKey(user.getUserid(), goods.getGoodsid())); 
if (favorite == null) { 
goods.setFav(false); 
} else { 
goods.setFav(true); 
} 
} 

goodsList.set(i, goods); 
} 


//Display several page numbers 
PageInfo page = new PageInfo(goodsList,5); 
model.addAttribute("pageInfo", page); 
model.addAttribute("keyword", keyword); 

return "search"; }

@RequestMapping("/collect")
@ResponseBody
public Msg collectGoods(Integer goodsid, HttpSession session) {
//Get logged-in user information, redirect to login page if not logged in
User user = (User) session.getAttribute("user");
if(user == null) {
return Msg.fail("Collection failed");
}

//Add favorites
Favorite favorite = new Favorite();
favorite.setCollecttime(new Date());
favorite.setGoodsid(goodsid);
favorite.setUserid(user.getUserid());
goodsService.addFavorite(favorite);
return Msg.success("Collection successful");
}

@RequestMapping("/deleteCollect")
@ResponseBody
public Msg deleteFavGoods(Integer goodsid, HttpSession session) {
User user = (User) session.getAttribute("user");
if (user == null) {
return Msg.fail("Cancel favorite failed");
}

//Delete favorites
goodsService.deleteFavByKey(new FavoriteKey(user.getUserid(),goodsid));

return Msg.success("Cancel favorite successfully");
}

@RequestMapping("/category")
public String getCateGoods(String cate, @RequestParam(value = "page",defaultValue = "1") Integer pn, Model model, HttpSession session) {
User user = (User) session.getAttribute("user");

//Display several data on one page
PageHelper.startPage(pn, 16);

//Query category id
CategoryExample categoryExample = new CategoryExample();
categoryExample.or().andCatenameLike(cate);
List<Category> categoryList = cateService.selectByExample(categoryExample);

//Get the found category id
List<Integer> cateId = new ArrayList<>();
for (Category category : categoryList) {
cateId.add(category.getCateid());
}

//Query data
GoodsExample goodsExample = new GoodsExample();
goodsExample.or().andDetailcateLike("%" + cate + "%");
if (!cateId.isEmpty()) { 
goodsExample.or().andCategoryIn(cateId); 
} 
List<Goods> goodsList = goodsService.selectByExample(goodsExample); 

//Get the image address 
for (int i = 0; i < goodsList.size(); i++) { 
Goods goods = goodsList.get(i); 

List<ImagePath> imagePathList = goodsService.findImagePath(goods.getGoodsid()); 

goods.setImagePaths(imagePathList); 

//Determine whether to collect 
if (user == null) { 
goods.setFav(false); 
} else { 
Favorite favorite = goodsService.selectFavByKey(new FavoriteKey(user.getUserid(), goods.getGoodsid())); 
if (favorite == null) { 
goods.setFav(false); 
} else { 
goods.setFav(true); 
} } 

goodsList.set(i, goods); 
} 


//Display several page numbers 
PageInfo page = new PageInfo(goodsList,5); 
model.addAttribute("pageInfo", page); 
model.addAttribute("cate", cate); 
return "category"; 
} 



@RequestMapping("/comment") 
@ResponseBody 
public Msg comment(Comment comment, HttpServletRequest request){ 
HttpSession session=request.getSession(); 
User user=(User) session.getAttribute("user"); 
if (user == null) { 
return Msg.fail("Comment failed"); 
} 
comment.setUserid(user.getUserid()); 
Date date=new Date(); 
comment.setCommenttime(date); 
commentService.insertSelective(comment); 
return Msg.success("Comment successful"); 
}
}
