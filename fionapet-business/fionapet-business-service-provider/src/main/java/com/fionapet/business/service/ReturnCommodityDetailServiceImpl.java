package com.fionapet.business.service;

import com.fionapet.business.entity.ReturnCommodityDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.ReturnCommodityDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  返回商品明细
* Created by tom on 2016-07-18 11:56:11.
 */
public class ReturnCommodityDetailServiceImpl extends CURDServiceBase<ReturnCommodityDetail> implements ReturnCommodityDetailService {
    @Autowired
    private ReturnCommodityDetailDao returnCommodityDetailDao;

    @Override
    public DaoBase<ReturnCommodityDetail> getDao() {
        return returnCommodityDetailDao;
    }
}
