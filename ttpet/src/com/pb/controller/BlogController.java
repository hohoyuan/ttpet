package com.pb.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pb.dao.AlbumDao;
import com.pb.dao.BlogDao;
import com.pb.vo.Blog;
import com.pb.vo.BlogType;

@Controller
@RequestMapping("/blog")
public class BlogController {
	@Autowired
	AlbumDao albumDao;
	@Autowired
	BlogDao blogDao;
	
	private Logger logger = Logger.getLogger(BlogController.class);
	
	@RequestMapping("")
	public String gotoBlog(HttpServletRequest request){
		Map<String, String> authMap = albumDao.getAuthMap();
		List<BlogType> blogTypeList = blogDao.getBlogTypeByUserId(1);
		request.setAttribute("authMap", authMap);
		request.setAttribute("blogTypeList", blogTypeList);
		return "blog/blog";
	}
	@RequestMapping("/showBlog")
	public String showBlog(HttpServletRequest request){
		Integer blog_type_id = Integer.parseInt(request.getParameter("blogTypeId"));
		List<Blog> blogList = blogDao.getBlogById(blog_type_id, "blog_Type_Id");
		request.setAttribute("blogList", blogList);
		return "blog/showBlog";
	}
	@RequestMapping("/blogDetail")
	public String blogDetail(HttpServletRequest request){
		Integer id = Integer.parseInt(request.getParameter("id"));
		Blog blog = blogDao.getBlogById(id, "blog_Id").get(0);
		request.setAttribute("blog", blog);
		return "blog/blogDetail";
	}
}
