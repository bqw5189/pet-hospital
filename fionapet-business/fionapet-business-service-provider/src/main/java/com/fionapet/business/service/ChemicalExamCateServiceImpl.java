package com.fionapet.business.service;

import com.fionapet.business.entity.ChemicalExamCate;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.ChemicalExamCateDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  化验样例类型
 * @author baiqw
 */
public class ChemicalExamCateServiceImpl extends CURDServiceBase<ChemicalExamCate> implements ChemicalExamCateService {
    @Autowired
    private ChemicalExamCateDao chemicalExamCateDao;

    @Override
    public DaoBase<ChemicalExamCate> getDao() {
        return chemicalExamCateDao;
    }
}
