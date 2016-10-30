package com.fionapet.business.repository;

import com.fionapet.business.entity.GestPaidRecord;
import com.fionapet.business.entity.BillVO;
import org.dubbo.x.repository.DaoBase;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * 顾客影像记录表
* Created by tom on 2016-07-25 09:32:34.
 **/
public interface GestPaidRecordDao extends DaoBase<GestPaidRecord> {

}
