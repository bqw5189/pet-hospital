package com.fionapet.business.jms.process;

import com.fionapet.business.jms.QueueMessageListener;
import com.fionapet.business.jms.WarehouseNoticeInfo;

/**
 * Created by tom on 16/10/20.
 */
public class WarehouseCheckMessageProcess implements IMessageProcess{
    private QueueMessageListener queueMessageListener;

    public WarehouseCheckMessageProcess(QueueMessageListener queueMessageListener) {
        this.queueMessageListener = queueMessageListener;
    }

    @Override
    public void process(WarehouseNoticeInfo warehouseNoticeInfo) {
        queueMessageListener.getItemCountService().update(warehouseNoticeInfo.getWarehouseRecordId());
    }
}
