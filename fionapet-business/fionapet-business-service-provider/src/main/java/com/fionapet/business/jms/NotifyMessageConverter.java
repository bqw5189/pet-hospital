package com.fionapet.business.jms;

import org.apache.activemq.command.ActiveMQObjectMessage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jms.support.converter.MessageConversionException;
import org.springframework.jms.support.converter.MessageConverter;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.ObjectMessage;
import javax.jms.Session;

/**
 * Created by tom on 16/10/20.
 */
public class NotifyMessageConverter implements MessageConverter {
    private Logger logger = LoggerFactory.getLogger(NotifyMessageConverter.class);

    @Override
    /**
     * 转换接收到的消息为NoticeInfo对象
     */
    public Object fromMessage(Message message) throws JMSException,
            MessageConversionException {
        // TODO Auto-generated method stub
        if (logger.isDebugEnabled()) {
            logger.debug("Receive JMS message :"+message);
        }
        if (message instanceof ObjectMessage) {
            ObjectMessage oMsg = (ObjectMessage)message;
            if (oMsg instanceof ActiveMQObjectMessage) {
                ActiveMQObjectMessage aMsg = (ActiveMQObjectMessage)oMsg;
                try {
                    WarehouseNoticeInfo noticeInfo = (WarehouseNoticeInfo)aMsg.getObject();
                    return noticeInfo;
                } catch (Exception e) {
                    // TODO: handle exception
                    logger.error("Message:${} is not a instance of NoticeInfo."+message.toString());
                    throw new JMSException("Message:"+message.toString()+"is not a instance of NoticeInfo."+message.toString());
                }
            }else{
                logger.error("Message:${} is not a instance of ActiveMQObjectMessage."+message.toString());
                throw new JMSException("Message:"+message.toString()+"is not a instance of ActiveMQObjectMessage."+message.toString());
            }
        }else {
            logger.error("Message:${} is not a instance of ObjectMessage."+message.toString());
            throw new JMSException("Message:"+message.toString()+"is not a instance of ObjectMessage."+message.toString());
        }
    }

    @Override
    /**
     * 转换NoticeInfo对象到消息
     */
    public Message toMessage(Object obj, Session session) throws JMSException,
            MessageConversionException {
        // TODO Auto-generated method stub
        if (logger.isDebugEnabled()) {
            logger.debug("Convert Notify object to JMS message:${}"+obj.toString());
        }
        if (obj instanceof WarehouseNoticeInfo) {
            ActiveMQObjectMessage msg = (ActiveMQObjectMessage)session.createObjectMessage();
            msg.setObject((WarehouseNoticeInfo)obj);
            return msg;
        }else {
            logger.debug("Convert Notify object to JMS message:${}"+obj.toString());
        }
        return null;
    }
}
