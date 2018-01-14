package com.journaldev.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "posts")
public class Post implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "title")
	private String title;

	@Column(name = "content")
	private String content;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "age")
	private int age;
	
	protected Post(){
		
	}
	
	public Post (String title, String content, String description, int age){
		this.title = title;
		this.content = content;
		this.description = description;
		this.age = age;
	}
	
	@Override
	public String toString() {
		return String.format("Post[id=%d, title='%s', content='%s']", id, title, content);
	}
	

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getAge(){
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

}
