package com.fionapet.business.facade;

import com.fionapet.business.entity.CheckProcessSheet;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.CheckProcessSheetService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 检查处理单据
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
