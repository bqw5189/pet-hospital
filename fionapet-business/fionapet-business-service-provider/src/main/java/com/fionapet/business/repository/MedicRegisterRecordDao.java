package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicRegisterRecord;
import org.dubbo.x.repository.DaoBase;

/**
 * 医生登记记录明细
* Created by tom on 2016-07-18 11:56:10.
 **/
public interface MedicRegisterRecordDao extends DaoBase<MedicRegisterRecord> {
    MedicRegisterRecord findByRegisterNo(String registerNo);
}
