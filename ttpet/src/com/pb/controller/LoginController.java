package com.pb.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pb.dao.BaseDao;
import com.pb.util.JsonUtil;

@Controller
public class LoginController {
	
	@Autowired
	private BaseDao baseDao;
	
	@Autowired
	private JsonUtil jsonUtil;
	
	private HttpSession session;
	

	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) throws SQLException{
		System.out.println("---¿ªÊ¼Ö´ÐÐ---");
		JSONObject jsonObject = jsonUtil.readJson(request);
		String userName = jsonObject.getString("userName");
		String pass = jsonObject.getString("pass");
		
		String sql = "select count(*) from pet_user_tb where name ='" + userName + "' and password = '" + pass + "'";
		System.out.println(sql);
			int result = baseDao.queryForInt(sql);
		
		if ( result!= 1) {
			return "error";
		}
		session = request.getSession();
		session.setAttribute("aaa",userName);
		return "main";
	}
	@RequestMapping("/main")
	public String gotoMain(HttpServletRequest request){

		return "main";
	}
}
