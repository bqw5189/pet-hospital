package com.fionapet.business.facade;

import com.fionapet.business.entity.PrescriptionTemplateDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.PrescriptionTemplateDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 处方模版明细
* Created by tom on 2016-07-31 16:42:51.
 */
public class PrescriptionTemplateDetailRestServiceImpl extends RestServiceBase<PrescriptionTemplateDetail> implements PrescriptionTemplateDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PrescriptionTemplateDetailRestServiceImpl.class);

    private PrescriptionTemplateDetailService prescriptionTemplateDetailService;

    public PrescriptionTemplateDetailService getPrescriptionTemplateDetailService() {
        return prescriptionTemplateDetailService;
    }

    public void setPrescriptionTemplateDetailService(PrescriptionTemplateDetailService prescriptionTemplateDetailService) {
        this.prescriptionTemplateDetailService = prescriptionTemplateDetailService;
    }

    @Override
    public CURDService<PrescriptionTemplateDetail> getService() {
        return prescriptionTemplateDetailService;
    }

}
