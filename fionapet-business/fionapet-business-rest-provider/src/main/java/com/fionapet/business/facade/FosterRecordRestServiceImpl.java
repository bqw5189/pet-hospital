package com.fionapet.business.facade;

import com.fionapet.business.entity.FosterRecord;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.FosterRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 养育记录主表
* Created by tom on 2016-07-25 09:32:32.
 */
public class FosterRecordRestServiceImpl extends RestServiceBase<FosterRecord> implements FosterRecordRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(FosterRecordRestServiceImpl.class);

    private FosterRecordService fosterRecordService;

    public FosterRecordService getFosterRecordService() {
        return fosterRecordService;
    }

    public void setFosterRecordService(FosterRecordService fosterRecordService) {
        this.fosterRecordService = fosterRecordService;
    }

    @Override
    public CURDService<FosterRecord> getService() {
        return fosterRecordService;
    }

}
