package com.fionapet.business.facade;

import com.fionapet.business.entity.WarehouseMoverecordDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.WarehouseMoverecordDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 移库记录明细
* Created by tom on 2016-07-18 11:56:11.
 */
public class WarehouseMoverecordDetailRestServiceImpl extends RestServiceBase<WarehouseMoverecordDetail> implements WarehouseMoverecordDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseMoverecordDetailRestServiceImpl.class);

    private WarehouseMoverecordDetailService warehouseMoverecordDetailService;

    public WarehouseMoverecordDetailService getWarehouseMoverecordDetailService() {
        return warehouseMoverecordDetailService;
    }

    public void setWarehouseMoverecordDetailService(WarehouseMoverecordDetailService warehouseMoverecordDetailService) {
        this.warehouseMoverecordDetailService = warehouseMoverecordDetailService;
    }

    @Override
    public CURDService<WarehouseMoverecordDetail> getService() {
        return warehouseMoverecordDetailService;
    }

}
