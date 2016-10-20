package com.fionapet.business.jms;

import org.springframework.jms.core.JmsTemplate;

import javax.jms.Destination;

/**
 *
 * Created by tom on 16/10/20.
 */
public class QueueMessageProducer {
    private JmsTemplate jmsTemplate;
    private Destination notifyQueue;
    private NotifyMessageConverter messageConverter;
    public void sendQueue(WarehouseNoticeInfo noticeInfo){
        sendMessage(noticeInfo);
    }
    private void sendMessage(WarehouseNoticeInfo noticeInfo) {
        // TODO Auto-generated method stub
        jmsTemplate.setMessageConverter(messageConverter);
        jmsTemplate.setPubSubDomain(false);
        jmsTemplate.convertAndSend(notifyQueue,noticeInfo);
    }
    public JmsTemplate getJmsTemplate() {
        return jmsTemplate;
    }
    public void setJmsTemplate(JmsTemplate jmsTemplate) {
        this.jmsTemplate = jmsTemplate;
    }
    public Destination getNotifyQueue() {
        return notifyQueue;
    }
    public void setNotifyQueue(Destination notifyQueue) {
        this.notifyQueue = notifyQueue;
    }
    public NotifyMessageConverter getMessageConverter() {
        return messageConverter;
    }
    public void setMessageConverter(NotifyMessageConverter messageConverter) {
        this.messageConverter = messageConverter;
    }
}
