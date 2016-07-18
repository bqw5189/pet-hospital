package com.fionapet.business.facade;

import com.fionapet.business.entity.WarehouseInrecordDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.WarehouseInrecordDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 进库记录明细
* Created by tom on 2016-07-18 11:56:10.
 */
public class WarehouseInrecordDetailRestServiceImpl extends RestServiceBase<WarehouseInrecordDetail> implements WarehouseInrecordDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseInrecordDetailRestServiceImpl.class);

    private WarehouseInrecordDetailService warehouseInrecordDetailService;

    public WarehouseInrecordDetailService getWarehouseInrecordDetailService() {
        return warehouseInrecordDetailService;
    }

    public void setWarehouseInrecordDetailService(WarehouseInrecordDetailService warehouseInrecordDetailService) {
        this.warehouseInrecordDetailService = warehouseInrecordDetailService;
    }

    @Override
    public CURDService<WarehouseInrecordDetail> getService() {
        return warehouseInrecordDetailService;
    }

}
