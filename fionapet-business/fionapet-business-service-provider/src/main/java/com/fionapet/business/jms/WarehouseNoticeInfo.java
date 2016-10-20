package com.fionapet.business.jms;

import org.dubbo.x.entity.IdEntity;

import java.io.Serializable;

/**
 * Created by tom on 16/10/20.
 */
public class WarehouseNoticeInfo implements Serializable{
    /**
     * 库存记录
     */
    private String warehouseRecordId;
    /**
     * 库存操作类型
     */
    private WarehouseOpType warehouseOpType;
    /**
     * 当前操作人
     */
    private IdEntity currentUser;

    public IdEntity getCurrentUser() {
        return currentUser;
    }

    public void setCurrentUser(IdEntity currentUser) {
        this.currentUser = currentUser;
    }

    public String getWarehouseRecordId() {
        return warehouseRecordId;
    }

    public void setWarehouseRecordId(String warehouseRecordId) {
        this.warehouseRecordId = warehouseRecordId;
    }

    public WarehouseOpType getWarehouseOpType() {
        return warehouseOpType;
    }

    public void setWarehouseOpType(WarehouseOpType warehouseOpType) {
        this.warehouseOpType = warehouseOpType;
    }

    @Override
    public String toString() {
        return "WarehouseNoticeInfo{" +
                "warehouseRecordId='" + warehouseRecordId + '\'' +
                ", warehouseOpType=" + warehouseOpType +
                '}';
    }
}
