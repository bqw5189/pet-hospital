package com.fionapet.business.facade;

import com.fionapet.business.entity.WarehouseOutrecordDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.WarehouseOutrecordDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 出库记录明细
* Created by tom on 2016-07-18 11:56:11.
 */
public class WarehouseOutrecordDetailRestServiceImpl extends RestServiceBase<WarehouseOutrecordDetail> implements WarehouseOutrecordDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseOutrecordDetailRestServiceImpl.class);

    private WarehouseOutrecordDetailService warehouseOutrecordDetailService;

    public WarehouseOutrecordDetailService getWarehouseOutrecordDetailService() {
        return warehouseOutrecordDetailService;
    }

    public void setWarehouseOutrecordDetailService(WarehouseOutrecordDetailService warehouseOutrecordDetailService) {
        this.warehouseOutrecordDetailService = warehouseOutrecordDetailService;
    }

    @Override
    public CURDService<WarehouseOutrecordDetail> getService() {
        return warehouseOutrecordDetailService;
    }

}
