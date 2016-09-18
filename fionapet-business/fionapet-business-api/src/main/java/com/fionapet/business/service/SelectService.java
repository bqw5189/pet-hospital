package com.fionapet.business.service;

import java.util.List;
import java.util.Map;

/**
 * 下拉列表 类型
* Created by tom on 2016-07-31 16:42:53.
 */
public interface SelectService{

    Map<String,List<Map<String,String>>> selects(Map<String, String> param);
}
