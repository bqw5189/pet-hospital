package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 处方明细
 * <p>
* Created by tom on 2016-07-18 15:56:23.
 */
@Entity
@Table(name = "t_base_medic_prescription_detail")
@ApiModel("处方明细")
public class BaseMedicPrescriptionDetail extends CMSEntity {
    
    /**
     * 处方ID
     */
    @ApiModelProperty(value = "处方ID", required = false)
    
    @Column(columnDefinition = "处方ID")
    private String prescriptionId;
    public String getPrescriptionId() {
        return prescriptionId;
    }
    public void setPrescriptionId(String prescriptionId) {
        this.prescriptionId = prescriptionId;
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
     * 类型费用
     */
    @ApiModelProperty(value = "类型费用", required = false)
    
    @Column(columnDefinition = "类型费用")
    private double itemCost;
    public double getItemCost() {
        return itemCost;
    }
    public void setItemCost(double itemCost) {
        this.itemCost = itemCost;
    }
    
    /**
     * 类型数量
     */
    @ApiModelProperty(value = "类型数量", required = false)
    
    @Column(columnDefinition = "类型数量")
    private Integer itemNum;
    public Integer getItemNum() {
        return itemNum;
    }
    public void setItemNum(Integer itemNum) {
        this.itemNum = itemNum;
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
     * 组名称
     */
    @ApiModelProperty(value = "组名称", required = false)
    
    @Column(columnDefinition = "组名称")
    private String groupName;
    public String getGroupName() {
        return groupName;
    }
    public void setGroupName(String groupName) {
        this.groupName = groupName;
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
     * 类型状态
     */
    @ApiModelProperty(value = "类型状态", required = false)
    
    @Column(columnDefinition = "类型状态")
    private String itemCountStatus;
    public String getItemCountStatus() {
        return itemCountStatus;
    }
    public void setItemCountStatus(String itemCountStatus) {
        this.itemCountStatus = itemCountStatus;
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
     * 执行ID
     */
    @ApiModelProperty(value = "执行ID", required = false)
    
    @Column(columnDefinition = "执行ID")
    private String executorId;
    public String getExecutorId() {
        return executorId;
    }
    public void setExecutorId(String executorId) {
        this.executorId = executorId;
    }
    
    /**
     * 执行名称
     */
    @ApiModelProperty(value = "执行名称", required = false)
    
    @Column(columnDefinition = "执行名称")
    private String executorName;
    public String getExecutorName() {
        return executorName;
    }
    public void setExecutorName(String executorName) {
        this.executorName = executorName;
    }
    
    /**
     * 发生率
     */
    @ApiModelProperty(value = "发生率", required = false)
    
    @Column(columnDefinition = "发生率")
    private String frequency;
    public String getFrequency() {
        return frequency;
    }
    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }
    
    /**
     * 一次剂量
     */
    @ApiModelProperty(value = "一次剂量", required = false)
    
    @Column(columnDefinition = "一次剂量")
    private String dose;
    public String getDose() {
        return dose;
    }
    public void setDose(String dose) {
        this.dose = dose;
    }
    
    /**
     * 使用单位
     */
    @ApiModelProperty(value = "使用单位", required = false)
    
    @Column(columnDefinition = "使用单位")
    private String useUnit;
    public String getUseUnit() {
        return useUnit;
    }
    public void setUseUnit(String useUnit) {
        this.useUnit = useUnit;
    }
    
}

