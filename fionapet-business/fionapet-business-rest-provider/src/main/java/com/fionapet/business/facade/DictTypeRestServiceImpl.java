package com.fionapet.business.facade;

import com.fionapet.business.entity.DictType;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.DictTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 字典类型
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
