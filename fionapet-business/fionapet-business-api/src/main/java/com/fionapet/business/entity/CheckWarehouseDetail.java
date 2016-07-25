package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 检查仓库明细表
 * <p>
* Created by tom on 2016-07-25 09:32:33.
 */
@Entity
@Table(name = "t_check_warehouse_detail")
@ApiModel("检查仓库明细表")
public class CheckWarehouseDetail extends CMSEntity {
    
    /**
     * 类型统计ID
     */
    @ApiModelProperty(value = "类型统计ID", required = false)
    
    @Column(columnDefinition = "类型统计ID")
    private String itemCountId;
    public String getItemCountId() {
        return itemCountId;
    }
    public void setItemCountId(String itemCountId) {
        this.itemCountId = itemCountId;
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
     * 散装数量
     */
    @ApiModelProperty(value = "散装数量", required = false)
    
    @Column(columnDefinition = "散装数量")
    private double scatteredCountNum;
    public double getScatteredCountNum() {
        return scatteredCountNum;
    }
    public void setScatteredCountNum(double scatteredCountNum) {
        this.scatteredCountNum = scatteredCountNum;
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
     * 食谱单位
     */
    @ApiModelProperty(value = "食谱单位", required = false)
    
    @Column(columnDefinition = "食谱单位")
    private String recipeUnit;
    public String getRecipeUnit() {
        return recipeUnit;
    }
    public void setRecipeUnit(String recipeUnit) {
        this.recipeUnit = recipeUnit;
    }
    
    /**
     * 批次数
     */
    @ApiModelProperty(value = "批次数", required = false)
    
    @Column(columnDefinition = "批次数")
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
     * 上次类型数量
     */
    @ApiModelProperty(value = "上次类型数量", required = false)
    
    @Column(columnDefinition = "上次类型数量")
    private double oldItemCountNum;
    public double getOldItemCountNum() {
        return oldItemCountNum;
    }
    public void setOldItemCountNum(double oldItemCountNum) {
        this.oldItemCountNum = oldItemCountNum;
    }
    
    /**
     * 上次散装数量
     */
    @ApiModelProperty(value = "上次散装数量", required = false)
    
    @Column(columnDefinition = "上次散装数量")
    private double oldScatteredCountNum;
    public double getOldScatteredCountNum() {
        return oldScatteredCountNum;
    }
    public void setOldScatteredCountNum(double oldScatteredCountNum) {
        this.oldScatteredCountNum = oldScatteredCountNum;
    }
    
    /**
     * 上次出库时间
     */
    @ApiModelProperty(value = "上次出库时间", required = false)
    
    @Column(columnDefinition = "上次出库时间")
    private Date oldOutDateTime;
    public Date getOldOutDateTime() {
        return oldOutDateTime;
    }
    public void setOldOutDateTime(Date oldOutDateTime) {
        this.oldOutDateTime = oldOutDateTime;
    }
    
    /**
     * 说明
     */
    @ApiModelProperty(value = "说明", required = false)
    
    @Column(columnDefinition = "说明")
    private String remark;
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    
    /**
     * 仓库ID
     */
    @ApiModelProperty(value = "仓库ID", required = false)
    
    @Column(columnDefinition = "仓库ID")
    private Integer warehouseId;
    public Integer getWarehouseId() {
        return warehouseId;
    }
    public void setWarehouseId(Integer warehouseId) {
        this.warehouseId = warehouseId;
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
     * 检查数量
     */
    @ApiModelProperty(value = "检查数量", required = false)
    
    @Column(columnDefinition = "检查数量")
    private String checkNumber;
    public String getCheckNumber() {
        return checkNumber;
    }
    public void setCheckNumber(String checkNumber) {
        this.checkNumber = checkNumber;
    }
    
}

