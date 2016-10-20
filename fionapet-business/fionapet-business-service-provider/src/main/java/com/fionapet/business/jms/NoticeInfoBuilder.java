package com.fionapet.business.jms;

import org.dubbo.x.entity.IdEntity;

/**
 * Created by tom on 16/10/20.
 */
public class NoticeInfoBuilder {
    private WarehouseNoticeInfo warehouseNoticeInfo;

    public static NoticeInfoBuilder instance(){
        NoticeInfoBuilder noticeInfoBuilder = new NoticeInfoBuilder();
        noticeInfoBuilder.warehouseNoticeInfo = new WarehouseNoticeInfo();
        return noticeInfoBuilder;
    }

    public WarehouseNoticeInfo build(){
        return this.warehouseNoticeInfo;
    }

    public NoticeInfoBuilder setWarehouseRecordId(String warehouseRecordId) {
        warehouseNoticeInfo.setWarehouseRecordId(warehouseRecordId);
        return this;
    }

    public NoticeInfoBuilder setWarehouseOpType(WarehouseOpType warehouseOpType) {
        warehouseNoticeInfo.setWarehouseOpType(warehouseOpType);
        return this;
    }

    public NoticeInfoBuilder setCurrentUser(IdEntity currentUser) {
        warehouseNoticeInfo.setCurrentUser(currentUser);
        return this;
    }


}
