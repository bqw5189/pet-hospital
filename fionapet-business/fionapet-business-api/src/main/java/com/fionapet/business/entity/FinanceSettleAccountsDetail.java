package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 资金账户明细表
 * <p>
* Created by tom on 2016-07-25 09:32:33.
 */
@Entity
@Table(name = "t_finance_settle_accounts_detail")
@ApiModel("资金账户明细表")
public class FinanceSettleAccountsDetail extends CMSEntity {
    
    /**
     * settleAccountsDetailId
     */
    @ApiModelProperty(value = "settleAccountsDetailId", required = false)
    
    @Column(columnDefinition = "settleAccountsDetailId")
    private String settleAccountsDetailId;
    public String getSettleAccountsDetailId() {
        return settleAccountsDetailId;
    }
    public void setSettleAccountsDetailId(String settleAccountsDetailId) {
        this.settleAccountsDetailId = settleAccountsDetailId;
    }
    
    /**
     * 类型编号
     */
    @ApiModelProperty(value = "类型编号", required = false)
    
    @Column(columnDefinition = "类型编号")
    private String itemCode;
    public String getItemCode() {
        return itemCode;
    }
    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }
    
    /**
     * 类型名称
     */
    @ApiModelProperty(value = "类型名称", required = false)
    
    @Column(columnDefinition = "类型名称")
    private String itemName;
    public String getItemName() {
        return itemName;
    }
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
    
    /**
     * 单元
     */
    @ApiModelProperty(value = "单元", required = false)
    
    @Column(columnDefinition = "单元")
    private String packageUnit;
    public String getPackageUnit() {
        return packageUnit;
    }
    public void setPackageUnit(String packageUnit) {
        this.packageUnit = packageUnit;
    }
    
    /**
     * 规格
     */
    @ApiModelProperty(value = "规格", required = false)
    
    @Column(columnDefinition = "规格")
    private String itemStandard;
    public String getItemStandard() {
        return itemStandard;
    }
    public void setItemStandard(String itemStandard) {
        this.itemStandard = itemStandard;
    }
    
    /**
     * 零散比
     */
    @ApiModelProperty(value = "零散比", required = false)
    
    @Column(columnDefinition = "零散比")
    private Integer itemBulk;
    public Integer getItemBulk() {
        return itemBulk;
    }
    public void setItemBulk(Integer itemBulk) {
        this.itemBulk = itemBulk;
    }
    
    /**
     * 售价
     */
    @ApiModelProperty(value = "售价", required = false)
    
    @Column(columnDefinition = "售价")
    private double sellPrice;
    public double getSellPrice() {
        return sellPrice;
    }
    public void setSellPrice(double sellPrice) {
        this.sellPrice = sellPrice;
    }
    
    /**
     * 总个数
     */
    @ApiModelProperty(value = "总个数", required = false)
    
    @Column(columnDefinition = "总个数")
    private double totalNum;
    public double getTotalNum() {
        return totalNum;
    }
    public void setTotalNum(double totalNum) {
        this.totalNum = totalNum;
    }
    
    /**
     * 总价
     */
    @ApiModelProperty(value = "总价", required = false)
    
    @Column(columnDefinition = "总价")
    private double totalCost;
    public double getTotalCost() {
        return totalCost;
    }
    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }
    
    /**
     * 实际价格
     */
    @ApiModelProperty(value = "实际价格", required = false)
    
    @Column(columnDefinition = "实际价格")
    private double infactPrice;
    public double getInfactPrice() {
        return infactPrice;
    }
    public void setInfactPrice(double infactPrice) {
        this.infactPrice = infactPrice;
    }
    
    /**
     * 折后价
     */
    @ApiModelProperty(value = "折后价", required = false)
    
    @Column(columnDefinition = "折后价")
    private double discountMoney;
    public double getDiscountMoney() {
        return discountMoney;
    }
    public void setDiscountMoney(double discountMoney) {
        this.discountMoney = discountMoney;
    }
    
    /**
     * 业务类型ID
     */
    @ApiModelProperty(value = "业务类型ID", required = false)
    
    @Column(columnDefinition = "业务类型ID")
    private Integer busiTypeId;
    public Integer getBusiTypeId() {
        return busiTypeId;
    }
    public void setBusiTypeId(Integer busiTypeId) {
        this.busiTypeId = busiTypeId;
    }
    
    /**
     * 关联ID
     */
    @ApiModelProperty(value = "关联ID", required = false)
    
    @Column(columnDefinition = "关联ID")
    private String relationId;
    public String getRelationId() {
        return relationId;
    }
    public void setRelationId(String relationId) {
        this.relationId = relationId;
    }
    
    /**
     * 类型描述
     */
    @ApiModelProperty(value = "类型描述", required = false)
    
    @Column(columnDefinition = "类型描述")
    private String itemDescript;
    public String getItemDescript() {
        return itemDescript;
    }
    public void setItemDescript(String itemDescript) {
        this.itemDescript = itemDescript;
    }
    
    /**
     * 影像状态
     */
    @ApiModelProperty(value = "影像状态", required = false)
    
    @Column(columnDefinition = "影像状态")
    private String paidStatus;
    public String getPaidStatus() {
        return paidStatus;
    }
    public void setPaidStatus(String paidStatus) {
        this.paidStatus = paidStatus;
    }
    
    /**
     * 影像时间
     */
    @ApiModelProperty(value = "影像时间", required = false)
    
    @Column(columnDefinition = "影像时间")
    private Date paidTime;
    public Date getPaidTime() {
        return paidTime;
    }
    public void setPaidTime(Date paidTime) {
        this.paidTime = paidTime;
    }
    
    /**
     * 关联细节ID
     */
    @ApiModelProperty(value = "关联细节ID", required = false)
    
    @Column(columnDefinition = "关联细节ID")
    private String relationDetailId;
    public String getRelationDetailId() {
        return relationDetailId;
    }
    public void setRelationDetailId(String relationDetailId) {
        this.relationDetailId = relationDetailId;
    }
    
    /**
     * 折后总价
     */
    @ApiModelProperty(value = "折后总价", required = false)
    
    @Column(columnDefinition = "折后总价")
    private double sumDiscountMoney;
    public double getSumDiscountMoney() {
        return sumDiscountMoney;
    }
    public void setSumDiscountMoney(double sumDiscountMoney) {
        this.sumDiscountMoney = sumDiscountMoney;
    }
    
    /**
     * 原始价格
     */
    @ApiModelProperty(value = "原始价格", required = false)
    
    @Column(columnDefinition = "原始价格")
    private double sumOriginalMoney;
    public double getSumOriginalMoney() {
        return sumOriginalMoney;
    }
    public void setSumOriginalMoney(double sumOriginalMoney) {
        this.sumOriginalMoney = sumOriginalMoney;
    }
    
}

