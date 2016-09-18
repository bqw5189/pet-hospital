package com.fionapet.business.service;

import com.fionapet.business.entity.UserDict;
import org.dubbo.x.service.CURDService;
/**
 * 用户字典
* Created by tom on 2016-07-31 16:36:24.
 */
public interface UserDictService extends CURDService<UserDict> ,SelectService{

}
