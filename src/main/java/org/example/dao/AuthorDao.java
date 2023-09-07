package org.example.dao;

import org.example.entity.Author;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Transactional
@Repository
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

    public List<Author> findAll(){
        return em.createQuery("SELECT a FROM Author a",Author.class).getResultList();
    }

    public Author findById(Long id){
        return em.find(Author.class, id);
    }

    public void deleteById(Long id){
        em.remove(findById(id));
    }
}
