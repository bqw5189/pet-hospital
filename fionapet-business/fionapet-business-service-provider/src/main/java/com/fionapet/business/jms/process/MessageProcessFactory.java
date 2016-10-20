package com.fionapet.business.jms.process;

import com.fionapet.business.jms.QueueMessageListener;
import com.fionapet.business.jms.WarehouseNoticeInfo;
import com.fionapet.business.jms.WarehouseOpType;


/**
 * Created by tom on 16/10/20.
 */
public class MessageProcessFactory {
    public static IMessageProcess build(QueueMessageListener queueMessageListener, WarehouseNoticeInfo warehouseNoticeInfo) throws ClassNotFoundException {
        IMessageProcess iMessageProcess = null;
        switch (warehouseNoticeInfo.getWarehouseOpType()){
            case CHECK:{
                iMessageProcess = new WarehouseCheckMessageProcess(queueMessageListener);
                break;
            }
            default:{
                throw new ClassNotFoundException("not found by warehouseOpType");
            }
        }

        return iMessageProcess;
    }
}
