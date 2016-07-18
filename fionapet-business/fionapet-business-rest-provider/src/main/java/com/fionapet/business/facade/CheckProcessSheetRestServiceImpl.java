package com.fionapet.business.facade;

import com.fionapet.business.entity.CheckProcessSheet;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.CheckProcessSheetService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 检查处理单据
* Created by tom on 2016-07-18 11:56:10.
 */
public class CheckProcessSheetRestServiceImpl extends RestServiceBase<CheckProcessSheet> implements CheckProcessSheetRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(CheckProcessSheetRestServiceImpl.class);

    private CheckProcessSheetService checkProcessSheetService;

    public CheckProcessSheetService getCheckProcessSheetService() {
        return checkProcessSheetService;
    }

    public void setCheckProcessSheetService(CheckProcessSheetService checkProcessSheetService) {
        this.checkProcessSheetService = checkProcessSheetService;
    }

    @Override
    public CURDService<CheckProcessSheet> getService() {
        return checkProcessSheetService;
    }

}
