package com.fionapet.business.service;

import com.fionapet.business.entity.FosterRecordDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.FosterRecordDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  养育记录明细表
* Created by tom on 2016-07-25 09:32:31.
 */
public class FosterRecordDetailServiceImpl extends CURDServiceBase<FosterRecordDetail> implements FosterRecordDetailService {
    @Autowired
    private FosterRecordDetailDao fosterRecordDetailDao;

    @Override
    public DaoBase<FosterRecordDetail> getDao() {
        return fosterRecordDetailDao;
    }
}
