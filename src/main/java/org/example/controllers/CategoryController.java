package org.example.controllers;

import org.example.dao.CategoryDao;
import org.example.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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

    @GetMapping("/add")
    public String categoryAddView(Model model){
        model.addAttribute("category", new Category());
        model.addAttribute("siteName", "Dodaj kategorię");
        return "category/add";
    }

    @PostMapping("/add")
    public String categoryAdd(Category category){
        categoryDao.save(category);
        return "redirect:/category/list";
    }

    @GetMapping("/update")
    public String categoryUpdateView(Model model, Long id){
        model.addAttribute("category", categoryDao.findById(id));
        model.addAttribute("siteName", "Zaktualizuj kategorię");
        return "category/update";
    }
    @PostMapping("/update")
    public String categoryUpdate(Category category){
        categoryDao.update(category);
        return "redirect:/category/list";
    }
    @GetMapping("/delete")
    public String categoryDeleteView(Model model,Long id){
        model.addAttribute("category", categoryDao.findById(id));
        model.addAttribute("siteName", "Usuń kategorię");
        return "category/delete";
    }
    @PostMapping("/delete")
    public String categoryDelete(Long id){
        categoryDao.delete(categoryDao.findById(id));
        return "redirect:/category/list";
    }
}
