package com.journaldev.service;

import java.io.Serializable;
import java.util.List;

import com.journaldev.model.Post;


public interface PostManager extends Serializable{
	
	public Post getPostById(long id);
	
    public List<Post> getPosts();
    
    public void savePost(Post post);
    
    public void deletePost(Post post);

}
