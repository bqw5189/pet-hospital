package com.fionapet.business.service;

import com.fionapet.business.entity.MedicRegisterRecord;
import com.fionapet.business.facade.vo.BillItemVO;
import org.dubbo.x.service.CURDService;

import java.util.List;

/**
 * 医生登记记录明细
* Created by tom on 2016-07-18 11:56:10.
 */
public interface MedicRegisterRecordService extends CURDService<MedicRegisterRecord> {

    List<BillItemVO> billDetail(String id);
}
