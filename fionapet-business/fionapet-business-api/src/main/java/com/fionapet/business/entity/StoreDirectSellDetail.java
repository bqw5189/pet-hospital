package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 仓库直销明细
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_store_direct_sell_detail")
@ApiModel("仓库直销明细")
public class StoreDirectSellDetail extends CMSEntity {
    
    /**
     * 直销id
     */
    @ApiModelProperty(value = "直销id", required = false)
    
    @Column(columnDefinition = "直销id")
    private String directSellId;
    public String getDirectSellId() {
        return directSellId;
    }
    public void setDirectSellId(String directSellId) {
        this.directSellId = directSellId;
    }
    
    /**
     * 直销编号
     */
    @ApiModelProperty(value = "直销编号", required = false)
    
    @Column(columnDefinition = "直销编号")
    private String directSellCode;
    public String getDirectSellCode() {
        return directSellCode;
    }
    public void setDirectSellCode(String directSellCode) {
        this.directSellCode = directSellCode;
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
     * 业务类型ID
     */
    @ApiModelProperty(value = "业务类型ID", required = false)
    
    @Column(columnDefinition = "业务类型ID")
    private String busiTypeId;
    public String getBusiTypeId() {
        return busiTypeId;
    }
    public void setBusiTypeId(String busiTypeId) {
        this.busiTypeId = busiTypeId;
    }
    
    /**
     * 销售价格
     */
    @ApiModelProperty(value = "销售价格", required = false)
    
    @Column(columnDefinition = "销售价格")
    private double sellPrice;
    public double getSellPrice() {
        return sellPrice;
    }
    public void setSellPrice(double sellPrice) {
        this.sellPrice = sellPrice;
    }
    
    /**
     * 销售单元
     */
    @ApiModelProperty(value = "销售单元", required = false)
    
    @Column(columnDefinition = "销售单元")
    private String sellUnit;
    public String getSellUnit() {
        return sellUnit;
    }
    public void setSellUnit(String sellUnit) {
        this.sellUnit = sellUnit;
    }
    
    /**
     * 个数
     */
    @ApiModelProperty(value = "个数", required = false)
    
    @Column(columnDefinition = "个数")
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
     * 销售内容
     */
    @ApiModelProperty(value = "销售内容", required = false)
    
    @Column(columnDefinition = "销售内容")
    private String sellContent;
    public String getSellContent() {
        return sellContent;
    }
    public void setSellContent(String sellContent) {
        this.sellContent = sellContent;
    }
    
    /**
     * 是否批量
     */
    @ApiModelProperty(value = "是否批量", required = false)
    
    @Column(columnDefinition = "是否批量")
    private String isBulk;
    public String getIsBulk() {
        return isBulk;
    }
    public void setIsBulk(String isBulk) {
        this.isBulk = isBulk;
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

