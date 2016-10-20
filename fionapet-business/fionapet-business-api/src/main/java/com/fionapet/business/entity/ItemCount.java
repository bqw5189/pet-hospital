package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

/**
 * 商品库存数量 汇总
 * <p>
* Created by tom on 2016-07-25 09:32:32.
 */
@Entity
@Table(name = "t_item_count")
@ApiModel("种类数量更改原因表")
public class ItemCount extends CMSEntity {
    
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
     * vip折扣
     */
    @ApiModelProperty(value = "vip折扣", required = false)
    
    @Column(columnDefinition = "vip折扣")
    private String isVipDiscount;
    public String getIsVipDiscount() {
        return isVipDiscount;
    }
    public void setIsVipDiscount(String isVipDiscount) {
        this.isVipDiscount = isVipDiscount;
    }
    
    /**
     * VIP价格
     */
    @ApiModelProperty(value = "VIP价格", required = false)
    
    @Column(columnDefinition = "VIP价格")
    private double vipSellPrice;
    public double getVipSellPrice() {
        return vipSellPrice;
    }
    public void setVipSellPrice(double vipSellPrice) {
        this.vipSellPrice = vipSellPrice;
    }
    
    /**
     * 类型数量
     */
    @ApiModelProperty(value = "类型数量", required = false)
    
    @Column(columnDefinition = "类型数量")
    private double itemCountNum;
    public double getItemCountNum() {
        return itemCountNum;
    }
    public void setItemCountNum(double itemCountNum) {
        this.itemCountNum = itemCountNum;
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
     * 经销商编号
     */
    @ApiModelProperty(value = "经销商编号", required = false)
    
    @Column(columnDefinition = "经销商编号")
    private String manufacturerCode;
    public String getManufacturerCode() {
        return manufacturerCode;
    }
    public void setManufacturerCode(String manufacturerCode) {
        this.manufacturerCode = manufacturerCode;
    }
    
    /**
     * 经销商名称
     */
    @ApiModelProperty(value = "经销商名称", required = false)
    
    @Column(columnDefinition = "经销商名称")
    private String manufacturerName;
    public String getManufacturerName() {
        return manufacturerName;
    }
    public void setManufacturerName(String manufacturerName) {
        this.manufacturerName = manufacturerName;
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
    
}

