package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 医生处方明细
 * <p>
* Created by tom on 2016-07-18 15:56:23.
 */
@Entity
@Table(name = "t_medic_prescription_detail")
@ApiModel("医生处方明细")
public class MedicPrescriptionDetail extends CMSEntity {
    
    /**
     * 企业编号
     */
    @ApiModelProperty(value = "企业编号", required = false)
    
    @Column(columnDefinition = "企业编号")
    private String enterpriseNo;
    public String getEnterpriseNo() {
        return enterpriseNo;
    }
    public void setEnterpriseNo(String enterpriseNo) {
        this.enterpriseNo = enterpriseNo;
    }
    
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
     * 类别名称
     */
    @ApiModelProperty(value = "类别名称", required = false)
    
    @Column(columnDefinition = "类别名称")
    private String itemName;
    public String getItemName() {
        return itemName;
    }
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
    
    /**
     * 类别编号
     */
    @ApiModelProperty(value = "类别编号", required = false)
    
    @Column(columnDefinition = "类别编号")
    private String itemCode;
    public String getItemCode() {
        return itemCode;
    }
    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }
    
    /**
     * 费用
     */
    @ApiModelProperty(value = "费用", required = false)
    
    @Column(columnDefinition = "费用")
    private double itemCost;
    public double getItemCost() {
        return itemCost;
    }
    public void setItemCost(double itemCost) {
        this.itemCost = itemCost;
    }
    
    /**
     * 数量
     */
    @ApiModelProperty(value = "数量", required = false)
    
    @Column(columnDefinition = "数量")
    private Integer itemNum;
    public Integer getItemNum() {
        return itemNum;
    }
    public void setItemNum(Integer itemNum) {
        this.itemNum = itemNum;
    }
    
    /**
     * 处方单位
     */
    @ApiModelProperty(value = "处方单位", required = false)
    
    @Column(columnDefinition = "处方单位")
    private String recipeUnit;
    public String getRecipeUnit() {
        return recipeUnit;
    }
    public void setRecipeUnit(String recipeUnit) {
        this.recipeUnit = recipeUnit;
    }
    
    /**
     * 使用方式
     */
    @ApiModelProperty(value = "使用方式", required = false)
    
    @Column(columnDefinition = "使用方式")
    private String useWay;
    public String getUseWay() {
        return useWay;
    }
    public void setUseWay(String useWay) {
        this.useWay = useWay;
    }
    
    /**
     * 组名
     */
    @ApiModelProperty(value = "组名", required = false)
    
    @Column(columnDefinition = "组名")
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
     * 剂量
     */
    @ApiModelProperty(value = "剂量", required = false)
    
    @Column(columnDefinition = "剂量")
    private String dose;
    public String getDose() {
        return dose;
    }
    public void setDose(String dose) {
        this.dose = dose;
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
     * executorDate
     */
    @ApiModelProperty(value = "executorDate", required = false)
    
    @Column(columnDefinition = "executorDate")
    private Date executorDate;
    public Date getExecutorDate() {
        return executorDate;
    }
    public void setExecutorDate(Date executorDate) {
        this.executorDate = executorDate;
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

