package com.fionapet.business.facade;

import com.fionapet.business.entity.FosterRecordDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.FosterRecordDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 养育记录明细表
* Created by tom on 2016-07-25 09:32:31.
 */
public class FosterRecordDetailRestServiceImpl extends RestServiceBase<FosterRecordDetail> implements FosterRecordDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(FosterRecordDetailRestServiceImpl.class);

    private FosterRecordDetailService fosterRecordDetailService;

    public FosterRecordDetailService getFosterRecordDetailService() {
        return fosterRecordDetailService;
    }

    public void setFosterRecordDetailService(FosterRecordDetailService fosterRecordDetailService) {
        this.fosterRecordDetailService = fosterRecordDetailService;
    }

    @Override
    public CURDService<FosterRecordDetail> getService() {
        return fosterRecordDetailService;
    }

}
