package com.journaldev.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.journaldev.model.Post;
import com.journaldev.repository.PostDAO;

@Component
public class SimplePostManager implements PostManager {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
    private PostDAO postDAO;
	
	 public void setPostDao(PostDAO postDAO) {
	        this.postDAO = postDAO;	 
	 }


	 @Override
	 public Post getPostById(long id) {
		 return postDAO.getPostById(id);
	 }

	public List<Post> getPosts() {
		return postDAO.getPostList(); 
	}


	@Override
	public void savePost(Post post) {
		postDAO.savePost(post);
		
	}

	@Override
	public void deletePost(Post post) {
		postDAO.deletePost(post);
		
	}

}
