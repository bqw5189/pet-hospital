package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ChemicalExamCate;
import com.fionapet.business.service.ChemicalExamCateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:53.
 */
public class ChemicalExamCateDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ChemicalExamCateDemoAction.class);
    private ChemicalExamCateService chemicalExamCateService;

    public ChemicalExamCateService getChemicalExamCateService() {
        return chemicalExamCateService;
    }

    public void setChemicalExamCateService(ChemicalExamCateService chemicalExamCateService) {
        this.chemicalExamCateService = chemicalExamCateService;
    }

    public void start() throws Exception {
        List<ChemicalExamCate> chemicalExamCates = chemicalExamCateService.listAll();
        assert(chemicalExamCates != null);
        assert(chemicalExamCates.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(chemicalExamCates));
    }
}
