package com.fionapet.business.service;

import com.fionapet.business.entity.SerialNumber;
import org.dubbo.x.service.CURDService;
/**
 * 序列号
* Created by tom on 2016-07-18 11:56:11.
 */
public interface SerialNumberService extends CURDService<SerialNumber> {
    SerialNumber getCurrentSerialNumber(String name);
}
