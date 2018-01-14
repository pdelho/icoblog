package com.journaldev.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.journaldev.model.Post;
import com.journaldev.service.PostManager;

@Controller
public class PostsController {

	@Autowired
	private PostManager postManager;


	/**
	 * READ ALL POSTS
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/posts", method = RequestMethod.GET)
	public String posts(Model model) {		
		List<Post> posts = postManager.getPosts();
		model.addAttribute("posts", posts);
		return "post/all";

	}

	// To register a post, first you get the form
	/**
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/post/add", method = RequestMethod.GET)
	public String addPost(Model model) {
		return "post/add";

	}

	/**
	 * SAVE A POST
	 * @param post
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/post", method = RequestMethod.POST)
	public String savePost(@Validated Post post, Model model) {

		boolean existPost;
		if (postManager.getPostById(post.getId()) == null) existPost = false;
		else existPost = true;
		if(!existPost){
			// Create a new one and save it
			Post newPost = new Post (post.getTitle(), post.getContent(), post.getDescription(), post.getAge());
			// Save it
			postManager.savePost(newPost);		
		} else {
			Post updatedPost = postManager.getPostById(post.getId());
			updatedPost.setTitle(post.getTitle());
			updatedPost.setContent(post.getContent());
			updatedPost.setDescription(post.getDescription());
			updatedPost.setAge(post.getAge());
			postManager.savePost(updatedPost);
		}
		

		// Get all postss and render them
		List<Post> posts = postManager.getPosts();
		model.addAttribute("posts", posts);
		return "post/all";

	}

	// To update or read a post, first we get a form with the details of the post
	@RequestMapping(value = "/post/{id}", method = RequestMethod.GET)
	public String postForm(@PathVariable int id, Model model) {
		Post existingPost = postManager.getPostById(id);
		model.addAttribute("post", existingPost);
		return "post/details";

	}
	
	// To delete a post
	@RequestMapping(value = "/post/delete/{id}", method = RequestMethod.GET)
	public String postDeleteForm(@PathVariable int id, Model model) {
		Post deletedPost = postManager.getPostById(id);
		postManager.deletePost(deletedPost);
		// Get all posts and render them
		List<Post> posts = postManager.getPosts();
		model.addAttribute("posts", posts);
		return "post/all";

	}
}
