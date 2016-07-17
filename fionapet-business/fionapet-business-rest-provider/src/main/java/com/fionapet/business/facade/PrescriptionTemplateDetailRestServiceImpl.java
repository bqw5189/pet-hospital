package com.fionapet.business.facade;

import com.fionapet.business.entity.PrescriptionTemplateDetail;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.PrescriptionTemplateDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 处方模版明细
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
