package com.fionapet.business.service;

import cn.fiona.pet.account.entity.User;
import com.fionapet.business.entity.DictTypeDetail;
import com.fionapet.business.entity.ItemCount;
import com.fionapet.business.entity.WarehouseInrecord;
import com.fionapet.business.entity.WarehouseInrecordDetail;
import com.fionapet.business.jms.NoticeInfoBuilder;
import com.fionapet.business.jms.QueueMessageProducer;
import com.fionapet.business.jms.WarehouseNoticeInfo;
import com.fionapet.business.jms.WarehouseOpType;
import com.fionapet.business.repository.*;
import org.apache.commons.beanutils.BeanUtilsBean;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import org.springframework.beans.factory.annotation.Autowired;

import javax.transaction.Transactional;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.List;

/**
 *  进库记录
* Created by tom on 2016-07-18 11:56:10.
 */
public class WarehouseInrecordServiceImpl extends CURDServiceBase<WarehouseInrecord> implements WarehouseInrecordService {
    @Autowired
    private WarehouseInrecordDao warehouseInrecordDao;
    @Autowired
    private DictTypeDetailDao dictTypeDetailDao;
    @Autowired
    private QueueMessageProducer queueMessageProducer;

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
    @Transactional
    public Boolean audit(String uuid) {
        WarehouseInrecord warehouseInrecord = warehouseInrecordDao.findOne(uuid);

        if (null != warehouseInrecord){
            DictTypeDetail checkStatus = dictTypeDetailDao.findByDictDetailCode("SM00043");
            warehouseInrecord.setStatus(checkStatus);
            warehouseInrecord.setCheckDate(new Date());

            User user = (User) this.getCurrentUser();
            warehouseInrecord.setCheckMan(user.getName());

            createOrUpdte(warehouseInrecord);
        }

        // 发送 审核 更新库存消息
        WarehouseNoticeInfo warehouseNoticeInfo = NoticeInfoBuilder.instance().setCurrentUser(getCurrentUser()).setWarehouseOpType(WarehouseOpType.CHECK).setWarehouseRecordId(uuid).build();
        queueMessageProducer.sendQueue(warehouseNoticeInfo);

        return true;
    }


}
