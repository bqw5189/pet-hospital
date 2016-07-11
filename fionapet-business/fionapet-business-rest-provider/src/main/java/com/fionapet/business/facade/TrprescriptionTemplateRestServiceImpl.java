package com.fionapet.business.facade;

import com.fionapet.business.entity.TrprescriptionTemplate;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.TrprescriptionTemplateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 处方模版明细
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
 */
public class TrprescriptionTemplateRestServiceImpl extends RestServiceBase<TrprescriptionTemplate> implements TrprescriptionTemplateRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(TrprescriptionTemplateRestServiceImpl.class);

    private TrprescriptionTemplateService trprescriptionTemplateService;

    public TrprescriptionTemplateService getTrprescriptionTemplateService() {
        return trprescriptionTemplateService;
    }

    public void setTrprescriptionTemplateService(TrprescriptionTemplateService trprescriptionTemplateService) {
        this.trprescriptionTemplateService = trprescriptionTemplateService;
    }

    @Override
    public CURDService<TrprescriptionTemplate> getService() {
        return trprescriptionTemplateService;
    }

}
