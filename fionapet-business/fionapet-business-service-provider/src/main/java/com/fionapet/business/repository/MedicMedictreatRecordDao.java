package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicMedictreatRecord;
import org.dubbo.x.repository.DaoBase;

/**
 * 医生处理记录
* Created by tom on 2016-07-18 11:56:10.
 **/
public interface MedicMedictreatRecordDao extends DaoBase<MedicMedictreatRecord> {
    MedicMedictreatRecord findByRegisterNo(String registerNo);
}
