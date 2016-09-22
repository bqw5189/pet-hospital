package com.fionapet.business.service;

import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * 下拉列表 类型
* Created by tom on 2016-07-31 16:42:53.
 */
public interface SelectService{

    Map<String,Collection> selects(Map<String, String> param);
}
