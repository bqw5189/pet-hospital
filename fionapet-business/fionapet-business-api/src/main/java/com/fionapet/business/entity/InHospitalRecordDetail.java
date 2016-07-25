package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 医院记录明细表
 * <p>
* Created by tom on 2016-07-25 09:32:31.
 */
@Entity
@Table(name = "t_in_hospital_record_detail")
@ApiModel("医院记录明细表")
public class InHospitalRecordDetail extends CMSEntity {
    
    /**
     * 医院ID
     */
    @ApiModelProperty(value = "医院ID", required = false)
    
    @Column(columnDefinition = "医院ID")
    private String inHospitalId;
    public String getInHospitalId() {
        return inHospitalId;
    }
    public void setInHospitalId(String inHospitalId) {
        this.inHospitalId = inHospitalId;
    }
    
    /**
     * 医院编号
     */
    @ApiModelProperty(value = "医院编号", required = false)
    
    @Column(columnDefinition = "医院编号")
    private String inHospitalNo;
    public String getInHospitalNo() {
        return inHospitalNo;
    }
    public void setInHospitalNo(String inHospitalNo) {
        this.inHospitalNo = inHospitalNo;
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
     * 整体消费
     */
    @ApiModelProperty(value = "整体消费", required = false)
    
    @Column(columnDefinition = "整体消费")
    private double totalCost;
    public double getTotalCost() {
        return totalCost;
    }
    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }
    
    /**
     * 类型数量
     */
    @ApiModelProperty(value = "类型数量", required = false)
    
    @Column(columnDefinition = "类型数量")
    private double itemNum;
    public double getItemNum() {
        return itemNum;
    }
    public void setItemNum(double itemNum) {
        this.itemNum = itemNum;
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
     * 食用方式
     */
    @ApiModelProperty(value = "食用方式", required = false)
    
    @Column(columnDefinition = "食用方式")
    private String useWay;
    public String getUseWay() {
        return useWay;
    }
    public void setUseWay(String useWay) {
        this.useWay = useWay;
    }
    
    /**
     * 状态
     */
    @ApiModelProperty(value = "状态", required = false)
    
    @Column(columnDefinition = "状态")
    private String itemCountStatus;
    public String getItemCountStatus() {
        return itemCountStatus;
    }
    public void setItemCountStatus(String itemCountStatus) {
        this.itemCountStatus = itemCountStatus;
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
     * 记录时间
     */
    @ApiModelProperty(value = "记录时间", required = false)
    
    @Column(columnDefinition = "记录时间")
    private Date recordTime;
    public Date getRecordTime() {
        return recordTime;
    }
    public void setRecordTime(Date recordTime) {
        this.recordTime = recordTime;
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
    
}

