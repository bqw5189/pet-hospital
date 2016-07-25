package com.fionapet.business.service;

import com.fionapet.business.entity.ItemtypeChemicalexam;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.ItemtypeChemicalexamDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  类型化验实例表
* Created by tom on 2016-07-25 09:32:31.
 */
public class ItemtypeChemicalexamServiceImpl extends CURDServiceBase<ItemtypeChemicalexam> implements ItemtypeChemicalexamService {
    @Autowired
    private ItemtypeChemicalexamDao itemtypeChemicalexamDao;

    @Override
    public DaoBase<ItemtypeChemicalexam> getDao() {
        return itemtypeChemicalexamDao;
    }
}
