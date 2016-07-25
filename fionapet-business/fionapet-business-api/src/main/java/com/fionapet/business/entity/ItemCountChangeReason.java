package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 种类数量更改原因表
 * <p>
* Created by tom on 2016-07-25 09:32:30.
 */
@Entity
@Table(name = "t_item_count_change_reason")
@ApiModel("种类数量更改原因表")
public class ItemCountChangeReason extends CMSEntity {
    
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
     * 仓库编号
     */
    @ApiModelProperty(value = "仓库编号", required = false)
    
    @Column(columnDefinition = "仓库编号")
    private String warehouseCode;
    public String getWarehouseCode() {
        return warehouseCode;
    }
    public void setWarehouseCode(String warehouseCode) {
        this.warehouseCode = warehouseCode;
    }
    
    /**
     * 仓库名称
     */
    @ApiModelProperty(value = "仓库名称", required = false)
    
    @Column(columnDefinition = "仓库名称")
    private String warehouseName;
    public String getWarehouseName() {
        return warehouseName;
    }
    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }
    
    /**
     * 资源数量
     */
    @ApiModelProperty(value = "资源数量", required = false)
    
    @Column(columnDefinition = "资源数量")
    private double sourceCount;
    public double getSourceCount() {
        return sourceCount;
    }
    public void setSourceCount(double sourceCount) {
        this.sourceCount = sourceCount;
    }
    
    /**
     * 新数量
     */
    @ApiModelProperty(value = "新数量", required = false)
    
    @Column(columnDefinition = "新数量")
    private double newCount;
    public double getNewCount() {
        return newCount;
    }
    public void setNewCount(double newCount) {
        this.newCount = newCount;
    }
    
    /**
     * 原洒落数量
     */
    @ApiModelProperty(value = "原洒落数量", required = false)
    
    @Column(columnDefinition = "原洒落数量")
    private double sourceScatteredCount;
    public double getSourceScatteredCount() {
        return sourceScatteredCount;
    }
    public void setSourceScatteredCount(double sourceScatteredCount) {
        this.sourceScatteredCount = sourceScatteredCount;
    }
    
    /**
     * 新洒落数量
     */
    @ApiModelProperty(value = "新洒落数量", required = false)
    
    @Column(columnDefinition = "新洒落数量")
    private double newScatteredCount;
    public double getNewScatteredCount() {
        return newScatteredCount;
    }
    public void setNewScatteredCount(double newScatteredCount) {
        this.newScatteredCount = newScatteredCount;
    }
    
    /**
     * 更新原因
     */
    @ApiModelProperty(value = "更新原因", required = false)
    
    @Column(columnDefinition = "更新原因")
    private String changeReason;
    public String getChangeReason() {
        return changeReason;
    }
    public void setChangeReason(String changeReason) {
        this.changeReason = changeReason;
    }
    
    /**
     * 原批数量
     */
    @ApiModelProperty(value = "原批数量", required = false)
    
    @Column(columnDefinition = "原批数量")
    private String sourceBatchNumber;
    public String getSourceBatchNumber() {
        return sourceBatchNumber;
    }
    public void setSourceBatchNumber(String sourceBatchNumber) {
        this.sourceBatchNumber = sourceBatchNumber;
    }
    
    /**
     * 新批数量
     */
    @ApiModelProperty(value = "新批数量", required = false)
    
    @Column(columnDefinition = "新批数量")
    private String newBatchNumber;
    public String getNewBatchNumber() {
        return newBatchNumber;
    }
    public void setNewBatchNumber(String newBatchNumber) {
        this.newBatchNumber = newBatchNumber;
    }
    
    /**
     * 原移除时间
     */
    @ApiModelProperty(value = "原移除时间", required = false)
    
    @Column(columnDefinition = "原移除时间")
    private Date sourceOutDateTime;
    public Date getSourceOutDateTime() {
        return sourceOutDateTime;
    }
    public void setSourceOutDateTime(Date sourceOutDateTime) {
        this.sourceOutDateTime = sourceOutDateTime;
    }
    
    /**
     * 新移除时间
     */
    @ApiModelProperty(value = "新移除时间", required = false)
    
    @Column(columnDefinition = "新移除时间")
    private Date newOutDateTime;
    public Date getNewOutDateTime() {
        return newOutDateTime;
    }
    public void setNewOutDateTime(Date newOutDateTime) {
        this.newOutDateTime = newOutDateTime;
    }
    
    /**
     * 类型数量ID
     */
    @ApiModelProperty(value = "类型数量ID", required = false)
    
    @Column(columnDefinition = "类型数量ID")
    private String itemCountId;
    public String getItemCountId() {
        return itemCountId;
    }
    public void setItemCountId(String itemCountId) {
        this.itemCountId = itemCountId;
    }
    
}

