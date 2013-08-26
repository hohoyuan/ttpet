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
		//�жϴ�������request�Ƿ���Multipart���ͣ���ý�����ͣ�
		logger.debug(resolver.isMultipart(request));
		if (resolver.isMultipart(request)) {
			//��requestǿ��ת����MultipartRequest����ý������
			//MultipartRequest multiRequest = (MultipartRequest) request;
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			//���ϴ��������ļ�����
			Iterator<String> iterator = multiRequest.getFileNames();
			while (iterator.hasNext()) {
				//������MultipartFile���󣨶�ý���ļ���
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
				//�½�һ��file���󣬲�����MultipartFile��transferTo�����ϴ���������
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
	 * ��ȡWEB-INF��·��
	 * @return
	 */
	private static String loadWebInfPath(){
		try {
			String sysName = System.getProperty("os.name");
			logger.debug("ϵͳ���ƣ�" + sysName);
			sysName = sysName.toUpperCase();
			String filePath = URLDecoder.decode(UploadUtil.class.getClassLoader().getResource(PACKAGE_PATH).toString(),"UTF-8");
			logger.debug("��·��Ϊ��" + filePath);
			if (filePath.indexOf("file:")>-1) {
				if (sysName.startsWith("AIX") || sysName.indexOf("LINUX") != -1 || sysName.indexOf("UNIX") != -1 || sysName.indexOf("SUNOS") != -1) {
					filePath = filePath.substring(5,filePath.length());
				} else {
					filePath = filePath.substring(6,filePath.length());
				}
			}
			//ͨ������̨��war��������weblogic��ʱ��ȡ��������·����zip:��ͷ��������file:��ͷ��������Windows��AIX��LINUX�϶�һ����������ϵͳ���֣�
			if (filePath.startsWith("zip:")) {
				filePath = filePath.substring(4);
			}
			logger.debug("��ȡ���·��Ϊ��" + filePath);
			
			//ֱ��ȡ /WEB-INF/ ������
			int lastIndex = filePath.lastIndexOf("/WEB-INF/");
			if (lastIndex == -1) {
				lastIndex = filePath.lastIndexOf("\\WEB-INF\\");
			}
			if (lastIndex == -1) {
				throw new Exception("�޷���ȡWEB-INF·������");
			}
			WEB_INF_PATH = filePath.substring(0,lastIndex) + "/";
			logger.debug("WEB-INF�ļ���·��Ϊ��" + WEB_INF_PATH);
			return WEB_INF_PATH + "uploadFile";
		} catch (UnsupportedEncodingException e) {
			logger.error("��ȡWEB-INF·����Ϣ�쳣��",e);
		} catch (Exception e) {
			logger.error("��ȡWEB-INF·����Ϣ�쳣��",e);
		}
		return null;
	}
	public static void main(String[] args) {
		System.out.println(UploadUtil.loadWebInfPath());
	}
}
