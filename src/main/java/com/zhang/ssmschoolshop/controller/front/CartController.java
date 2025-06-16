package com.zhang.ssmschoolshop.controller.front;


import com.zhang.ssmschoolshop.entity.*;
import com.zhang.ssmschoolshop.service.GoodsService;
import com.zhang.ssmschoolshop.service.ShopCartService;
import com.zhang.ssmschoolshop.util.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CartController { 

@Autowired 
private ShopCartService shopCartService; 

@Autowired 
private GoodsService goodsService; 

@RequestMapping("/addCart") 
public String addCart(ShopCart shopCart, HttpServletRequest request) { 
HttpSession session = request.getSession(); 
User user = (User) session.getAttribute("user"); 
if(user == null) { 
return "redirect:/login"; 
} 
//Determine whether it has been added to the shopping cart 
ShopCart shopCart1 = shopCartService.selectCartByKey(new ShopCartKey(user.getUserid(), shopCart.getGoodsid())); 
if (shopCart1 != null) { 
return "redirect:/showcart"; 
} 

//user 
shopCart.setUserid(user.getUserid()); 

//Add time 
shopCart.setCatedate(new Date()); 

shopCartService.addShopCart(shopCart); 

//Return to shopping cart page 
return "redirect:/showcart"; 
} 

@RequestMapping("/showcart") 
public String showCart(HttpSession session) { 
User user = (User) session.getAttribute("user"); 
if(user == null) { 
return "redirect:/login"; 
} 
return "shopcart"; 
} 

@RequestMapping("/cartjson") 
@ResponseBody 
public Msg getCart(HttpSession session) { 
User user = (User) session.getAttribute("user"); if(user == null) {
return Msg.fail("Please log in first");
}

//Get the current user's shopping cart information
ShopCartExample shopCartExample = new ShopCartExample();
shopCartExample.or().andUseridEqualTo(user.getUserid());
List<ShopCart> shopCart = shopCartService.selectByExample(shopCartExample);

//Get the product information in the shopping cart
List<Goods> goodsAndImage = new ArrayList<>();
for (ShopCart cart:shopCart) {
Goods goods = goodsService.selectById(cart.getGoodsid());
List<ImagePath> imagePathList = goodsService.findImagePath(goods.getGoodsid());
goods.setImagePaths(imagePathList);
goods.setNum(cart.getGoodsnum());
goodsAndImage.add(goods);
}

return Msg.success("Query successful").add("shopcart",goodsAndImage); 
} 

@RequestMapping(value = "/deleteCart/{goodsid}", method = RequestMethod.DELETE) 
@ResponseBody 
public Msg deleteCart(@PathVariable("goodsid")Integer goodsid, HttpSession session) { 
User user = (User) session.getAttribute("user"); 
if(user == null) { 
return Msg.fail("Please log in first"); 
} 

shopCartService.deleteByKey(new ShopCartKey(user.getUserid(), goodsid)); 
return Msg.success("Deletion successful"); 
} 

@RequestMapping("/update") 
@ResponseBody 
public Msg updateCart(Integer goodsid,Integer num,HttpSession session) { 
User user = (User) session.getAttribute("user");
if(user == null) {
return Msg.fail("Please log in first");
}
ShopCart shopCart = new ShopCart();
shopCart.setUserid(user.getUserid());
shopCart.setGoodsid(goodsid);
shopCart.setGoodsnum(num);
shopCartService.updateCartByKey(shopCart);
return Msg.success("Shopping cart updated successfully");
}
}
