package com.fionapet.business.facade;

import com.fionapet.business.entity.TrprescriptionTemplateDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.TrprescriptionTemplateDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 药方模版明细
* Created by tom on 2016-07-31 16:42:51.
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
