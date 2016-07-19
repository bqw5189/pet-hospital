package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 移库记录明细
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_warehouse_moverecord_detail")
@ApiModel("移库记录明细")
public class WarehouseMoverecordDetail extends CMSEntity {
    
    /**
     * 移库编号
     */
    @ApiModelProperty(value = "移库编号", required = false)
    
    @Column(columnDefinition = "移库编号")
    private String outWarehouseCode;
    public String getOutWarehouseCode() {
        return outWarehouseCode;
    }
    public void setOutWarehouseCode(String outWarehouseCode) {
        this.outWarehouseCode = outWarehouseCode;
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
     * 进货价格
     */
    @ApiModelProperty(value = "进货价格", required = false)
    
    @Column(columnDefinition = "进货价格")
    private double inputPrice;
    public double getInputPrice() {
        return inputPrice;
    }
    public void setInputPrice(double inputPrice) {
        this.inputPrice = inputPrice;
    }
    
    /**
     * 药品形状
     */
    @ApiModelProperty(value = "药品形状", required = false)
    
    @Column(columnDefinition = "药品形状")
    private String drugForm;
    public String getDrugForm() {
        return drugForm;
    }
    public void setDrugForm(String drugForm) {
        this.drugForm = drugForm;
    }
    
    /**
     * 商品服务种类
     */
    @ApiModelProperty(value = "商品服务种类", required = false)
    
    @Column(columnDefinition = "商品服务种类")
    private String itemStyle;
    public String getItemStyle() {
        return itemStyle;
    }
    public void setItemStyle(String itemStyle) {
        this.itemStyle = itemStyle;
    }
    
    /**
     * 卖价售价
     */
    @ApiModelProperty(value = "卖价售价", required = false)
    
    @Column(columnDefinition = "卖价售价")
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
     * 进价
     */
    @ApiModelProperty(value = "进价", required = false)
    
    @Column(columnDefinition = "进价")
    private double inputCost;
    public double getInputCost() {
        return inputCost;
    }
    public void setInputCost(double inputCost) {
        this.inputCost = inputCost;
    }
    
    /**
     * 生产日期
     */
    @ApiModelProperty(value = "生产日期", required = false)
    
    @Column(columnDefinition = "生产日期")
    private Date produceDate;
    public Date getProduceDate() {
        return produceDate;
    }
    public void setProduceDate(Date produceDate) {
        this.produceDate = produceDate;
    }
    
    /**
     * 进货日期
     */
    @ApiModelProperty(value = "进货日期", required = false)
    
    @Column(columnDefinition = "进货日期")
    private Date inputDate;
    public Date getInputDate() {
        return inputDate;
    }
    public void setInputDate(Date inputDate) {
        this.inputDate = inputDate;
    }
    
    /**
     * 过期时间
     */
    @ApiModelProperty(value = "过期时间", required = false)
    
    @Column(columnDefinition = "过期时间")
    private Date outDateTime;
    public Date getOutDateTime() {
        return outDateTime;
    }
    public void setOutDateTime(Date outDateTime) {
        this.outDateTime = outDateTime;
    }
    
    /**
     * 保质期天数
     */
    @ApiModelProperty(value = "保质期天数", required = false)
    
    @Column(columnDefinition = "保质期天数")
    private Integer safeDay;
    public Integer getSafeDay() {
        return safeDay;
    }
    public void setSafeDay(Integer safeDay) {
        this.safeDay = safeDay;
    }
    
    /**
     * 仓库上限
     */
    @ApiModelProperty(value = "仓库上限", required = false)
    
    @Column(columnDefinition = "仓库上限")
    private Integer wareUpLimit;
    public Integer getWareUpLimit() {
        return wareUpLimit;
    }
    public void setWareUpLimit(Integer wareUpLimit) {
        this.wareUpLimit = wareUpLimit;
    }
    
    /**
     * 仓库下限
     */
    @ApiModelProperty(value = "仓库下限", required = false)
    
    @Column(columnDefinition = "仓库下限")
    private Integer wareDownLimit;
    public Integer getWareDownLimit() {
        return wareDownLimit;
    }
    public void setWareDownLimit(Integer wareDownLimit) {
        this.wareDownLimit = wareDownLimit;
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
    
    /**
     * 批次编号
     */
    @ApiModelProperty(value = "批次编号", required = false)
    
    @Column(columnDefinition = "批次编号")
    private String batchNumber;
    public String getBatchNumber() {
        return batchNumber;
    }
    public void setBatchNumber(String batchNumber) {
        this.batchNumber = batchNumber;
    }
    
    /**
     * 生产者编号
     */
    @ApiModelProperty(value = "生产者编号", required = false)
    
    @Column(columnDefinition = "生产者编号")
    private String manufacturerCode;
    public String getManufacturerCode() {
        return manufacturerCode;
    }
    public void setManufacturerCode(String manufacturerCode) {
        this.manufacturerCode = manufacturerCode;
    }
    
    /**
     * 生产者名称
     */
    @ApiModelProperty(value = "生产者名称", required = false)
    
    @Column(columnDefinition = "生产者名称")
    private String manufacturerName;
    public String getManufacturerName() {
        return manufacturerName;
    }
    public void setManufacturerName(String manufacturerName) {
        this.manufacturerName = manufacturerName;
    }
    
}

