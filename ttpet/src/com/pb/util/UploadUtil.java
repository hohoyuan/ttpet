package com.pb.util;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.pb.dao.AlbumDao;
import com.pb.vo.Photo;
@Service
public class UploadUtil {
	
	static Logger logger = Logger.getLogger(UploadUtil.class);
	private static String PACKAGE_PATH = "com/pb/util/";
	private static String WEB_INF_PATH = "";
	
	@Autowired
	AlbumDao albumDao;
	
	public void upload(HttpServletRequest request,String uploadType) {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver(request.getSession().getServletContext());
		//判断传过来的request是否是Multipart类型（多媒体类型）
		logger.debug(resolver.isMultipart(request));
		if (resolver.isMultipart(request)) {
			//将request强制转化成MultipartRequest（多媒体请求）
			//MultipartRequest multiRequest = (MultipartRequest) request;
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			//将上传的所有文件迭代
			Iterator<String> iterator = multiRequest.getFileNames();
			while (iterator.hasNext()) {
				//迭代出MultipartFile对象（多媒体文件）
				MultipartFile file = multiRequest.getFile((String)iterator.next());
				String fileName = file.getOriginalFilename();
				String path = UploadUtil.loadWebInfPath() + "/" + fileName;
				logger.debug(fileName);
				if (uploadType.equals("photo")) {
					Photo photo = new Photo();
					photo.setTitle(fileName);
					photo.setContext(path);
					photo.setDate(new Timestamp(new Date().getTime()));
					photo.setAlbumId(1);
					albumDao.addPhoto(photo);
				}
				//新建一个file对象，并且用MultipartFile的transferTo方法上传至服务器
				File localFile = new File(path);
				try {
					file.transferTo(localFile);
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
	}
	/**
	 * 获取WEB-INF的路径
	 * @return
	 */
	private static String loadWebInfPath(){
		try {
			String sysName = System.getProperty("os.name");
			logger.debug("系统名称：" + sysName);
			sysName = sysName.toUpperCase();
			String filePath = URLDecoder.decode(UploadUtil.class.getClassLoader().getResource(PACKAGE_PATH).toString(),"UTF-8");
			logger.debug("总路径为：" + filePath);
			if (filePath.indexOf("file:")>-1) {
				if (sysName.startsWith("AIX") || sysName.indexOf("LINUX") != -1 || sysName.indexOf("UNIX") != -1 || sysName.indexOf("SUNOS") != -1) {
					filePath = filePath.substring(5,filePath.length());
				} else {
					filePath = filePath.substring(6,filePath.length());
				}
			}
			//通过控制台将war包部署在weblogic上时，取出来的总路径以zip:开头（不是以file:开头），且在Windows、AIX、LINUX上都一样（不用做系统区分）
			if (filePath.startsWith("zip:")) {
				filePath = filePath.substring(4);
			}
			logger.debug("截取后的路径为：" + filePath);
			
			//直接取 /WEB-INF/ 的索引
			int lastIndex = filePath.lastIndexOf("/WEB-INF/");
			if (lastIndex == -1) {
				lastIndex = filePath.lastIndexOf("\\WEB-INF\\");
			}
			if (lastIndex == -1) {
				throw new Exception("无法获取WEB-INF路径索引");
			}
			WEB_INF_PATH = filePath.substring(0,lastIndex) + "/";
			logger.debug("WEB-INF文件夹路径为：" + WEB_INF_PATH);
			return WEB_INF_PATH + "uploadFile";
		} catch (UnsupportedEncodingException e) {
			logger.error("获取WEB-INF路径信息异常：",e);
		} catch (Exception e) {
			logger.error("获取WEB-INF路径信息异常：",e);
		}
		return null;
	}
	public static void main(String[] args) {
		System.out.println(UploadUtil.loadWebInfPath());
	}
}
