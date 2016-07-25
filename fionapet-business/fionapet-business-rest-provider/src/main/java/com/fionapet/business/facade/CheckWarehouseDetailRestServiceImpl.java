package com.fionapet.business.facade;

import com.fionapet.business.entity.CheckWarehouseDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.CheckWarehouseDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 检查仓库明细表
* Created by tom on 2016-07-25 09:32:33.
 */
public class CheckWarehouseDetailRestServiceImpl extends RestServiceBase<CheckWarehouseDetail> implements CheckWarehouseDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(CheckWarehouseDetailRestServiceImpl.class);

    private CheckWarehouseDetailService checkWarehouseDetailService;

    public CheckWarehouseDetailService getCheckWarehouseDetailService() {
        return checkWarehouseDetailService;
    }

    public void setCheckWarehouseDetailService(CheckWarehouseDetailService checkWarehouseDetailService) {
        this.checkWarehouseDetailService = checkWarehouseDetailService;
    }

    @Override
    public CURDService<CheckWarehouseDetail> getService() {
        return checkWarehouseDetailService;
    }

}
