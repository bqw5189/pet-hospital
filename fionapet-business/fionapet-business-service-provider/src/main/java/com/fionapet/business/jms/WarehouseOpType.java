package com.fionapet.business.jms;

/**
 * Created by tom on 16/10/20.
 */
public enum WarehouseOpType {
    /**
     * 入库
     */
    IN,
    /**
     * 出库
     */
    OUT,
    /**
     * 移库
     */
    MOVETO,
    /**
     * 审核
     */
    CHECK,
    /**
     * 删除入库记录
     */
    DELETE_RECORD_DETAIL;


}
