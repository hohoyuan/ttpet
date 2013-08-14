package com.pb.util;

import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Service;

@Service
public class JsonUtil {
	@SuppressWarnings("unchecked")
	public JSONObject readJson(HttpServletRequest request){
		JSONObject jsonObject = new JSONObject();
		Map parameterMap = request.getParameterMap();
		Iterator it = parameterMap.keySet().iterator();
		while (it.hasNext()) {
			String key = it.next().toString();
			String[] value = (String[]) parameterMap.get(key);
			jsonObject.accumulate(key, value[0]);
		}
		return jsonObject;
	}
}
