package org.example.dao;

import org.example.entity.Article;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.time.LocalDateTime;
import java.util.List;

@Transactional
@Repository
public class ArticleDao {

    @PersistenceContext
    private EntityManager em;

    public void save(Article article){
        article.setCreated(LocalDateTime.now());
        article.setUpdated(LocalDateTime.now());
        em.persist(article);
    }

    public void delete(Article article){
        em.remove(article);
    }

    public Article update(Article article){
        article.setUpdated(LocalDateTime.now());
        return em.merge(article);
    }

    public List<Article> findAll(){
        return em.createQuery("SELECT a FROM Article a", Article.class).getResultList();
    }

    public List<Article> findLastFive(){
        return em.createQuery("SELECT a FROM Article a ORDER BY a.created DESC", Article.class).getResultList().stream()
                .limit(5l)
                .toList();
    }



}
