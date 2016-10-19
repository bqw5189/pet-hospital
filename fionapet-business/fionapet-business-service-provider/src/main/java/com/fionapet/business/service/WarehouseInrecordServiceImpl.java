package com.fionapet.business.service;

import com.fionapet.business.entity.DictTypeDetail;
import com.fionapet.business.entity.ItemCount;
import com.fionapet.business.entity.WarehouseInrecord;
import com.fionapet.business.entity.WarehouseInrecordDetail;
import com.fionapet.business.repository.*;
import org.apache.commons.beanutils.BeanUtilsBean;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import org.springframework.beans.factory.annotation.Autowired;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

/**
 *  进库记录
* Created by tom on 2016-07-18 11:56:10.
 */
public class WarehouseInrecordServiceImpl extends CURDServiceBase<WarehouseInrecord> implements WarehouseInrecordService {
    @Autowired
    private WarehouseInrecordDao warehouseInrecordDao;
    @Autowired
    private WarehouseInrecordDetailDao warehouseInrecordDetailDao;
    @Autowired
    private DictTypeDetailDao dictTypeDetailDao;
    @Autowired
    private ItemCountDao itemCountDao;

    @Override
    public DaoBase<WarehouseInrecord> getDao() {
        return warehouseInrecordDao;
    }

    @Override
    public WarehouseInrecord createOrUpdte(WarehouseInrecord entity) {
        if (entity.getId() == null) {
            DictTypeDetail inStatus = dictTypeDetailDao.findByDictDetailCode("SM00042");
            entity.setStatus(inStatus);
        }
        return super.createOrUpdte(entity);
    }

    @Override
    public Boolean audit(String uuid) {
        WarehouseInrecord warehouseInrecord = warehouseInrecordDao.findOne(uuid);

        if (null != warehouseInrecord){
            DictTypeDetail checkStatus = dictTypeDetailDao.findByDictDetailCode("SM00043");
            warehouseInrecord.setStatus(checkStatus);
            warehouseInrecordDao.save(warehouseInrecord);
        }

        //更新库存
        update(warehouseInrecord);

        return true;
    }

    private void update(WarehouseInrecord warehouseInrecord) {
        List<WarehouseInrecordDetail> warehouseInrecordDetails = warehouseInrecordDetailDao.findByInWarehouseCode(warehouseInrecord.getInWarehouseCode());
        for (WarehouseInrecordDetail warehouseInrecordDetail: warehouseInrecordDetails){
            ItemCount itemCount = itemCountDao.findByItemCode(warehouseInrecordDetail.getItemCode());

            if (null == itemCount){
                itemCount = new ItemCount();
                try {
                    BeanUtilsBean.getInstance().copyProperties(itemCount, warehouseInrecordDetail);
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (InvocationTargetException e) {
                    e.printStackTrace();
                }
            }

            itemCount.setItemCountNum(itemCount.getItemCountNum() + warehouseInrecordDetail.getInputCount());

            itemCountDao.save(itemCount);
        }

    }
}
