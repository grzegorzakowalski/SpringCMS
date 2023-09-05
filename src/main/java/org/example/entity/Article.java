package org.example.entity;

import lombok.Data;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.boot.model.source.spi.FetchCharacteristics;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "articles")
@Data
public class Article {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(length = 200)
    private String title;
    @ManyToOne
    private Author author;
    @ManyToMany( fetch = FetchType.EAGER)
    @JoinTable( name = "articles_categories",
        joinColumns = @JoinColumn(name = "articles_id"),
        inverseJoinColumns = @JoinColumn(name = "categories_id"))
    private List<Category> categories = new ArrayList<>();
    private String content;
    private LocalDateTime created;
    private LocalDateTime updated;
}
