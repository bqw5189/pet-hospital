package com.fionapet.business.facade;

import com.fionapet.business.entity.DictTypeDetail;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.DictTypeDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 宠物字典类型明细
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
