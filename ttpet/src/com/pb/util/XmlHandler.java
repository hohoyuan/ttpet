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
	 * ����xml�Ĺ�����
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
		
		//����·����ȡxml
		public Document loadXmlByPath(String path) throws JDOMException, IOException{
			SAXBuilder builder = new SAXBuilder(false);
			doc = builder.build(new File(path));
		return doc;
		}
		
		/***************************************************************************
		 * ���ָ�����Ľڵ��������ԣ����ڵ�����Բ����ڣ��򷵻�null
		 * 
		 * @param path ָ�����Ľڵ��·��
		 * @param attribute ָ���ı��Ľڵ������
		 * @return ��ȡָ���ڵ�����ֵ
		 * 
		 **************************************************************************/
		public String getNodeAttribute(String path, String attribute) {
			Element visitElment = null;
			String attribute_Str = "";
			try {
				visitElment = (Element) XPath.selectSingleNode(doc, path);
			} catch (JDOMException e) {
				logger.warn(" XML����|����·�����ҽڵ����",e);
				return null;
			}
			if (visitElment != null) {
				Attribute attr = visitElment.getAttribute(attribute);
				if (attr == null) {
					logger.warn(" XML����|��ȡxml�ڵ������쳣����ǰ���Ľڵ㲻���ڵ�ǰ����");
					return null;
				}
				attribute_Str = attr.getValue();
			} else {
				logger.warn(" XML����|��ȡxml�ڵ������쳣�������ڵ�ǰ���Ľڵ�");
				return null;
			}
			return attribute_Str;
		}
		/**
		 * �õ����Ľڵ��ֵ������ڵ㲻���ڵĻ������ؿ�ֵ
		 * 
		 * @param path �ڵ�·��
		 * @return �ڵ�ֵ
		 */
		public String getNodeValue(String path) {
			Element visitElement = null;
			String value = "";
			try {
				visitElement = (Element) XPath.selectSingleNode(doc, path);
			} catch (JDOMException e) {
				logger.warn(" XML����|����·�����ҽڵ����",e);
				return "";
			}
			if (visitElement != null) {
				value = visitElement.getValue();
			} else {
				logger.warn(" XML����|��ȡ���Ľڵ��ֵ������ǰ�ڵ㲻���� ,�ڵ�·��Ϊ[" + path + "]");
				return "";
			}
			return value;
		}
		
		/**
		 * �õ�ָ��·���ı��Ľڵ�
		 * 
		 * @param path
		 * @return �ڵ㼯��
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
				logger.warn(" XML����|����·�����ҽڵ����",e);
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
