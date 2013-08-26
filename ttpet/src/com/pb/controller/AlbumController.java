package com.pb.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pb.dao.AlbumDao;
import com.pb.util.UploadUtil;
import com.pb.vo.Album;
import com.pb.vo.Photo;
/**
 * 
 * 相册功能模块控制器
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/album")
public class AlbumController {
	@Autowired
	AlbumDao albumDao;
	
	@Autowired
	UploadUtil uploadUtil;
	
	private Logger logger = Logger.getLogger(AlbumController.class);
	
	@RequestMapping("")
	public String gotoAlbum(HttpServletRequest request){
		Map<String, String> authMap = albumDao.getAuthMap();
		request.setAttribute("authMap", authMap);
		return "album/album";
	}
	@RequestMapping("/addAlbum")
	public String addAlbum(HttpServletRequest request,Album album){
		//暂时先手动添加一个用户，等用户模块完成以后再加入
		album.setUser_id(1);
		boolean b = albumDao.addAlbum(album);
		if (b) {
			return "album";
		}
		return "album/album";
	}
	@RequestMapping("/pictrue")
	public String getAlbumsByUser(HttpServletRequest request){
		//暂时写死
		List<Album> albumList = albumDao.getAlbumsByUser(1);
		request.setAttribute("albumList", albumList);
		return "album/pictrue";
	}
	@RequestMapping("/myPhoto")
	public String getPhotoByAlbumId(HttpServletRequest request){
		int albumId = Integer.parseInt(request.getParameter("albumId"));
		logger.debug(albumId);
		List<Photo> photolist = albumDao.getPhotoByAlbumId(albumId);
		logger.debug(request.getServerName());
		request.getServerPort();
		String filePath = request.getServerName() + ":" + request.getServerPort();
		logger.debug(filePath);
		for (Photo photo : photolist) {
//			String context = photo.getContext();
//			String contexts[] = context.split("");
//			String fileName = contexts[contexts.length - 1];
//			filePath = filePath + File.separator + fileName;
			photo.setContext("http://" + filePath  + "/ttpet/uploadFile/" + photo.getTitle());
		}
		
		request.setAttribute("photolist", photolist);
		return "album/showPhoto";
	}
	//进入上传照片界面
	@RequestMapping("/uploadPhoto")
	public String goToUploadPhoto(HttpServletRequest request){
		List<Album> albumList = albumDao.getAlbumsByUser(1);
		request.setAttribute("albumList", albumList);
		return "album/upLoadPhoto";
	}
	//上传照片
	@RequestMapping("/uploadPhotoSubmit")
	public String uploadPhoto(HttpServletRequest request){
		uploadUtil.upload(request,"photo");
		return "album/pictrue";
	}
}
