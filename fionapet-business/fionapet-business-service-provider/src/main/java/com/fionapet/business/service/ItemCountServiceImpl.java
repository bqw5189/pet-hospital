package com.fionapet.business.service;

import com.fionapet.business.entity.ItemCount;
import com.fionapet.business.entity.WarehouseInrecord;
import com.fionapet.business.entity.WarehouseInrecordDetail;
import com.fionapet.business.repository.WarehouseInrecordDao;
import com.fionapet.business.repository.WarehouseInrecordDetailDao;
import org.apache.commons.beanutils.BeanUtilsBean;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.locale.converters.DateLocaleConverter;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.ItemCountDao;
import org.springframework.beans.factory.annotation.Autowired;

import javax.transaction.Transactional;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 *  种类数量更改原因表
* Created by tom on 2016-07-25 09:32:32.
 */
public class ItemCountServiceImpl extends CURDServiceBase<ItemCount> implements ItemCountService {
    @Autowired
    private ItemCountDao itemCountDao;
    @Autowired
    private WarehouseInrecordDetailDao warehouseInrecordDetailDao;
    @Autowired
    private WarehouseInrecordDao warehouseInrecordDao;

    @Override
    public DaoBase<ItemCount> getDao() {
        return itemCountDao;
    }

    @Transactional
    public void update(String warehouseInrecordId) {
        WarehouseInrecord warehouseInrecord = warehouseInrecordDao.findOne(warehouseInrecordId);

        List<WarehouseInrecordDetail> warehouseInrecordDetails = warehouseInrecordDetailDao.findByInWarehouseCode(warehouseInrecord.getInWarehouseCode());

        for (WarehouseInrecordDetail warehouseInrecordDetail: warehouseInrecordDetails){
            ItemCount itemCount = itemCountDao.findByItemCode(warehouseInrecordDetail.getItemCode());

            if (null == itemCount){
                itemCount = new ItemCount();
                itemCount.setWarehouseId(warehouseInrecord.getWarehouseId());
                itemCount.setWarehouseName(warehouseInrecord.getInWarehouse());

                try {
                    ConvertUtils.register(new DateLocaleConverter(Locale.SIMPLIFIED_CHINESE,"yyyy-MM-dd hh:mm:ss"), Date.class);

                    BeanUtilsBean.getInstance().copyProperties(itemCount, warehouseInrecordDetail);
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (InvocationTargetException e) {
                    e.printStackTrace();
                }
            }

            itemCount.setItemCountNum(itemCount.getItemCountNum() + warehouseInrecordDetail.getInputCount());

            createOrUpdte(itemCount);
        }

    }
}
