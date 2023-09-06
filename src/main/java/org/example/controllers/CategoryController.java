package org.example.controllers;

import org.example.dao.CategoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryDao categoryDao;

    @GetMapping("/list")
    public String categoryList(Model model){
        model.addAttribute("categoryList", categoryDao.findAll());
        model.addAttribute("siteName", "Lista kategorii");
        return "category/list";
    }
}
