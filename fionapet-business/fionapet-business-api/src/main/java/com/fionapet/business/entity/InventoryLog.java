package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 存货清单日志表
 * <p>
* Created by tom on 2016-07-25 09:32:30.
 */
@Entity
@Table(name = "t_inventory_log")
@ApiModel("存货清单日志表")
public class InventoryLog extends CMSEntity {
    
    /**
     * 存货清单编号
     */
    @ApiModelProperty(value = "存货清单编号", required = false)
    
    @Column(columnDefinition = "存货清单编号")
    private String inventoryCode;
    public String getInventoryCode() {
        return inventoryCode;
    }
    public void setInventoryCode(String inventoryCode) {
        this.inventoryCode = inventoryCode;
    }
    
    /**
     * 存货清单
     */
    @ApiModelProperty(value = "存货清单", required = false)
    
    @Column(columnDefinition = "存货清单")
    private String inventory;
    public String getInventory() {
        return inventory;
    }
    public void setInventory(String inventory) {
        this.inventory = inventory;
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
     * 类型统计个数
     */
    @ApiModelProperty(value = "类型统计个数", required = false)
    
    @Column(columnDefinition = "类型统计个数")
    private String itemCountNum;
    public String getItemCountNum() {
        return itemCountNum;
    }
    public void setItemCountNum(String itemCountNum) {
        this.itemCountNum = itemCountNum;
    }
    
    /**
     * 散装数量
     */
    @ApiModelProperty(value = "散装数量", required = false)
    
    @Column(columnDefinition = "散装数量")
    private String scatteredCountNum;
    public String getScatteredCountNum() {
        return scatteredCountNum;
    }
    public void setScatteredCountNum(String scatteredCountNum) {
        this.scatteredCountNum = scatteredCountNum;
    }
    
}

