package com.fionapet.business.service;

import com.fionapet.business.entity.SerialNumber;
import com.fionapet.business.entity.StatusEntity;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.SerialNumberDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  序列号
* Created by tom on 2016-07-18 11:56:11.
 */
public class SerialNumberServiceImpl extends CURDServiceBase<SerialNumber> implements SerialNumberService {
    @Autowired
    private SerialNumberDao serialNumberDao;

    @Override
    public DaoBase<SerialNumber> getDao() {
        return serialNumberDao;
    }

    @Override
    public SerialNumber getCurrentSerialNumber(String name) {
        SerialNumber serialNumber = serialNumberDao.findBySerialNumberStyle(name);

        if (null == serialNumber){
            serialNumber = new SerialNumber();
            serialNumber.setSerialNum(1);
            serialNumber.setSerialNumberStyle(name);
        }else{
            serialNumber.setSerialNum(serialNumber.getSerialNum()+1);
        }

        serialNumber.setStatus(StatusEntity.DEFAULT());

        createOrUpdte(serialNumber);

        return serialNumber;
    }
}
