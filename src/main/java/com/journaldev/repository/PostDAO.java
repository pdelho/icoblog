package com.journaldev.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.journaldev.model.Post;


@Repository(value = "postDAO")
public interface PostDAO {
	
	public Post getPostById(long id);

	public List<Post> getPostList();

    public void savePost(Post post);
    
    public void deletePost(Post post);
    
}
