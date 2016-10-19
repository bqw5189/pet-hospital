package com.fionapet.business.service;

import com.fionapet.business.entity.WarehouseInrecord;
import com.fionapet.business.entity.WarehouseInrecordDetail;
import com.fionapet.business.repository.WarehouseInrecordDao;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.WarehouseInrecordDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

import javax.transaction.Transactional;

/**
 *  进库记录明细
* Created by tom on 2016-07-18 11:56:10.
 */
public class WarehouseInrecordDetailServiceImpl extends CURDServiceBase<WarehouseInrecordDetail> implements WarehouseInrecordDetailService {
    @Autowired
    private WarehouseInrecordDetailDao warehouseInrecordDetailDao;
    @Autowired
    private WarehouseInrecordDao warehouseInrecordDao;


    @Override
    public DaoBase<WarehouseInrecordDetail> getDao() {
        return warehouseInrecordDetailDao;
    }

    @Override
    public WarehouseInrecordDetail createOrUpdte(WarehouseInrecordDetail entity) {
        //重新计算入库记录统计

        return super.createOrUpdte(entity);
    }

    @Override
    @Transactional
    // TODO 消息
    public void delete(String uuid) {
        WarehouseInrecordDetail warehouseInrecordDetail = warehouseInrecordDetailDao.findOne(uuid);
        if (null != warehouseInrecordDetail){
            WarehouseInrecord warehouseInrecord = warehouseInrecordDao.findByInWarehouseCode(warehouseInrecordDetail.getInWarehouseCode());
            if (null != warehouseInrecord) {
                warehouseInrecord.setInWarehouseTotalCost(warehouseInrecord.getInWarehouseTotalCost() - warehouseInrecordDetail.getInputCost());
                warehouseInrecord.setTotalCount(warehouseInrecord.getTotalCount()-1);
                warehouseInrecordDao.save(warehouseInrecord);
            }
        }
        super.delete(uuid);
    }
}
