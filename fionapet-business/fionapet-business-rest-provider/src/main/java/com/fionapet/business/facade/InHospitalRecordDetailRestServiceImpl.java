package com.fionapet.business.facade;

import com.fionapet.business.entity.InHospitalRecordDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.InHospitalRecordDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医院记录明细表
* Created by tom on 2016-07-25 09:32:31.
 */
public class InHospitalRecordDetailRestServiceImpl extends RestServiceBase<InHospitalRecordDetail> implements InHospitalRecordDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(InHospitalRecordDetailRestServiceImpl.class);

    private InHospitalRecordDetailService inHospitalRecordDetailService;

    public InHospitalRecordDetailService getInHospitalRecordDetailService() {
        return inHospitalRecordDetailService;
    }

    public void setInHospitalRecordDetailService(InHospitalRecordDetailService inHospitalRecordDetailService) {
        this.inHospitalRecordDetailService = inHospitalRecordDetailService;
    }

    @Override
    public CURDService<InHospitalRecordDetail> getService() {
        return inHospitalRecordDetailService;
    }

}
