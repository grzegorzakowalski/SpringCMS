package org.example.controllers;

import org.example.dao.AuthorDao;
import org.example.entity.Author;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/author")
public class AuthorController {
    @Autowired
    private AuthorDao authorDao;

    @GetMapping("list")
    private String authorList(Model model){
        model.addAttribute("authorList", authorDao.findAll());
        model.addAttribute("siteName","Lista autorów");
        return "/author/list";
    }

    @GetMapping("/add")
    private String authorAddView(Model model){
        model.addAttribute("siteName","Dodawanie autora");
        model.addAttribute("author", new Author());
        return "/author/add";
    }

    @PostMapping("/add")
    private String authorAdd(Author author){
        authorDao.save(author);
        return "redirect:/author/list";
    }

    @GetMapping("/update")
    private String authorUpdateView(Model model, Long id){
        model.addAttribute("author", authorDao.findById(id));
        model.addAttribute("siteName","Zaktualizuj autora");
        return "/author/update";
    }

    @PostMapping("/update")
    private String authorUpdate(Author author){
        authorDao.update(author);
        return "redirect:/author/list";
    }

    @GetMapping("/delete")
    private String authorDeleteView(Long id, Model model){
        model.addAttribute("author", authorDao.findById(id));
        model.addAttribute("siteName", "Usuń autora");
        return "/author/delete";
    }

    @PostMapping("/delete")
    private String authorDelete(Long id){
        authorDao.deleteById(id);
        return "redirect:/author/list";
    }
}
