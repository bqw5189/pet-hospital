package com.fionapet.business.service;

import com.fionapet.business.entity.ChemicalExamCate;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.ChemicalExamCateDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  化验样例类型
* Created by tom on 2016-07-31 16:42:53.
 */
public class ChemicalExamCateServiceImpl extends CURDServiceBase<ChemicalExamCate> implements ChemicalExamCateService {
    @Autowired
    private ChemicalExamCateDao chemicalExamCateDao;

    @Override
    public DaoBase<ChemicalExamCate> getDao() {
        return chemicalExamCateDao;
    }
}
