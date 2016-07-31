package com.fionapet.business.facade;

import com.fionapet.business.entity.DictType;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.DictTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 字典类型
* Created by tom on 2016-07-31 16:42:53.
 */
public class DictTypeRestServiceImpl extends RestServiceBase<DictType> implements DictTypeRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(DictTypeRestServiceImpl.class);

    private DictTypeService dictTypeService;

    public DictTypeService getDictTypeService() {
        return dictTypeService;
    }

    public void setDictTypeService(DictTypeService dictTypeService) {
        this.dictTypeService = dictTypeService;
    }

    @Override
    public CURDService<DictType> getService() {
        return dictTypeService;
    }

}
