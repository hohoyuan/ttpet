package com.pb.dao;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.log4j.Logger;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pb.util.XmlHandler;

@Service
public class BaseDao {
	@Autowired
	BasicDataSource dataSource;
	
	private PreparedStatement preparedStatement = null;// Ԥ����sql���
	
	public Connection conn = null;
	
	private ResultSet rs = null;
	
	private Logger logger = Logger.getLogger(BaseDao.class);
	
	private XmlHandler xmlHandler = new XmlHandler();
	
	public static Map<String, String> SQLMAP ;
	
	public void open(){
		if (conn == null) {
			try {
				conn = dataSource.getConnection();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		//return conn;
	}
	
//	public BaseDao(){
//		init();
//	}
	
	
	public void init(){
		String filePath = BaseDao.class.getResource("/").getPath();
		filePath = filePath + "com/pb/dao/" + "aaa.xml";
		logger.debug(filePath);
		try {
			xmlHandler.loadXmlByPath(filePath);
		} catch (JDOMException e) {
			logger.error("xml��ȡ����", e);
		} catch (IOException e) {
			logger.error("xml�ļ�������", e);
		}
		try {
			List<Element> list = xmlHandler.getNodes("root/sql");
			for (Element ele : list) {
				String id = ele.getAttributeValue("id").trim();
				String type = ele.getAttributeValue("type").trim();
				String sql = ele.getText().trim();
				logger.debug("������xml�е�sql��"+ "id = " + id + "|type = " + type + "|sql = " + sql);
				SQLMAP.put(id, type + "-" +  sql);
			}
		} catch (JDOMException e) {
			logger.error("xml�ڵ㲻����",e);
		}
		
	}
	
	/**
	 * �ر���Ҫ�رյ�һ��
	 * 
	 * @param statement
	 * @param conn
	 * @param rs
	 * @param poolName
	 */
	public void disconnect() {

		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (preparedStatement != null) {
			try {
				preparedStatement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
				conn = null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	/**
	 * ����Ԥ��sql���Ĳ���
	 * 
	 * @param i
	 * @param object
	 * @throws SQLException
	 */
	protected void setPreparedStatement(int i, Object object)
			throws SQLException {
		if (object instanceof String) {
			preparedStatement.setString(i, (String) object);
		}else if (object instanceof Short) {

			preparedStatement.setShort(i, (Short) object);
		}else if (object instanceof Long) {

			preparedStatement.setLong(i, (Long) object);
		}else if (object instanceof Integer) {

			preparedStatement.setInt(i, (Integer) object);
		}else if (object instanceof Boolean) {

			preparedStatement.setBoolean(i, (Boolean) object);
		}else if (object instanceof Byte) {

			preparedStatement.setByte(i, (Byte) object);
		}else if (object instanceof Double) {

			preparedStatement.setDouble(i, (Double) object);
		}else if (object instanceof Float) {

			preparedStatement.setFloat(i, (Float) object);
		}else if (object instanceof Timestamp) {
			preparedStatement.setTimestamp(i, (Timestamp) object);
		}else if (object instanceof Date) {
			preparedStatement.setDate(i, (Date) object);
		}else if (object instanceof Clob) {
			preparedStatement.setClob(i, (Clob) object);
		}else if(object instanceof byte[]){//����CLOB�ֶ�
			byte[] byteArr = (byte[])object;
			preparedStatement.setAsciiStream(i, new ByteArrayInputStream(byteArr), byteArr.length);
		}
	}

	/**
	 * ���������ﴦ��ĸ������ݷ�����ִ����ɺ�û�ر����ӣ���Ҫ���������ⲿ�ر�����
	 * Ŀǰʹ���ڹ�����
	 * @param sql
	 * @param elements ����Ϊnull
	 * @return
	 * @throws SQLException
	 */
	public boolean update(String id, Object[] elements) throws SQLException {
		boolean vBOOL = false;
		logger.debug("��ȡxml�е�id��"+id);
		String allSql = SQLMAP.get(id);
		String sqlType = getSqlType(allSql);
		String sql = null;
		if (!sqlType.equals("insert") && !sqlType.equals("update") && !sqlType.equals("delete")) {
			throw new RuntimeException("sqlType����," + sqlType + "Ϊ�Ƿ�����");
		} else {
			 sql = getSqlContext(allSql);
		}
		
		logger.debug("���ݿ����|����SQL:"+sql+ "|ռλ��Ϊ:"+Arrays.toString(elements));
		open();
		try {
			preparedStatement = conn.prepareStatement(sql);
			if(elements !=null){
				for (int i = 0; i < elements.length; i++) {
					setPreparedStatement(i + 1, elements[i]);
				}
			}
			int vINT =0;
			vINT = preparedStatement.executeUpdate();
			if(vINT>0){
				vBOOL= true;
			}
		} catch (SQLException e) {
			if(elements !=null){
			}else{
			}
			throw e;
		}finally{
			this.disPreparedStatement(preparedStatement);
			disconnect();
		}
		return vBOOL;
	}
	
	/**
	 * ������䣬ִ����ɺ�û�ر����ӣ���Ҫ���������ⲿ�ر�����
	 * @param sql
	 * @param elements
	 * @return
	 * @throws SQLException
	 */
	public boolean insert(String id, Object[] elements) throws SQLException {
		return update(id , elements);
	}
	/**
	 * ɾ����䣬ִ����ɺ�û�ر����ӣ���Ҫ���������ⲿ�ر�����
	 * @param sql
	 * @param elements
	 * @return
	 * @throws SQLException
	 */
	public boolean delete(String id, Object[] elements) throws SQLException {
		return update(id , elements);
	}
	/**
	 * ��ѯ�õ��Ľ���������ر�����
	 * @param sql
	 * @param elements
	 * @return ��װΪHashMapΪ��Ա��ArrayList
	 * @throws SQLException 
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList queryForList(String id, Object[] elements) throws SQLException{
		logger.debug("��ȡxml�е�id��"+id);
		String allSql = SQLMAP.get(id);
		String sqlType = getSqlType(allSql);
		String sql = null;
		if (!sqlType.equals("queryForList")) {
			throw new RuntimeException("sqlType����," + sqlType + "Ϊ�Ƿ�����");
		} else {
			 sql = getSqlContext(allSql);
		}
		ArrayList list = new ArrayList();
		try {
			open();
			preparedStatement = conn.prepareStatement(sql);
			if(elements != null){
				for (int i = 0; i < elements.length; i++) {
					preparedStatement.setObject(i+1, elements[i]);
				}
			}
			logger.debug("���ݿ����|��ѯSQL:"+sql + "|ռλ��Ϊ:"+Arrays.toString(elements) );
			rs = preparedStatement.executeQuery();
			while(rs.next()){
				HashMap map = new HashMap();
				createRSMap(map);
				list.add(map);
			}
		}catch(SQLException e){
			if(elements !=null){
			}else{
			}
			throw e;
		}finally{
			disconnect();
		}
		return list;
	}
	
	/**
	 * ��RS��һ����¼���Map
	 * @param map
	 * @throws SQLException
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	private void createRSMap(HashMap map)
			throws SQLException {
		ResultSetMetaData md = rs.getMetaData();
		for(int i=1; i<=md.getColumnCount(); i++){
			int cType = md.getColumnType(i);
			Object  colvalue = null;
			switch(cType){
			/**�������͵� ����ֱ�ӱ�rs.getObject*/
			case Types.INTEGER: colvalue=rs.getInt(i);break;
			case Types.FLOAT : colvalue =rs.getFloat(i);break;
			case Types.DOUBLE :colvalue = rs.getDouble(i);break;
			case Types.NUMERIC:colvalue = rs.getLong(i);break;
			case Types.CLOB:colvalue = rs.getClob(i);break;
				default: colvalue = rs.getObject(i);
			}
			if(colvalue == null)
				colvalue ="";
			String colname = md.getColumnName(i);
			map.put(colname, colvalue);
		}
	}
	
	/**
	 * 
	 * 
	 *         �����������������ݿ����ӵ��Զ��ύģʽ
	 * 
	 * @param commit
	 *            true--�Զ��ύ false-���Զ��ύ
	 * @throws SQLException
	 * @throws DataAccessException
	 */
	public void openTransation() throws SQLException {
		this.conn.setAutoCommit(false);
	}

	/**
	 * 
	 * @author moqijun
	 * 
	 *         �����������ύ����
	 * 
	 * @throws SQLException
	 * @throws DataAccessException
	 */
	public void commit() throws SQLException {
		this.conn.commit();
		this.conn.setAutoCommit(true);
	}

	/**
	 * 
	 * 
	 *         �����������ع���ǰ��������ݿ�ĸĶ�
	 * 
	 * @throws SQLException
	 * @throws DataAccessException
	 */
	public void rollback() throws SQLException {
		if (conn != null) {
			this.conn.rollback();
			this.conn.setAutoCommit(true);
		}
	}
	
	public int queryForInt(String id,Object[] elements) throws SQLException{
		open();
		logger.debug("��ȡxml�е�id��"+id);
		String allSql = SQLMAP.get(id);
		String sqlType = getSqlType(allSql);
		String sql = null;
		if (!sqlType.equals("queryForInt")) {
			throw new RuntimeException("sqlType����," + sqlType + "Ϊ�Ƿ�����");
		} else {
			 sql = getSqlContext(allSql);
		}
		preparedStatement = conn.prepareStatement(sql);
		
		if(elements!=null){
			for (int i = 0; i < elements.length; i++) {
				setPreparedStatement(i + 1, elements[i]);
			}
		}
		logger.debug("���ݿ����|��ѯSQL:"+sql + "|ռλ��Ϊ:"+Arrays.toString(elements) );
		rs = preparedStatement.executeQuery();
		int num = 0;
		while (rs.next()) {
			num = rs.getInt(1);
		}
		logger.debug(SQLMAP.get("getAllUser"));
		disconnect();
		return num;
	}
	
	public String queryForString(String id, Object[] elements) throws SQLException{
		if (elements != null) {
		}else{
		}
		logger.debug("��ȡxml�е�id��"+id);
		String allSql = SQLMAP.get(id);
		String sqlType = getSqlType(allSql);
		String sql = null;
		if (!sqlType.equals("queryForString")) {
			throw new RuntimeException("sqlType����," + sqlType + "Ϊ�Ƿ�����");
		} else {
			 sql = getSqlContext(allSql);
		}
		open();
		
		preparedStatement = conn.prepareStatement(sql);
		if (elements != null) {
			for (int i = 0; i < elements.length; i++) {
				preparedStatement.setObject(i + 1, elements[i]);
			}
		}
		logger.debug("���ݿ����|��ѯSQL:"+sql + "|ռλ��Ϊ:"+Arrays.toString(elements) );
		rs = preparedStatement.executeQuery();
		String str= null;
		while (rs.next()) {
			str = rs.getString(1);
		}
		disconnect();
		return str;
	}
	/**
	 * �����ֵ����ͻ�ȡ�ֵ�����ֵ�����
	 * @param fieldType
	 * @return
	 */
	protected Map<String, String> getField(String fieldType){
		Map<String, String> FieldMap = new HashMap<String, String>();
		try {
			List list = queryForList("getFieldList", new Object[]{fieldType});
			for (Object obj : list) {
				Map resultMap = (Map) obj;
				String field_no = (String) resultMap.get("field_no");
				String field_name = (String) resultMap.get("field_name");
				FieldMap.put(field_no, field_name);
			}
			return FieldMap;
		} catch (SQLException e) {
			logger.error("-----��ѯ�����ֵ�ʧ��------", e);
		}
		return FieldMap;
	}

	/**
	 * �ر�PreparedStatement����
	 * @param preparedStatement
	 */
	private void disPreparedStatement (PreparedStatement preparedStatement){
		   try {
			if(preparedStatement!=null){
				   preparedStatement.close();
				   preparedStatement = null;
			   }
		} catch (SQLException e) {
		}
		
	}
	/**
	 * ������װ����sqlType
	 * @param sql
	 * @return
	 */
	private String getSqlType(String sql){
		String[] array =  sql.split("-");
		return array[0];
	}
	/**
	 * ������װ����sqlContext
	 * @param sql
	 * @return
	 */
	private String getSqlContext(String sql){
		String[] array =  sql.split("-");
		return array[1];
	}
	public static void main(String[] args) {
		BaseDao baseDao = new BaseDao();
		System.out.println(baseDao.getSqlType("aaaaaaa-bbbbbb"));
		System.out.println(baseDao.getSqlContext("aaaaaaa-bbbbbb"));


	}
}
