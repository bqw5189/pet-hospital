package com.fionapet.business.service;

import com.fionapet.business.entity.GestPaidRecord;
import com.fionapet.business.facade.vo.BillItemVO;
import com.fionapet.business.facade.vo.BillVO;
import org.dubbo.x.service.CURDService;

import java.util.List;
import java.util.Map;

/**
 * 顾客影像记录表
* Created by tom on 2016-07-25 09:32:34.
 */
public interface GestPaidRecordService extends CURDService<GestPaidRecord> {

    List<BillVO> billList();

    Map<String, List<BillItemVO>> billDetail(String gestId);
}
