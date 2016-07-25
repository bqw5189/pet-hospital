package com.fionapet.business.service;

import com.fionapet.business.entity.InHospitalRecordDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.InHospitalRecordDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  医院记录明细表
* Created by tom on 2016-07-25 09:32:31.
 */
public class InHospitalRecordDetailServiceImpl extends CURDServiceBase<InHospitalRecordDetail> implements InHospitalRecordDetailService {
    @Autowired
    private InHospitalRecordDetailDao inHospitalRecordDetailDao;

    @Override
    public DaoBase<InHospitalRecordDetail> getDao() {
        return inHospitalRecordDetailDao;
    }
}
