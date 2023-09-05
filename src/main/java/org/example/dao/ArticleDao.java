package org.example.dao;

import org.example.entity.Article;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
@Transactional
public class ArticleDao {

    @PersistenceContext
    private EntityManager em;

    public void save(Article article){
        em.persist(article);
    }

    public void delete(Article article){
        em.remove(article);
    }

    public Article update(Article article){
        return em.merge(article);
    }



}
