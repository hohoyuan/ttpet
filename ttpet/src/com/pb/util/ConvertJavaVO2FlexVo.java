package com.pb.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Field;

public class ConvertJavaVO2FlexVo {
	private static final String[] simpleJavaTypeName = { "String", "Date",
			"BigDecimal", "Decimal", "Double", "Long", "long", "Integer",
			"int", "Boolean", "boolean" };
	private static final String[] simpleFlexTypeName = { "String", "Date",
			"Number", "Number", "Number", "Number", "Number", "int", "int",
			"boolean", "boolean" };

	private static final String[] complexJavaTypeName = { "java.util.List",
			"java.util.Collection" };
	private static final String[] complexFlexTypeName = { "IList",
			"ICollectionView" };
	private static final String[] complexFlexImportName = {
			"mx.collections.IList", "mx.collections.ICollectionView" };

	private static String getSimpleTypeName(Class c) {
		String simpleTypeName = c.getSimpleName();
		String result = null;
		for (int i = 0; i < simpleJavaTypeName.length; i++) {
			if (simpleJavaTypeName[i].equals(simpleTypeName)) {
				result = simpleFlexTypeName[i];
				break;
			}
		}
		return result;
	}

	private static int getComplexJavaTypeIndex(String typeName) {
		int result = -1;
		for (int i = 0; i < complexJavaTypeName.length; i++) {
			if (complexJavaTypeName[i].equals(typeName)) {
				result = i;
				break;
			}
		}
		return result;
	}

	private static String getComplexTypeName(Class c) {
		String typeName = c.getName();
		int index = getComplexJavaTypeIndex(typeName);
		if (index > -1)
			return complexFlexTypeName[index];
		return null;
	}

	// 根据java类对象的类型返回vo类型
	@SuppressWarnings("unchecked")
	public static String getClassType(Class c) {
		String result = getSimpleTypeName(c);
		if (judgeNotEmptyStr(result))
			return result;
		result = getComplexTypeName(c);
		if (judgeNotEmptyStr(result))
			return result;
		return c.getSimpleName() + "VO";
		// return "*";// 其它类型的设置为未知类型
	}

	// 重复c字符count次，用于格式化生成的as文件
	public static String repeat(String c, int count) {
		StringBuffer strBuf = new StringBuffer();
		for (int i = 0; i < count; i++) {
			strBuf.append(c);
		}
		return strBuf.toString();
	}

	/**
	 * 生成FLex POJO
	 * 
	 * @param pojoName
	 *            java POJO的名称
	 * @param packageName
	 *            Flex包的名称
	 * @param folder
	 *            Flex包所在的路径
	 * @throws ClassNotFoundException
	 * @throws IOException
	 */
	@SuppressWarnings("unchecked")
	public static void generateAsFile(String pojoName, String packageName,
			String folder) throws ClassNotFoundException, IOException {
		Class c = Class.forName(pojoName);
		Field[] fields = c.getDeclaredFields();

		// as的vo对象名称结尾加上VO标志
		File f = new File(getVOFileName(folder, packageName, c));
		BufferedWriter bw = new BufferedWriter(new FileWriter(f));
		StringBuffer contentBuf = new StringBuffer();
		createPackageName(packageName, c, contentBuf);
		createImport(fields, contentBuf);
		createBindInfo(pojoName, contentBuf);

		createClassHeader(c, contentBuf);

		createProperites(fields, contentBuf);
		contentBuf.append("\n");
		createEmptyConstructor(c, contentBuf);

		createGetSetFunction(fields, contentBuf);
		contentBuf.append(genTabChars());
		contentBuf.append("}\n");
		contentBuf.append("}");
		bw.write(contentBuf.toString());
		bw.close();
	}

	private static void createImport(Field[] fields, StringBuffer strBuf) {
		strBuf.append("\n");
		// 写属性
		for (int i = 0; i < fields.length; i++) {
			Class fieldType = fields[i].getType();
			int index = getComplexJavaTypeIndex(fieldType.getName());
			if (index > -1) {
				strBuf.append(genTabChars());
				strBuf.append("import ");
				strBuf.append(complexFlexImportName[index]);
				strBuf.append(";\n");
			}
		}
		strBuf.append("\n");

	}

	private static void createProperites(Field[] fields, StringBuffer strBuf) {
		// 写属性
		for (int i = 0; i < fields.length; i++) {
			Class fieldType = fields[i].getType();
			String typeName = getClassType(fieldType);
			strBuf.append(genFunctionTabChars());
			strBuf.append("private var _");
			strBuf.append(fields[i].getName());
			strBuf.append(":");
			strBuf.append(typeName);
			strBuf.append(";\n");
		}
	}

	private static void createGetSetFunction(Field[] fields,
			StringBuffer contentBuf) {
		// 写 setter/getter 方法
		for (int i = 0; i < fields.length; i++) {
			Class fieldType = fields[i].getType();
			String typeName = getClassType(fieldType);
			createSetFunction(fields, contentBuf, i, typeName);
			createGetFunction(fields, contentBuf, i, typeName);

		}
	}

	private static void createClassHeader(Class c, StringBuffer contentBuf) {
		// 写类
		contentBuf.append(genTabChars());
		contentBuf.append("public class ");
		contentBuf.append(c.getSimpleName());
		contentBuf.append("VO\n");
		contentBuf.append(genTabChars());
		contentBuf.append("{\n");
	}

	private static void createEmptyConstructor(Class c, StringBuffer strBuf) {
		// 写空的构造函数
		strBuf.append(genFunctionTabChars());
		strBuf.append("public function ");
		strBuf.append(c.getSimpleName());
		strBuf.append("VO(){}\n\n");
	}

	private static void createFolder(String folderName) {
		try {
			File myPath = new File(folderName);
			if (!myPath.exists()) {
				myPath.mkdirs();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static String getVOFileName(String folder, String packageName,
			Class c) {
		String fd = folder;
		if (judgeNotEmptyStr(fd)) {
			if (!folder.endsWith(File.separator))
				fd += File.separator;
		}
		String p1 = packageName;
		if (!judgeNotEmptyStr(packageName))
			p1 = c.getPackage().getName();
		fd += p1.replace('.', File.separatorChar) + File.separator;
		createFolder(fd);
		return fd + c.getSimpleName() + "VO.as";
	}

	private static boolean judgeNotEmptyStr(String value) {
		return (null != value) && (value.length() > 0);
	}

	private static void createGetFunction(Field[] fields, StringBuffer strBuf,
			int i, String typeName) {
		// getter
		strBuf.append(genFunctionTabChars());
		strBuf.append("public function get ");
		strBuf.append(fields[i].getName());
		strBuf.append("():");
		strBuf.append(typeName);
		strBuf.append("{\n");
		strBuf.append(genContentTabChars());
		strBuf.append("return this._");
		strBuf.append(fields[i].getName());
		strBuf.append(";\n");
		genFunctionEnd(strBuf);
	}

	private static void genFunctionEnd(StringBuffer strBuf) {
		strBuf.append(genFunctionTabChars() + "}\n\n");
	}

	private static void createSetFunction(Field[] fields, StringBuffer strBuf,
			int i, String typeName) {
		// setter
		strBuf.append(genFunctionTabChars());
		strBuf.append("public function set ");
		strBuf.append(fields[i].getName());
		strBuf.append("(value:");
		strBuf.append(typeName);
		strBuf.append("):void{\n");
		strBuf.append(genContentTabChars());
		strBuf.append("this._");
		strBuf.append(fields[i].getName());
		strBuf.append(" = value;\n");
		genFunctionEnd(strBuf);
	}

	private static String getCountTabChars(int count) {
		StringBuffer strBuff = new StringBuffer();
		for (int i = 0; i < count; i++) {
			strBuff.append(genTabChars());
		}
		return strBuff.toString();

	}

	private static String genContentTabChars() {
		return getCountTabChars(3);
	}

	private static String genFunctionTabChars() {
		return getCountTabChars(2);
	}

	private static void createBindInfo(String pojoName, StringBuffer strBuf) {
		// 写Bind头
		strBuf.append(genTabChars());
		strBuf.append("[Bindable]\n");
		strBuf.append(genTabChars());
		strBuf.append("[RemoteClass(alias=\"");
		strBuf.append(pojoName);
		strBuf.append("\")]\n");
	}

	private static String genTabChars() {
		return repeat(" ", 4);
	}

	private static void createPackageName(String packageName, Class c,
			StringBuffer strBuf) {
		// 包名，没有设置包名就取和java pojo一样的包名
		if ((null != packageName) && (packageName.trim().length() > 1)) {
			strBuf.append("package " + c.getPackage().getName() + "\n{\n");
		} else {
			strBuf.append("package " + packageName + "\n{\n");
		}
	}

	// 生成的主程序
	public static void main(String[] args) throws ClassNotFoundException,
			IOException {
		String[] pojos = { "LoopWorkPlan"};

		for (int i = 0; i < pojos.length; i++) {
			ConvertJavaVO2FlexVo.generateAsFile(
					"org.falcon.eric.modules.model.plan." + pojos[i],
					"org", "D:\\1");
		}

	}

}
