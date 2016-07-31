package com.fionapet.business.facade;

import com.fionapet.business.entity.DictTypeDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.DictTypeDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 字典类型明细
* Created by tom on 2016-07-31 16:42:53.
 */
public class DictTypeDetailRestServiceImpl extends RestServiceBase<DictTypeDetail> implements DictTypeDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(DictTypeDetailRestServiceImpl.class);

    private DictTypeDetailService dictTypeDetailService;

    public DictTypeDetailService getDictTypeDetailService() {
        return dictTypeDetailService;
    }

    public void setDictTypeDetailService(DictTypeDetailService dictTypeDetailService) {
        this.dictTypeDetailService = dictTypeDetailService;
    }

    @Override
    public CURDService<DictTypeDetail> getService() {
        return dictTypeDetailService;
    }

}
