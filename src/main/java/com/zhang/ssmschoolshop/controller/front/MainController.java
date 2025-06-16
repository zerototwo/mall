package com.zhang.ssmschoolshop.controller.front;


import com.zhang.ssmschoolshop.entity.*;
import com.zhang.ssmschoolshop.service.CateService;
import com.zhang.ssmschoolshop.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController { 

@Autowired 
private CateService cateService; 

@Autowired 
private GoodsService goodsService; 


@RequestMapping("/") 
public String showAdmin(Model model, HttpSession session) { 
Integer userid; 
User user = (User) session.getAttribute("user"); 
if (user == null) { 
userid = null; 
} else { 
userid = user.getUserid(); 
} 

//Digital classification 
List<Goods> digGoods = getCateGoods("digital", userid); 
model.addAttribute("digGoods", digGoods); 

//Home appliances 
List<Goods> houseGoods = getCateGoods("Home Appliances", userid); 
model.addAttribute("houseGoods", houseGoods); 

//apparel 
List<Goods> colGoods = getCateGoods("Clothes", userid); 
model.addAttribute("colGoods", colGoods); 

//books 
List<Goods> bookGoods = getCateGoods("Books", userid); 
model.addAttribute("bookGoods", bookGoods); 

return "main"; 
} 




@RequestMapping("/main") 
public String showAllGoods(Model model, HttpSession session) { 
Integer userid; 
User user = (User) session.getAttribute("user"); 
if (user == null) { 
userid = null; 
} else { 
userid = user.getUserid(); 
} 
//Digital classification 
List<Goods> digGoods = getCateGoods("digital", userid); 
model.addAttribute("digGoods", digGoods); 
//Home appliances 
List<Goods> houseGoods = getCateGoods("Home Appliances", userid); 
model.addAttribute("houseGoods", houseGoods); 
//apparel 
List<Goods> colGoods = getCateGoods("Clothes", userid); 
model.addAttribute("colGoods", colGoods); 
//books 
List<Goods> bookGoods = getCateGoods("Books", userid);
model.addAttribute("bookGoods", bookGoods);

return "main";
}

public List<Goods> getCateGoods(String cate, Integer userid) {
//Query category
CategoryExample digCategoryExample = new CategoryExample();
digCategoryExample.or().andCatenameLike(cate);
List<Category> digCategoryList = cateService.selectByExample(digCategoryExample);

if (digCategoryList.size() == 0) {
return null;
}

//Query the products belonging to the category just found
GoodsExample digGoodsExample = new GoodsExample();
List<Integer> digCateId = new ArrayList<Integer>();
for (Category tmp:digCategoryList) {
digCateId.add(tmp.getCateid());
}
digGoodsExample.or().andCategoryIn(digCateId);

List<Goods> goodsList = goodsService.selectByExampleLimit(digGoodsExample);

List<Goods> goodsAndImage = new ArrayList<>();
//Get the image of each product
for (Goods goods:goodsList) {
//Judge whether it is logged in
if (userid == null) {
goods.setFav(false);
} else {
Favorite favorite = goodsService.selectFavByKey(new FavoriteKey(userid, goods.getGoodsid()));
if (favorite == null) {
goods.setFav(false);
} else {
goods.setFav(true);
}
}

List<ImagePath> imagePathList = goodsService.findImagePath(goods.getGoodsid()); 
goods.setImagePaths(imagePathList); 
goodsAndImage.add(goods); 
} 
return goodsAndImage; 
}
}
