package com.fionapet.business.facade;

import com.fionapet.business.entity.ChemicalExamCate;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.ChemicalExamCateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 化验样例类型
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
 */
public class ChemicalExamCateRestServiceImpl extends RestServiceBase<ChemicalExamCate> implements ChemicalExamCateRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ChemicalExamCateRestServiceImpl.class);

    private ChemicalExamCateService chemicalExamCateService;

    public ChemicalExamCateService getChemicalExamCateService() {
        return chemicalExamCateService;
    }

    public void setChemicalExamCateService(ChemicalExamCateService chemicalExamCateService) {
        this.chemicalExamCateService = chemicalExamCateService;
    }

    @Override
    public CURDService<ChemicalExamCate> getService() {
        return chemicalExamCateService;
    }

}
