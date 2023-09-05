package org.example.dao;

import org.example.entity.Author;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Transactional
public class AuthorDao {

    @PersistenceContext
    private EntityManager em;

    public void save(Author author){
        em.persist(author);
    }

    public void delete(Author author){
        em.remove(author);
    }

    public Author update(Author author){
        return em.merge(author);
    }
}
