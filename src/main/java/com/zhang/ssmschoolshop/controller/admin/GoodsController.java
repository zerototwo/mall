package com.zhang.ssmschoolshop.controller.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.zhang.ssmschoolshop.entity.*;
import com.zhang.ssmschoolshop.service.CateService;
import com.zhang.ssmschoolshop.service.GoodsService;
import com.zhang.ssmschoolshop.util.ImageUtil;
import com.zhang.ssmschoolshop.util.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;


@Controller
@RequestMapping("/admin/goods")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/showjson")
    @ResponseBody
    public Msg getAllGoods(@RequestParam(value = "page", defaultValue = "1") Integer pn, HttpServletResponse response, Model model, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return Msg.fail("login");
        }

        PageHelper.startPage(pn, 10);

        List<Goods> employees = goodsService.selectByExample(new GoodsExample());


        PageInfo page = new PageInfo(employees, 5);

        model.addAttribute("pageInfo", page);

        return Msg.success("success").add("pageInfo", page);
    }

    @RequestMapping("/show")
    public String goodsManage(@RequestParam(value = "page", defaultValue = "1") Integer pn, HttpServletResponse response, Model model, HttpSession session) throws IOException {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return "redirect:/admin/login";
        }

        List<Category> categoryList = cateService.selectByExample(new CategoryExample());
        model.addAttribute("categoryList", categoryList);

        return "adminAllGoods";
    }

    @RequestMapping("/add")
    public String showAdd(@ModelAttribute("succeseMsg") String msg, Model model, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return "redirect:/admin/login";
        }

        if (!msg.equals("")) {
            model.addAttribute("msg", msg);
        }

        List<Category> categoryList = cateService.selectByExample(new CategoryExample());
        model.addAttribute("categoryList", categoryList);



        return "addGoods";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ResponseBody
    public Msg updateGoods(Goods goods, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return Msg.fail("login");
        }
        /* goods.setGoodsid(goodsid);*/
        goodsService.updateGoodsById(goods);
        return Msg.success("success");
    }

    @RequestMapping(value = "/delete/{goodsid}", method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteGoods(@PathVariable("goodsid") Integer goodsid) {
        goodsService.deleteGoodsById(goodsid);
        return Msg.success("success");
    }

    @RequestMapping("/addGoodsSuccess")
    public String addGoods(Goods goods,
                           @RequestParam MultipartFile[] fileToUpload,
                           HttpServletRequest request,
                           HttpServletResponse response,
                           RedirectAttributes redirectAttributes) throws IOException {
        /*goods.setCategory(1);*/
        goods.setUptime(new Date());
        goods.setActivityid(1);
        goodsService.addGoods(goods);
        for (MultipartFile multipartFile : fileToUpload) {
            String fileName = goods.getGoodsname()+ multipartFile.getOriginalFilename();
            if (multipartFile != null) {
               String ImagePath= ImageUtil.imagePath(multipartFile,fileName);
               System.out.println("img is"+ImagePath);
 
              goodsService.addImagePath(new ImagePath(null, goods.getGoodsid(), ImagePath));

            }
        }

        redirectAttributes.addFlashAttribute("succeseMsg", "success");

        return "redirect:/admin/goods/add";
    }

    @RequestMapping("/addCategory")
    public String addcategory(@ModelAttribute("succeseMsg") String msg, Model model, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return "redirect:/admin/login";
        }
        CategoryExample categoryExample = new CategoryExample();
        categoryExample.or();
        List<Category> categoryList;
        categoryList = cateService.selectByExample(categoryExample);
        model.addAttribute("categoryList", categoryList);
        if (!msg.equals("")) {
            model.addAttribute("msg", msg);
        }
        return "addCategory";
    }

    @Autowired
    private CateService cateService;

    @RequestMapping("/addCategoryResult")
    public String addCategoryResult(Category category, Model addCategoryResult, RedirectAttributes redirectAttributes) {
        List<Category> categoryList = new ArrayList<>();
        CategoryExample categoryExample = new CategoryExample();
        categoryExample.or().andCatenameEqualTo(category.getCatename());
        categoryList = cateService.selectByExample(categoryExample);
        if (!categoryList.isEmpty()) {
            redirectAttributes.addAttribute("succeseMsg", "already exists");
            return "redirect:/admin/goods/addCategory";
        } else {
            cateService.insertSelective(category);
            redirectAttributes.addFlashAttribute("succeseMsg", "success");
            return "redirect:/admin/goods/addCategory";
        }
    }

    @RequestMapping("/saveCate")
    @ResponseBody
    public Msg saveCate(Category category) {
        CategoryExample categoryExample = new CategoryExample();
        categoryExample.or().andCatenameEqualTo(category.getCatename());
        List<Category> categoryList = cateService.selectByExample(categoryExample);
        if (categoryList.isEmpty()) {
            cateService.updateByPrimaryKeySelective(category);
            return Msg.success("success");
        } else return Msg.success("already exists");
    }

    @RequestMapping("/deleteCate")
    @ResponseBody
    public Msg deleteCate(Category category) {
        cateService.deleteByPrimaryKey(category.getCateid());
        return Msg.success("success");
    }
}
