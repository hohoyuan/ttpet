package com.pb.util;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.jdom.Attribute;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;
import org.jdom.xpath.XPath;
	/**
	 * 
	 * 解析xml的工具类
	 * @author Administrator
	 *
	 */
	public class XmlHandler {
		private Document doc;
		private static Format format = Format.getPrettyFormat();

		private static XMLOutputter outputter = new XMLOutputter(format);
		private static Logger logger = Logger.getLogger(XmlHandler.class);
		

		private static final int PROPERTT_NOT_FOUND = -1;
		private static final Map primitiveDefaults = new HashMap();

		static {
			primitiveDefaults.put(Integer.TYPE, new Integer(0));
			primitiveDefaults.put(Short.TYPE, new Short((short) 0));
			primitiveDefaults.put(Byte.TYPE, new Byte((byte) 0));
			primitiveDefaults.put(Float.TYPE, new Float(0));
			primitiveDefaults.put(Double.TYPE, new Double(0));
			primitiveDefaults.put(Long.TYPE, new Long(0));
			primitiveDefaults.put(Boolean.TYPE, Boolean.FALSE);
			primitiveDefaults.put(Character.TYPE, new Character('\u0000'));
		}

		public XmlHandler() {
			setEncoding("GBK");
		}

		public void setEncoding(String encode) {
			format.setEncoding(encode);
		}
		
		//根据路径获取xml
		public Document loadXmlByPath(String path) throws JDOMException, IOException{
			SAXBuilder builder = new SAXBuilder(false);
			doc = builder.build(new File(path));
		return doc;
		}
		
		/***************************************************************************
		 * 获得指定报文节点的相关属性；若节点或属性不存在，则返回null
		 * 
		 * @param path 指定报文节点的路径
		 * @param attribute 指定的报文节点的属性
		 * @return 获取指定节点属性值
		 * 
		 **************************************************************************/
		public String getNodeAttribute(String path, String attribute) {
			Element visitElment = null;
			String attribute_Str = "";
			try {
				visitElment = (Element) XPath.selectSingleNode(doc, path);
			} catch (JDOMException e) {
				logger.warn(" XML操作|根据路径查找节点出错",e);
				return null;
			}
			if (visitElment != null) {
				Attribute attr = visitElment.getAttribute(attribute);
				if (attr == null) {
					logger.warn(" XML操作|获取xml节点属性异常：当前报文节点不存在当前属性");
					return null;
				}
				attribute_Str = attr.getValue();
			} else {
				logger.warn(" XML操作|获取xml节点属性异常：不存在当前报文节点");
				return null;
			}
			return attribute_Str;
		}
		/**
		 * 得到报文节点的值；如果节点不存在的话，返回空值
		 * 
		 * @param path 节点路径
		 * @return 节点值
		 */
		public String getNodeValue(String path) {
			Element visitElement = null;
			String value = "";
			try {
				visitElement = (Element) XPath.selectSingleNode(doc, path);
			} catch (JDOMException e) {
				logger.warn(" XML操作|根据路径查找节点出错",e);
				return "";
			}
			if (visitElement != null) {
				value = visitElement.getValue();
			} else {
				logger.warn(" XML操作|获取报文节点的值出错：当前节点不存在 ,节点路径为[" + path + "]");
				return "";
			}
			return value;
		}
		
		/**
		 * 得到指定路径的报文节点
		 * 
		 * @param path
		 * @return 节点集合
		 */
		public List getSameNodeValues(String path) {
			List<Element> list = null;
			List retList = new ArrayList();
			try {
				list = XPath.selectNodes(doc, path);
				for (Element e : list) {
					retList.add(e.getText());
				}
			} catch (JDOMException e) {
				logger.warn(" XML操作|根据路径查找节点出错",e);
			}
			return retList;
		}
		
		/**
		 * 
		 * @param path
		 * @return
		 * @throws JDOMException
		 */

		public List getNodes(String path) throws JDOMException{
			List list = null;
				list = XPath.selectNodes(doc, path);
			return list;
		}
		
	
		@SuppressWarnings("unchecked")
		public static void main(String[] args) throws JDOMException, IOException {
			XmlHandler xmlHandler = new XmlHandler();
			String filePath = System.getProperty("user.dir");
			filePath = filePath + "/src/com/pb/vo/" + "aaa.xml";
			//String filePath = XmlHandler.class.getResource("");
			//String filePath = URLDecoder.decode(XmlHandler.class.getClass().getResource("com/pb").toString(),"UTF-8");
			xmlHandler.loadXmlByPath(filePath);
			List<Element> list = xmlHandler.getNodes("root/sql");
			
			for (Element ele : list) {
				String id = ele.getAttributeValue("id").trim();
				System.out.println(id);
				String type = ele.getAttributeValue("type").trim();
				System.out.println(type);
				String sql = ele.getText().trim();
				System.out.println(sql);
			}
			String path= XmlHandler.class.getResource("/").getPath();
			System.out.println(path);
//			System.out.println(xmlHandler.getNodeValue("root/sql").trim());
//			System.out.println(xmlHandler.getNodeAttribute("root/sql", "id").trim());
//			System.out.println(xmlHandler.getNodeAttribute("root/sql", "type").trim());

			
		}
	}
