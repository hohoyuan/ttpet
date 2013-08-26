package com.pb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pb.dao.BaseDao;
import com.pb.dao.UserDao;
import com.pb.util.Constants;
import com.pb.util.JsonUtil;

@Controller
public class LoginController {
	
	@Autowired
	private BaseDao baseDao;
	
	@Autowired
	private JsonUtil jsonUtil;
	
	private HttpSession session;
	
	Logger logger = Logger.getLogger(LoginController.class);
	
	@Autowired
	private UserDao userDao;

	
	@RequestMapping(Constants.LOGIN)
	public String login(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException{
		logger.debug("-------开始执行--------");
		JSONObject jsonObject = jsonUtil.readJson(request);
		String userName = jsonObject.getString("userName");
		String pass = jsonObject.getString("pass");
		
	//	String sql = "select count(*) from pet_user_tb where name = ? and password = ?";
	//	int result = baseDao.queryForInt(sql,new Object[]{userName,pass});
		
		int result = userDao.getUserNum(new Object[]{userName,pass});
		if ( result!= 1) {
			logger.debug("登陆失败，用户名密码错误");
//			response.setContentType("text/xml");
//			response.setCharacterEncoding("utf-8");
//			response.setHeader("Cache-Control", "no-cache");
			PrintWriter out = response.getWriter();
			out.print("error");
			out.flush();
			out.close();
		}
		session = request.getSession();
		session.setAttribute("aaa",userName);
		return Constants.MAIN;
	}
	@RequestMapping("main")
	public String gotoMain(HttpServletRequest request){

		return Constants.MAIN;
	}
}
