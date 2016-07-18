package com.fionapet.business.service;

import com.fionapet.business.entity.MedicSupplies;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicSuppliesDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  医生供应量表
* Created by tom on 2016-07-18 11:56:09.
 */
public class MedicSuppliesServiceImpl extends CURDServiceBase<MedicSupplies> implements MedicSuppliesService {
    @Autowired
    private MedicSuppliesDao medicSuppliesDao;

    @Override
    public DaoBase<MedicSupplies> getDao() {
        return medicSuppliesDao;
    }
}
