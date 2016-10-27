package com.fionapet.business.repository;

import com.fionapet.business.entity.SerialNumber;
import org.dubbo.x.repository.DaoBase;

/**
 * 序列号
* Created by tom on 2016-07-18 11:56:11.
 **/
public interface SerialNumberDao extends DaoBase<SerialNumber> {
    SerialNumber findBySerialNumberStyle(String name);
}
