package com.fionapet.business.service;

import com.fionapet.business.entity.Pet;
import com.fionapet.business.test.DataBuilder;
import com.fionapet.business.test.PetData;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.PetDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import javax.xml.crypto.Data;


/**
 *  宠物
* Created by tom on 2016-07-19 10:31:06.
 */
public class PetServiceImpl extends CURDServiceBase<Pet> implements PetService {
    private static final Logger LOGGER = LoggerFactory.getLogger(PetServiceImpl.class);
    @Autowired
    private PetDao petDao;

    @Override
    public DaoBase<Pet> getDao() {
        return petDao;
    }
}
