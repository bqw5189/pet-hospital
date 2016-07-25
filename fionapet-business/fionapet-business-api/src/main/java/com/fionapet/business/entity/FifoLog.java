package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 进库出库日志
 * <p>
* Created by tom on 2016-07-25 09:32:31.
 */
@Entity
@Table(name = "t_fifo_log")
@ApiModel("进库出库日志")
public class FifoLog extends CMSEntity {
    
    /**
     * 类型
     */
    @ApiModelProperty(value = "类型", required = false)
    
    @Column(columnDefinition = "类型")
    private String type;
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    
    /**
     * 单号
     */
    @ApiModelProperty(value = "单号", required = false)
    
    @Column(columnDefinition = "单号")
    private String billCode;
    public String getBillCode() {
        return billCode;
    }
    public void setBillCode(String billCode) {
        this.billCode = billCode;
    }
    
    /**
     * 明细ID
     */
    @ApiModelProperty(value = "明细ID", required = false)
    
    @Column(columnDefinition = "明细ID")
    private String detailId;
    public String getDetailId() {
        return detailId;
    }
    public void setDetailId(String detailId) {
        this.detailId = detailId;
    }
    
    /**
     * 仓库ID
     */
    @ApiModelProperty(value = "仓库ID", required = false)
    
    @Column(columnDefinition = "仓库ID")
    private String warehouseId;
    public String getWarehouseId() {
        return warehouseId;
    }
    public void setWarehouseId(String warehouseId) {
        this.warehouseId = warehouseId;
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
     * 批次号
     */
    @ApiModelProperty(value = "批次号", required = false)
    
    @Column(columnDefinition = "批次号")
    private String batchNumber;
    public String getBatchNumber() {
        return batchNumber;
    }
    public void setBatchNumber(String batchNumber) {
        this.batchNumber = batchNumber;
    }
    
    /**
     * 出库时间
     */
    @ApiModelProperty(value = "出库时间", required = false)
    
    @Column(columnDefinition = "出库时间")
    private Date outDateTime;
    public Date getOutDateTime() {
        return outDateTime;
    }
    public void setOutDateTime(Date outDateTime) {
        this.outDateTime = outDateTime;
    }
    
    /**
     * 个数
     */
    @ApiModelProperty(value = "个数", required = false)
    
    @Column(columnDefinition = "个数")
    private double itemCountNum;
    public double getItemCountNum() {
        return itemCountNum;
    }
    public void setItemCountNum(double itemCountNum) {
        this.itemCountNum = itemCountNum;
    }
    
    /**
     * 标签
     */
    @ApiModelProperty(value = "标签", required = false)
    
    @Column(columnDefinition = "标签")
    private Integer sign;
    public Integer getSign() {
        return sign;
    }
    public void setSign(Integer sign) {
        this.sign = sign;
    }
    
    /**
     * 时间
     */
    @ApiModelProperty(value = "时间", required = false)
    
    @Column(columnDefinition = "时间")
    private Date createdOn;
    public Date getCreatedOn() {
        return createdOn;
    }
    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
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
     * 进价
     */
    @ApiModelProperty(value = "进价", required = false)
    
    @Column(columnDefinition = "进价")
    private double inputPrice;
    public double getInputPrice() {
        return inputPrice;
    }
    public void setInputPrice(double inputPrice) {
        this.inputPrice = inputPrice;
    }
    
}

