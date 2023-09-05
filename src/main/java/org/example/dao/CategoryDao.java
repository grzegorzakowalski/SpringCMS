package org.example.dao;

import org.example.entity.Category;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Transactional
public class CategoryDao {

    @PersistenceContext
    private EntityManager em;

    public void save(Category category){
        em.persist(category);
    }

    public void delete(Category category){
        em.remove(category);
    }

    public Category update(Category category){
        return em.merge(category);
    }

    public List<Category> findAll(){
        return em.createQuery("SELECT c FROM Category c",Category.class).getResultList();

    }
}
