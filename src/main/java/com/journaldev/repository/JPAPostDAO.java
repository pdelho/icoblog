package com.journaldev.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.model.Post;

@Repository(value = "postDAO")
public class JPAPostDAO implements PostDAO{
	
    private EntityManager em = null;

    /*
     * Sets the entity manager.
     */
    @PersistenceContext
    public void setEntityManager(EntityManager em) {
        this.em = em;
    }

    @Transactional(readOnly = true)
	public Post getPostById(long id) {
		return em.find(Post.class, id);
	}
    
    @Transactional(readOnly = true)
    @SuppressWarnings("unchecked")
	public List<Post> getPostList() {
    	return em.createQuery("SELECT p FROM Post p ORDER BY p.id").getResultList();
	}

    @Transactional(readOnly = false)
	public void savePost(Post post) {
    	em.merge(post);
	}

    @Transactional(readOnly = false)
	public void deletePost(Post post) {
    	// If we don't merge first, it has a temporal transactional object
		em.remove(em.merge(post));	
	}

}
