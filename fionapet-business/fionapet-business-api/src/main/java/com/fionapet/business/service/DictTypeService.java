package com.fionapet.business.service;

import com.fionapet.business.entity.DictType;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.service.CURDService;

import java.util.List;
import java.util.Map;

/**
 * 字典类型
* Created by tom on 2016-07-31 16:42:53.
 */
public interface DictTypeService extends CURDService<DictType> ,SelectService{
}
