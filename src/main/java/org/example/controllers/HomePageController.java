package org.example.controllers;

import org.example.dao.ArticleDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomePageController {

    @Autowired
    private ArticleDao articleDao;

    @GetMapping
    public String homePageView(Model model){
        model.addAttribute("articleList", articleDao.findLastFive());
        return "home-page";
    }
}
