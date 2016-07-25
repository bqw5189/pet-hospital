package com.fionapet.business.facade;

import com.fionapet.business.entity.ItemtypeChemicalexam;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ItemtypeChemicalexamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 类型化验实例表
* Created by tom on 2016-07-25 09:32:32.
 */
public class ItemtypeChemicalexamRestServiceImpl extends RestServiceBase<ItemtypeChemicalexam> implements ItemtypeChemicalexamRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ItemtypeChemicalexamRestServiceImpl.class);

    private ItemtypeChemicalexamService itemtypeChemicalexamService;

    public ItemtypeChemicalexamService getItemtypeChemicalexamService() {
        return itemtypeChemicalexamService;
    }

    public void setItemtypeChemicalexamService(ItemtypeChemicalexamService itemtypeChemicalexamService) {
        this.itemtypeChemicalexamService = itemtypeChemicalexamService;
    }

    @Override
    public CURDService<ItemtypeChemicalexam> getService() {
        return itemtypeChemicalexamService;
    }

}
