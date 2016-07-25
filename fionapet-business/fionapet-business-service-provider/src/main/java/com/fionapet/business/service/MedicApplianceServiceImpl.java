package com.fionapet.business.service;

import com.fionapet.business.entity.MedicAppliance;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicApplianceDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  医生器具表
* Created by tom on 2016-07-25 09:32:34.
 */
public class MedicApplianceServiceImpl extends CURDServiceBase<MedicAppliance> implements MedicApplianceService {
    @Autowired
    private MedicApplianceDao medicApplianceDao;

    @Override
    public DaoBase<MedicAppliance> getDao() {
        return medicApplianceDao;
    }
}
