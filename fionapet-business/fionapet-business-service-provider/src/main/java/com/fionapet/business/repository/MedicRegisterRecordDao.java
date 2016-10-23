package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicRegisterRecord;
import org.dubbo.x.repository.DaoBase;

import java.util.List;

/**
 * 医生登记记录明细
* Created by tom on 2016-07-18 11:56:10.
 **/
public interface MedicRegisterRecordDao extends DaoBase<MedicRegisterRecord> {
    MedicRegisterRecord findByRegisterNo(String registerNo);

    List<MedicRegisterRecord> findByPetIdAndPaidStatusNot(String id, String sm00051);
}
