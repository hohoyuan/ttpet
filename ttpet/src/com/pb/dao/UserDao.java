package com.pb.dao;

import java.sql.SQLException;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
public class UserDao extends BaseDao {

	private Logger logger = Logger.getLogger(UserDao.class);
	
	public UserDao (){
		super();
	}
	
	public int getUserNum(Object[] obj) throws SQLException{
		//logger.debug(sqlMap.get("getAllUser"));
		logger.debug("-------��ʼ���в�ѯ--------");
		int num =  queryForInt("getUserNum", obj);
		return num;
	}
}
