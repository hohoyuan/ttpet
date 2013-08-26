package com.pb.dao;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.pb.vo.Blog;
import com.pb.vo.BlogType;

/**
 * 日志相关数据库操作dao
 * @author Administrator
 *
 */
@Service
public class BlogDao extends BaseDao {
	
	private Logger logger = Logger.getLogger(BlogDao.class);
	/**
	 * 获取用户所有日志类型
	 * @param userId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<BlogType> getBlogTypeByUserId(int userId){
	try {
		List list =	queryForList("getBlogTypeByUserId", new Object[]{userId});
		List<BlogType> blogTypeList = new ArrayList<BlogType>();
		for (Object obj : list) {
			Map map = (Map) obj;
			Integer id = (Integer) map.get("id");
			String blogTypeName = (String) map.get("blog_type_name");
			BlogType blogType = new BlogType();
			blogType.setId(id);
			blogType.setBlogTypeName(blogTypeName);
			blogTypeList.add(blogType);
		}
		return blogTypeList;
	} catch (SQLException e) {
		logger.error("----获取日志类型失败", e);
	}
		return null;
	}
	/**
	 * 获取日志根据id（有可能是typeId,有可能是blogId）
	 * @param id
	 * @param type
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Blog> getBlogById(int id,String type){
		List list = null;
		List<Blog> blogList = new ArrayList<Blog>();
		try {
			if (type.equals("blog_Type_Id")) {
				list = queryForList("getBlogByBlogTypeId", new Object[]{id});
			} else if (type.equals("blog_Id")) {
				list = queryForList("getBlogByBlogId", new Object[]{id});
			}
			for (Object obj : list) {
				Map map = (Map) obj;
				Integer blogId = (Integer) map.get("id");
				String title = (String) map.get("title");
				String context = (String) map.get("context");
				Integer blog_type_id = (Integer) map.get("blog_type_id");
			    Integer auth = (Integer) map.get("auth");
				Timestamp time = (Timestamp) map.get("time");
				String tip = (String) map.get("tip");
				Blog blog = new Blog();
				blog.setId(blogId);
				blog.setTitle(title);
				blog.setBlog_type_id(blog_type_id);
				blog.setContext(context);
				blog.setTime(time);
				blog.setAuth(auth);
				blog.setTip(tip);
				blogList.add(blog);
			}
			return blogList;
		} catch (Exception e) {
			logger.error("-----获取日志失败-----",e);
		}
		return null;
	}
}
