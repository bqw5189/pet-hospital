package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 服务明细
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_service_detail")
@ApiModel("服务明细")
public class ServiceDetail extends CMSEntity {
    
    /**
     * 服务ID
     */
    @ApiModelProperty(value = "服务ID", required = false)
    
    @Column(columnDefinition = "服务ID")
    private String serviceId;
    public String getServiceId() {
        return serviceId;
    }
    public void setServiceId(String serviceId) {
        this.serviceId = serviceId;
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
     * 条码
     */
    @ApiModelProperty(value = "条码", required = false)
    
    @Column(columnDefinition = "条码")
    private String barCode;
    public String getBarCode() {
        return barCode;
    }
    public void setBarCode(String barCode) {
        this.barCode = barCode;
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
     * 个数
     */
    @ApiModelProperty(value = "个数", required = false)
    
    @Column(columnDefinition = "个数")
    private Integer inputCount;
    public Integer getInputCount() {
        return inputCount;
    }
    public void setInputCount(Integer inputCount) {
        this.inputCount = inputCount;
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
     * 单位
     */
    @ApiModelProperty(value = "单位", required = false)
    
    @Column(columnDefinition = "单位")
    private String packageUnit;
    public String getPackageUnit() {
        return packageUnit;
    }
    public void setPackageUnit(String packageUnit) {
        this.packageUnit = packageUnit;
    }
    
    /**
     * 影像状态状态
     */
    @ApiModelProperty(value = "影像状态状态", required = false)
    
    @Column(columnDefinition = "影像状态状态")
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
     * 备注
     */
    @ApiModelProperty(value = "备注", required = false)
    
    @Column(columnDefinition = "备注")
    private String remark;
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    
}

