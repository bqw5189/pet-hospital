package com.fionapet.business.jms;

import com.fionapet.business.jms.process.IMessageProcess;
import com.fionapet.business.jms.process.MessageProcessFactory;
import com.fionapet.business.service.ItemCountService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.ObjectMessage;

/**
 * Created by tom on 16/10/20.
 */
public class QueueMessageListener implements MessageListener {
    private static Logger logger = LoggerFactory.getLogger(QueueMessageListener.class);
    private NotifyMessageConverter messageConverter;
    private ItemCountService itemCountService;


    /**
     * 接收消息
     */
    @Override
    public void onMessage(Message message) {
        // TODO Auto-generated method stub
        try {
            ObjectMessage objectMessage = (ObjectMessage)message;

            WarehouseNoticeInfo noticeInfo = (WarehouseNoticeInfo)messageConverter.fromMessage(objectMessage);

            logger.debug("queue收到消息:{}",noticeInfo.getWarehouseRecordId());
            logger.debug("model:{}",objectMessage.getJMSDeliveryMode());
            logger.debug("destination:{}",objectMessage.getJMSDestination());
            logger.debug("type:{}",objectMessage.getJMSType());
            logger.debug("messageId:{}",objectMessage.getJMSMessageID());
            logger.debug("time:{}",objectMessage.getJMSTimestamp());
            logger.debug("expiredTime:{}",objectMessage.getJMSExpiration());
            logger.debug("priority:{}"+objectMessage.getJMSPriority());

            //当前用户身份传递
            itemCountService.setCurrentUser(noticeInfo.getCurrentUser());

            IMessageProcess iMessageProcess = MessageProcessFactory.build(this, noticeInfo);
            iMessageProcess.process(noticeInfo);

        } catch (Exception e) {
            // TODO: handle exception
            logger.error("处理信息时发生异常",e);
        }
    }
    public NotifyMessageConverter getMessageConverter() {
        return messageConverter;
    }
    public void setMessageConverter(NotifyMessageConverter messageConverter) {
        this.messageConverter = messageConverter;
    }

    public ItemCountService getItemCountService() {
        return itemCountService;
    }

    public void setItemCountService(ItemCountService itemCountService) {
        this.itemCountService = itemCountService;
    }
}
