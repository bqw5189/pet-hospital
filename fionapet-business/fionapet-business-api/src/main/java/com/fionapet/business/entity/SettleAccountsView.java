package com.fionapet.business.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by tom on 16/10/28.
 */
@Entity
@Table(name = "v_settle_accounts_view")
public class SettleAccountsView {
    @Id
    String id;
    /**
     * 会员 id
     */
    String gestId;
    /**
     * 条目编号
     */
    String itemCode;
    /**
     * 条目名称
     */
    String itemName;
    /**
     * 单价
     */
    Double itemCost;
    /**
     * 数量
     */
    String itemNum;
    /**
     * 业务id
     */
    String busiTypeId;
    /**
     * 业务类型
     */
    String businessType;
    /**
     * 关系id
     */
    String relationId;
    /**
     * 会员折扣
     */
    String isVipDiscount;
    /**
     * 单位
     */
    String itemUnit;
    /**
     * 详情id
     */
    String relationDetailId;

    public String getGestId() {
        return gestId;
    }

    public void setGestId(String gestId) {
        this.gestId = gestId;
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public Double getItemCost() {
        return itemCost;
    }

    public void setItemCost(Double itemCost) {
        this.itemCost = itemCost;
    }

    public String getItemNum() {
        return itemNum;
    }

    public void setItemNum(String itemNum) {
        this.itemNum = itemNum;
    }

    public String getBusiTypeId() {
        return busiTypeId;
    }

    public void setBusiTypeId(String busiTypeId) {
        this.busiTypeId = busiTypeId;
    }

    public String getBusinessType() {
        return businessType;
    }

    public void setBusinessType(String businessType) {
        this.businessType = businessType;
    }

    public String getRelationId() {
        return relationId;
    }

    public void setRelationId(String relationId) {
        this.relationId = relationId;
    }

    public String getIsVipDiscount() {
        return isVipDiscount;
    }

    public void setIsVipDiscount(String isVipDiscount) {
        this.isVipDiscount = isVipDiscount;
    }

    public String getItemUnit() {
        return itemUnit;
    }

    public void setItemUnit(String itemUnit) {
        this.itemUnit = itemUnit;
    }

    public String getRelationDetailId() {
        return relationDetailId;
    }

    public void setRelationDetailId(String relationDetailId) {


        this.relationDetailId = relationDetailId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
