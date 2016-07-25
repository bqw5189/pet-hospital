package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ItemtypeChemicalexam;
import com.fionapet.business.service.ItemtypeChemicalexamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:32.
 */
public class ItemtypeChemicalexamDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ItemtypeChemicalexamDemoAction.class);
    private ItemtypeChemicalexamService itemtypeChemicalexamService;

    public ItemtypeChemicalexamService getItemtypeChemicalexamService() {
        return itemtypeChemicalexamService;
    }

    public void setItemtypeChemicalexamService(ItemtypeChemicalexamService itemtypeChemicalexamService) {
        this.itemtypeChemicalexamService = itemtypeChemicalexamService;
    }

    public void start() throws Exception {
        List<ItemtypeChemicalexam> itemtypeChemicalexams = itemtypeChemicalexamService.listAll();
        assert(itemtypeChemicalexams != null);
        assert(itemtypeChemicalexams.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(itemtypeChemicalexams));
    }
}
