package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 返回商品明细
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_return_commodity_detail")
@ApiModel("返回商品明细")
public class ReturnCommodityDetail extends CMSEntity {
    
    /**
     * rcId
     */
    @ApiModelProperty(value = "rcId", required = false)
    
    @Column(columnDefinition = "rcId")
    private String rcId;
    public String getRcId() {
        return rcId;
    }
    public void setRcId(String rcId) {
        this.rcId = rcId;
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
     * 销售细节ID
     */
    @ApiModelProperty(value = "销售细节ID", required = false)
    
    @Column(columnDefinition = "销售细节ID")
    private String sellDetailId;
    public String getSellDetailId() {
        return sellDetailId;
    }
    public void setSellDetailId(String sellDetailId) {
        this.sellDetailId = sellDetailId;
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
     * 生产编号
     */
    @ApiModelProperty(value = "生产编号", required = false)
    
    @Column(columnDefinition = "生产编号")
    private String manufacturerCode;
    public String getManufacturerCode() {
        return manufacturerCode;
    }
    public void setManufacturerCode(String manufacturerCode) {
        this.manufacturerCode = manufacturerCode;
    }
    
    /**
     * 生产名称
     */
    @ApiModelProperty(value = "生产名称", required = false)
    
    @Column(columnDefinition = "生产名称")
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
     * 出售日期
     */
    @ApiModelProperty(value = "出售日期", required = false)
    
    @Column(columnDefinition = "出售日期")
    private Date outDateTime;
    public Date getOutDateTime() {
        return outDateTime;
    }
    public void setOutDateTime(Date outDateTime) {
        this.outDateTime = outDateTime;
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
     * 实际付费
     */
    @ApiModelProperty(value = "实际付费", required = false)
    
    @Column(columnDefinition = "实际付费")
    private double realPay;
    public double getRealPay() {
        return realPay;
    }
    public void setRealPay(double realPay) {
        this.realPay = realPay;
    }
    
    /**
     * 销售个数
     */
    @ApiModelProperty(value = "销售个数", required = false)
    
    @Column(columnDefinition = "销售个数")
    private Integer sellCountNum;
    public Integer getSellCountNum() {
        return sellCountNum;
    }
    public void setSellCountNum(Integer sellCountNum) {
        this.sellCountNum = sellCountNum;
    }
    
    /**
     * 返回价格
     */
    @ApiModelProperty(value = "返回价格", required = false)
    
    @Column(columnDefinition = "返回价格")
    private double returnPrice;
    public double getReturnPrice() {
        return returnPrice;
    }
    public void setReturnPrice(double returnPrice) {
        this.returnPrice = returnPrice;
    }
    
    /**
     * 返回数量
     */
    @ApiModelProperty(value = "返回数量", required = false)
    
    @Column(columnDefinition = "返回数量")
    private double returnCountNum;
    public double getReturnCountNum() {
        return returnCountNum;
    }
    public void setReturnCountNum(double returnCountNum) {
        this.returnCountNum = returnCountNum;
    }
    
    /**
     * 总价格
     */
    @ApiModelProperty(value = "总价格", required = false)
    
    @Column(columnDefinition = "总价格")
    private double returnTotalCost;
    public double getReturnTotalCost() {
        return returnTotalCost;
    }
    public void setReturnTotalCost(double returnTotalCost) {
        this.returnTotalCost = returnTotalCost;
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
     * 影像名称
     */
    @ApiModelProperty(value = "影像名称", required = false)
    
    @Column(columnDefinition = "影像名称")
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

