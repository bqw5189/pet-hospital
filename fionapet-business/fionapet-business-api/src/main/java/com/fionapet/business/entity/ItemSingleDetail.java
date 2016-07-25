package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 类型化验实例明细表
 * <p>
* Created by tom on 2016-07-25 09:32:32.
 */
@Entity
@Table(name = "t_item_single_detail")
@ApiModel("类型化验实例明细表")
public class ItemSingleDetail extends CMSEntity {
    
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
    private String batchCode;
    public String getBatchCode() {
        return batchCode;
    }
    public void setBatchCode(String batchCode) {
        this.batchCode = batchCode;
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
     * VIP折扣
     */
    @ApiModelProperty(value = "VIP折扣", required = false)
    
    @Column(columnDefinition = "VIP折扣")
    private double isVipDiscount;
    public double getIsVipDiscount() {
        return isVipDiscount;
    }
    public void setIsVipDiscount(double isVipDiscount) {
        this.isVipDiscount = isVipDiscount;
    }
    
    /**
     * VIP售价
     */
    @ApiModelProperty(value = "VIP售价", required = false)
    
    @Column(columnDefinition = "VIP售价")
    private double vipSellPrice;
    public double getVipSellPrice() {
        return vipSellPrice;
    }
    public void setVipSellPrice(double vipSellPrice) {
        this.vipSellPrice = vipSellPrice;
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
     * 产品日期
     */
    @ApiModelProperty(value = "产品日期", required = false)
    
    @Column(columnDefinition = "产品日期")
    private Date produceDate;
    public Date getProduceDate() {
        return produceDate;
    }
    public void setProduceDate(Date produceDate) {
        this.produceDate = produceDate;
    }
    
    /**
     * 实际利润
     */
    @ApiModelProperty(value = "实际利润", required = false)
    
    @Column(columnDefinition = "实际利润")
    private String infactProfit;
    public String getInfactProfit() {
        return infactProfit;
    }
    public void setInfactProfit(String infactProfit) {
        this.infactProfit = infactProfit;
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
     * 保质期天数
     */
    @ApiModelProperty(value = "保质期天数", required = false)
    
    @Column(columnDefinition = "保质期天数")
    private Integer keepDays;
    public Integer getKeepDays() {
        return keepDays;
    }
    public void setKeepDays(Integer keepDays) {
        this.keepDays = keepDays;
    }
    
    /**
     * 失效日期
     */
    @ApiModelProperty(value = "失效日期", required = false)
    
    @Column(columnDefinition = "失效日期")
    private Date outDateTime;
    public Date getOutDateTime() {
        return outDateTime;
    }
    public void setOutDateTime(Date outDateTime) {
        this.outDateTime = outDateTime;
    }
    
    /**
     * 销售个数
     */
    @ApiModelProperty(value = "销售个数", required = false)
    
    @Column(columnDefinition = "销售个数")
    private Integer itemSellCount;
    public Integer getItemSellCount() {
        return itemSellCount;
    }
    public void setItemSellCount(Integer itemSellCount) {
        this.itemSellCount = itemSellCount;
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
     * 是否达到标准
     */
    @ApiModelProperty(value = "是否达到标准", required = false)
    
    @Column(columnDefinition = "是否达到标准")
    private Integer isStandardize;
    public Integer getIsStandardize() {
        return isStandardize;
    }
    public void setIsStandardize(Integer isStandardize) {
        this.isStandardize = isStandardize;
    }
    
    /**
     * 经销商编号
     */
    @ApiModelProperty(value = "经销商编号", required = false)
    
    @Column(columnDefinition = "经销商编号")
    private String dealerCode;
    public String getDealerCode() {
        return dealerCode;
    }
    public void setDealerCode(String dealerCode) {
        this.dealerCode = dealerCode;
    }
    
    /**
     * 经销商名称
     */
    @ApiModelProperty(value = "经销商名称", required = false)
    
    @Column(columnDefinition = "经销商名称")
    private String dealerName;
    public String getDealerName() {
        return dealerName;
    }
    public void setDealerName(String dealerName) {
        this.dealerName = dealerName;
    }
    
    /**
     * 销售人
     */
    @ApiModelProperty(value = "销售人", required = false)
    
    @Column(columnDefinition = "销售人")
    private String sellMan;
    public String getSellMan() {
        return sellMan;
    }
    public void setSellMan(String sellMan) {
        this.sellMan = sellMan;
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
    
}

