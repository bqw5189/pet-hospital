package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 医生处方明细
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_medic_prescription_detail")
@ApiModel("医生处方明细")
public class MedicPrescriptionDetail extends CMSEntity {
    
    /**
     * enterpriseNo
     */
    @ApiModelProperty(value = "enterpriseNo", required = false)
    private String enterpriseNo;
    public String getEnterpriseNo() {
        return enterpriseNo;
    }
    public void setEnterpriseNo(String enterpriseNo) {
        this.enterpriseNo = enterpriseNo;
    }
    
    /**
     * prescriptionId
     */
    @ApiModelProperty(value = "prescriptionId", required = false)
    private String prescriptionId;
    public String getPrescriptionId() {
        return prescriptionId;
    }
    public void setPrescriptionId(String prescriptionId) {
        this.prescriptionId = prescriptionId;
    }
    
    /**
     * itemName
     */
    @ApiModelProperty(value = "itemName", required = false)
    private String itemName;
    public String getItemName() {
        return itemName;
    }
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
    
    /**
     * itemCode
     */
    @ApiModelProperty(value = "itemCode", required = false)
    private String itemCode;
    public String getItemCode() {
        return itemCode;
    }
    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }
    
    /**
     * itemCost
     */
    @ApiModelProperty(value = "itemCost", required = false)
    private double itemCost;
    public double getItemCost() {
        return itemCost;
    }
    public void setItemCost(double itemCost) {
        this.itemCost = itemCost;
    }
    
    /**
     * itemNum
     */
    @ApiModelProperty(value = "itemNum", required = false)
    private Integer itemNum;
    public Integer getItemNum() {
        return itemNum;
    }
    public void setItemNum(Integer itemNum) {
        this.itemNum = itemNum;
    }
    
    /**
     * recipeUnit
     */
    @ApiModelProperty(value = "recipeUnit", required = false)
    private String recipeUnit;
    public String getRecipeUnit() {
        return recipeUnit;
    }
    public void setRecipeUnit(String recipeUnit) {
        this.recipeUnit = recipeUnit;
    }
    
    /**
     * useWay
     */
    @ApiModelProperty(value = "useWay", required = false)
    private String useWay;
    public String getUseWay() {
        return useWay;
    }
    public void setUseWay(String useWay) {
        this.useWay = useWay;
    }
    
    /**
     * groupName
     */
    @ApiModelProperty(value = "groupName", required = false)
    private String groupName;
    public String getGroupName() {
        return groupName;
    }
    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }
    
    /**
     * paidStatus
     */
    @ApiModelProperty(value = "paidStatus", required = false)
    private String paidStatus;
    public String getPaidStatus() {
        return paidStatus;
    }
    public void setPaidStatus(String paidStatus) {
        this.paidStatus = paidStatus;
    }
    
    /**
     * paidTime
     */
    @ApiModelProperty(value = "paidTime", required = false)
    private Date paidTime;
    public Date getPaidTime() {
        return paidTime;
    }
    public void setPaidTime(Date paidTime) {
        this.paidTime = paidTime;
    }
    
    /**
     * itemCountStatus
     */
    @ApiModelProperty(value = "itemCountStatus", required = false)
    private String itemCountStatus;
    public String getItemCountStatus() {
        return itemCountStatus;
    }
    public void setItemCountStatus(String itemCountStatus) {
        this.itemCountStatus = itemCountStatus;
    }
    
    /**
     * frequency
     */
    @ApiModelProperty(value = "frequency", required = false)
    private String frequency;
    public String getFrequency() {
        return frequency;
    }
    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }
    
    /**
     * dose
     */
    @ApiModelProperty(value = "dose", required = false)
    private String dose;
    public String getDose() {
        return dose;
    }
    public void setDose(String dose) {
        this.dose = dose;
    }
    
    /**
     * executorId
     */
    @ApiModelProperty(value = "executorId", required = false)
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
    @ApiModelProperty(value = "executorDate", required = false)@NotNull
    private Date executorDate;
    public Date getExecutorDate() {
        return executorDate;
    }
    public void setExecutorDate(Date executorDate) {
        this.executorDate = executorDate;
    }
    
    /**
     * useUnit
     */
    @ApiModelProperty(value = "useUnit", required = false)
    private String useUnit;
    public String getUseUnit() {
        return useUnit;
    }
    public void setUseUnit(String useUnit) {
        this.useUnit = useUnit;
    }
    
}

