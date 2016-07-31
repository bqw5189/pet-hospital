package com.fionapet.business.facade;

import com.fionapet.business.entity.ChemicalExamCate;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ChemicalExamCateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 化验样例类型
* Created by tom on 2016-07-31 16:42:53.
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
