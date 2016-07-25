package com.fionapet.business.facade;

import com.fionapet.business.entity.GestPaidRecord;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.GestPaidRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 顾客影像记录表
* Created by tom on 2016-07-25 09:32:34.
 */
public class GestPaidRecordRestServiceImpl extends RestServiceBase<GestPaidRecord> implements GestPaidRecordRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(GestPaidRecordRestServiceImpl.class);

    private GestPaidRecordService gestPaidRecordService;

    public GestPaidRecordService getGestPaidRecordService() {
        return gestPaidRecordService;
    }

    public void setGestPaidRecordService(GestPaidRecordService gestPaidRecordService) {
        this.gestPaidRecordService = gestPaidRecordService;
    }

    @Override
    public CURDService<GestPaidRecord> getService() {
        return gestPaidRecordService;
    }

}
