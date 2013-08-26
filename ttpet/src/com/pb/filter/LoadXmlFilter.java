package com.pb.filter;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.swing.text.html.StyleSheet.ListPainter;

import org.apache.log4j.Logger;
import org.jdom.Element;
import org.jdom.JDOMException;

import com.pb.dao.BaseDao;
import com.pb.util.XmlHandler;

public class LoadXmlFilter implements ServletContextListener {
	Logger logger = Logger.getLogger(LoadXmlFilter.class);
	
	private String packages = "com/pb/vo/";
	
	private XmlHandler xmlHandler = new XmlHandler();
	

	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

	}

	@SuppressWarnings("unchecked")
	public void contextInitialized(ServletContextEvent arg0) {
		 Map<String, String> sqlMap = new HashMap<String, String>();
		 BaseDao.SQLMAP = new HashMap<String, String>();
		 logger.debug("------��ʼִ��xml������-------");
		 String packagePath = LoadXmlFilter.class.getResource("/").getPath() + packages;
		 logger.debug(packagePath);
		 
		 try {
			File file = new File(packagePath);
			String[] list = file.list();
			for (int i = 0; i < list.length; i++) {
				String fileName = list[i];
				int index = fileName.indexOf("sql.xml");
				if (index != -1) {
					logger.debug("���ڶ�ȡ�ļ���" + fileName);
					xmlHandler.loadXmlByPath(packagePath + fileName);
					List<Element> elelist = xmlHandler.getNodes("root/sql");
					for (Element ele : elelist) {
						String id = ele.getAttributeValue("id").trim();
						logger.debug("��ȡ��idΪ��" + id);
						String type = ele.getAttributeValue("type").trim();
						String sql = ele.getText().trim();
						logger.debug("��ȡtypeΪ��" + type + "," + "��ȡ��sqlΪ��" + sql);
						sqlMap.put(id, type + "-" + sql);
					}
				}
			}
			BaseDao.SQLMAP = sqlMap;
			
		} catch (JDOMException e) {
			logger.error("-----��ȡxml�ļ�����------",e);
		} catch (IOException e) {
			logger.error("-----xml�ļ�������------",e);
		}
		
	}
	
	
//	public static void main(String[] args) throws JDOMException, IOException {
//		System.out.println(LoadXmlFilter.class.getResource("/").getPath() +"com/pb/vo/" );
//		String filePath = LoadXmlFilter.class.getResource("/").getPath() +"com/pb/vo/";
//		File file = new File(filePath);
//		String[] list = file.list();
//		for (int i = 0; i < list.length; i++) {
//			String fileName = list[i];
//			int index = fileName.indexOf("sql.xml");
//			if (index != -1) {
//				System.out.println(list[i]);
//				XmlHandler xmlHandler = new XmlHandler();
//				xmlHandler.loadXmlByPath(filePath + list[i]);
//				List<Element> elelist = xmlHandler.getNodes("root/sql");
//				for (Element ele : elelist) {
//					String id = ele.getAttributeValue("id").trim();
//					System.out.println(id);
//					String type = ele.getAttributeValue("type").trim();
//					System.out.println(type);
//					String sql = ele.getText().trim();
//					System.out.println(sql);
//				}
//			}
//
//		}
//		System.out.println(file.list().length);
//	}
}
