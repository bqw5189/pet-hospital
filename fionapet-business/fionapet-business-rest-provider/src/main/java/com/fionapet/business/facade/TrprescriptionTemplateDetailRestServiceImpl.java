package com.fionapet.business.facade;

import com.fionapet.business.entity.TrprescriptionTemplateDetail;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.TrprescriptionTemplateDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 处方模版明细
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
 */
public class TrprescriptionTemplateDetailRestServiceImpl extends RestServiceBase<TrprescriptionTemplateDetail> implements TrprescriptionTemplateDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(TrprescriptionTemplateDetailRestServiceImpl.class);

    private TrprescriptionTemplateDetailService trprescriptionTemplateDetailService;

    public TrprescriptionTemplateDetailService getTrprescriptionTemplateDetailService() {
        return trprescriptionTemplateDetailService;
    }

    public void setTrprescriptionTemplateDetailService(TrprescriptionTemplateDetailService trprescriptionTemplateDetailService) {
        this.trprescriptionTemplateDetailService = trprescriptionTemplateDetailService;
    }

    @Override
    public CURDService<TrprescriptionTemplateDetail> getService() {
        return trprescriptionTemplateDetailService;
    }

}
