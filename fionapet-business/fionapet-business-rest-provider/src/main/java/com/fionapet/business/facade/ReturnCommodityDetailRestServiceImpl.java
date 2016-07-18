package com.fionapet.business.facade;

import com.fionapet.business.entity.ReturnCommodityDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ReturnCommodityDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 返回商品明细
* Created by tom on 2016-07-18 11:56:11.
 */
public class ReturnCommodityDetailRestServiceImpl extends RestServiceBase<ReturnCommodityDetail> implements ReturnCommodityDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ReturnCommodityDetailRestServiceImpl.class);

    private ReturnCommodityDetailService returnCommodityDetailService;

    public ReturnCommodityDetailService getReturnCommodityDetailService() {
        return returnCommodityDetailService;
    }

    public void setReturnCommodityDetailService(ReturnCommodityDetailService returnCommodityDetailService) {
        this.returnCommodityDetailService = returnCommodityDetailService;
    }

    @Override
    public CURDService<ReturnCommodityDetail> getService() {
        return returnCommodityDetailService;
    }

}
