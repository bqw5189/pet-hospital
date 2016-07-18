package com.fionapet.business.facade;

import com.fionapet.business.entity.WarehouseBackrecordDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.WarehouseBackrecordDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 退回记录明细
* Created by tom on 2016-07-18 11:56:09.
 */
public class WarehouseBackrecordDetailRestServiceImpl extends RestServiceBase<WarehouseBackrecordDetail> implements WarehouseBackrecordDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseBackrecordDetailRestServiceImpl.class);

    private WarehouseBackrecordDetailService warehouseBackrecordDetailService;

    public WarehouseBackrecordDetailService getWarehouseBackrecordDetailService() {
        return warehouseBackrecordDetailService;
    }

    public void setWarehouseBackrecordDetailService(WarehouseBackrecordDetailService warehouseBackrecordDetailService) {
        this.warehouseBackrecordDetailService = warehouseBackrecordDetailService;
    }

    @Override
    public CURDService<WarehouseBackrecordDetail> getService() {
        return warehouseBackrecordDetailService;
    }

}
