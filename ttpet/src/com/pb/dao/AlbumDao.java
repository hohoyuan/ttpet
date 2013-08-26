package com.pb.dao;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.pb.vo.Album;
import com.pb.vo.Photo;

@Service
public class AlbumDao extends BaseDao {
	
	private Logger logger = Logger.getLogger(AlbumDao.class);
	
	/**
	 * 获取字典码操作
	 * @return
	 */
	public Map<String, String> getAuthMap(){
		Map<String, String> authMap = new HashMap<String, String>();
		authMap = getField("auth");
		for (Object obj : authMap.keySet()) {
			String key = obj + "";
			String value = authMap.get(key) + "";
			logger.debug(key + "----" + value);
		}
		return authMap;
	}
	//新增相册
	public boolean addAlbum(Album album){
		try {
			boolean b = insert("addAlbum", new Object[]{album.getName(),album.getIntroduce(),album.getTip(),album.getAuth(),album.getUser_id()});
			return b;
		} catch (SQLException e) {
			logger.error("-----新增相册失败-------", e);
		}
		return false;
	}
	//根据用户查询相关相册
	@SuppressWarnings("unchecked")
	public List<Album> getAlbumsByUser(int userId){
		try {
			List list = queryForList("getAlbumsByUser", new Object[]{userId});
			List<Album> AlbumList = new ArrayList<Album>();
			for (Object obj : list) {
				Map map = (Map)obj;
				Album album = new Album();
				album.setId((Integer) map.get("id"));
				album.setName((String) map.get("name"));
				album.setIntroduce((String) map.get("introduce"));
				album.setTip((String) map.get("tip"));
				album.setAuth((String) map.get("auth"));
				logger.debug("相册id为：" + album.getId() + ",相册名为：" + album.getName());
				AlbumList.add(album);
			}
			return AlbumList;
		} catch (SQLException e) {
			logger.error("------查询用户相册失败------");
		}
		return null;
	}
	public boolean addPhoto(Photo photo){
		try {
			boolean b = insert("addPhoto", new Object[]{photo.getTitle(),photo.getContext(),photo.getDate(),photo.getAlbumId()});
			return b;
		} catch (Exception e) {
			logger.error("-----上传图片失败------",e);
		}
		return false;
	}
	
	public List<Photo> getPhotoByAlbumId(int albumId){
		try {
			List list = queryForList("getPhotoByAlbumId", new Object[]{albumId});
			List<Photo> photoList = new ArrayList<Photo>();
			for (Object obj:list) {
				Map map = (Map) obj;
				Integer id = (Integer) map.get("id");
				String title = (String) map.get("title");
				String context = (String)map.get("context");
				Timestamp date = (Timestamp) map.get("date");
				Photo photo = new Photo();
				photo.setId(id);
				photo.setTitle(title);
				photo.setContext(context);
				photo.setDate(date);
				photoList.add(photo);
			}
			return photoList;
		} catch (SQLException e) {
			logger.error("-----获取照片失败----",e);
		}
		
		return null;
	}
}
