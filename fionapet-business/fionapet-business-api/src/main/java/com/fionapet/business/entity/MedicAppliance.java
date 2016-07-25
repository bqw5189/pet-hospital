package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 医生器具表
 * <p>
* Created by tom on 2016-07-25 09:32:34.
 */
@Entity
@Table(name = "t_medic_appliance")
@ApiModel("医生器具表")
public class MedicAppliance extends CMSEntity {
    
    /**
     * 医生记录编号
     */
    @ApiModelProperty(value = "医生记录编号", required = false)
    
    @Column(columnDefinition = "医生记录编号")
    private String medicRecordCode;
    public String getMedicRecordCode() {
        return medicRecordCode;
    }
    public void setMedicRecordCode(String medicRecordCode) {
        this.medicRecordCode = medicRecordCode;
    }
    
    /**
     * 医生记录名称
     */
    @ApiModelProperty(value = "医生记录名称", required = false)
    
    @Column(columnDefinition = "医生记录名称")
    private String medicRecordId;
    public String getMedicRecordId() {
        return medicRecordId;
    }
    public void setMedicRecordId(String medicRecordId) {
        this.medicRecordId = medicRecordId;
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
     * 数量
     */
    @ApiModelProperty(value = "数量", required = false)
    
    @Column(columnDefinition = "数量")
    private double itemNum;
    public double getItemNum() {
        return itemNum;
    }
    public void setItemNum(double itemNum) {
        this.itemNum = itemNum;
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
     * 是否计算
     */
    @ApiModelProperty(value = "是否计算", required = false)
    
    @Column(columnDefinition = "是否计算")
    private String isCount;
    public String getIsCount() {
        return isCount;
    }
    public void setIsCount(String isCount) {
        this.isCount = isCount;
    }
    
    /**
     * 单元
     */
    @ApiModelProperty(value = "单元", required = false)
    
    @Column(columnDefinition = "单元")
    private String unit;
    public String getUnit() {
        return unit;
    }
    public void setUnit(String unit) {
        this.unit = unit;
    }
    
    /**
     * 执行者
     */
    @ApiModelProperty(value = "执行者", required = false)
    
    @Column(columnDefinition = "执行者")
    private String executorId;
    public String getExecutorId() {
        return executorId;
    }
    public void setExecutorId(String executorId) {
        this.executorId = executorId;
    }
    
    /**
     * 执行者名称
     */
    @ApiModelProperty(value = "执行者名称", required = false)
    
    @Column(columnDefinition = "执行者名称")
    private String executorName;
    public String getExecutorName() {
        return executorName;
    }
    public void setExecutorName(String executorName) {
        this.executorName = executorName;
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
    
}

