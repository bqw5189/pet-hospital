package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 育苗表
 * <p>
* Created by tom on 2016-07-18 11:47:03.
 */
@Entity
@Table(name = "t_medic_vaccine")
@ApiModel("育苗表")
public class MedicVaccine extends CMSEntity {
    
    /**
     * 育苗组编号
     */
    @ApiModelProperty(value = "育苗组编号", required = false)
    
    @Column(columnDefinition = "育苗组编号")
    private String vaccineGroupCode;
    public String getVaccineGroupCode() {
        return vaccineGroupCode;
    }
    public void setVaccineGroupCode(String vaccineGroupCode) {
        this.vaccineGroupCode = vaccineGroupCode;
    }
    
    /**
     * 宠物名称
     */
    @ApiModelProperty(value = "宠物名称", required = false)
    
    @Column(columnDefinition = "宠物名称")
    private String petName;
    public String getPetName() {
        return petName;
    }
    public void setPetName(String petName) {
        this.petName = petName;
    }
    
    /**
     * 宠物主人ID
     */
    @ApiModelProperty(value = "宠物主人ID", required = false)
    
    @Column(columnDefinition = "宠物主人ID")
    private String gestId;
    public String getGestId() {
        return gestId;
    }
    public void setGestId(String gestId) {
        this.gestId = gestId;
    }
    
    /**
     * 宠物主人名称
     */
    @ApiModelProperty(value = "宠物主人名称", required = false)
    
    @Column(columnDefinition = "宠物主人名称")
    private String gestName;
    public String getGestName() {
        return gestName;
    }
    public void setGestName(String gestName) {
        this.gestName = gestName;
    }
    
    /**
     * 宠物主人编号
     */
    @ApiModelProperty(value = "宠物主人编号", required = false)
    
    @Column(columnDefinition = "宠物主人编号")
    private String gestCode;
    public String getGestCode() {
        return gestCode;
    }
    public void setGestCode(String gestCode) {
        this.gestCode = gestCode;
    }
    
    /**
     * 宠物ID
     */
    @ApiModelProperty(value = "宠物ID", required = false)
    
    @Column(columnDefinition = "宠物ID")
    private String petId;
    public String getPetId() {
        return petId;
    }
    public void setPetId(String petId) {
        this.petId = petId;
    }
    
    /**
     * 电话
     */
    @ApiModelProperty(value = "电话", required = false)
    
    @Column(columnDefinition = "电话")
    private String mobilePhone;
    public String getMobilePhone() {
        return mobilePhone;
    }
    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
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
     * 类型价格
     */
    @ApiModelProperty(value = "类型价格", required = false)
    
    @Column(columnDefinition = "类型价格")
    private double itemCost;
    public double getItemCost() {
        return itemCost;
    }
    public void setItemCost(double itemCost) {
        this.itemCost = itemCost;
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
     * 估算时间
     */
    @ApiModelProperty(value = "估算时间", required = false)
    
    @Column(columnDefinition = "估算时间")
    private Date estimateTime;
    public Date getEstimateTime() {
        return estimateTime;
    }
    public void setEstimateTime(Date estimateTime) {
        this.estimateTime = estimateTime;
    }
    
    /**
     * 实际注射时间
     */
    @ApiModelProperty(value = "实际注射时间", required = false)
    
    @Column(columnDefinition = "实际注射时间")
    private Date factShootTime;
    public Date getFactShootTime() {
        return factShootTime;
    }
    public void setFactShootTime(Date factShootTime) {
        this.factShootTime = factShootTime;
    }
    
    /**
     * 注射等级号
     */
    @ApiModelProperty(value = "注射等级号", required = false)
    
    @Column(columnDefinition = "注射等级号")
    private String shootLevelNum;
    public String getShootLevelNum() {
        return shootLevelNum;
    }
    public void setShootLevelNum(String shootLevelNum) {
        this.shootLevelNum = shootLevelNum;
    }
    
    /**
     * 注射过程
     */
    @ApiModelProperty(value = "注射过程", required = false)
    
    @Column(columnDefinition = "注射过程")
    private String shootProcess;
    public String getShootProcess() {
        return shootProcess;
    }
    public void setShootProcess(String shootProcess) {
        this.shootProcess = shootProcess;
    }
    
    /**
     * 间隔天数
     */
    @ApiModelProperty(value = "间隔天数", required = false)
    
    @Column(columnDefinition = "间隔天数")
    private Integer intervalDay;
    public Integer getIntervalDay() {
        return intervalDay;
    }
    public void setIntervalDay(Integer intervalDay) {
        this.intervalDay = intervalDay;
    }
    
    /**
     * 增加类型
     */
    @ApiModelProperty(value = "增加类型", required = false)
    
    @Column(columnDefinition = "增加类型")
    private String addType;
    public String getAddType() {
        return addType;
    }
    public void setAddType(String addType) {
        this.addType = addType;
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
     * 影像时间
     */
    @ApiModelProperty(value = "影像时间", required = false)
    
    @Column(columnDefinition = "影像时间")
    private String paidStatus;
    public String getPaidStatus() {
        return paidStatus;
    }
    public void setPaidStatus(String paidStatus) {
        this.paidStatus = paidStatus;
    }
    
    /**
     * 告诫状态
     */
    @ApiModelProperty(value = "告诫状态", required = false)
    
    @Column(columnDefinition = "告诫状态")
    private String warnStatus;
    public String getWarnStatus() {
        return warnStatus;
    }
    public void setWarnStatus(String warnStatus) {
        this.warnStatus = warnStatus;
    }
    
    /**
     * 注射状态
     */
    @ApiModelProperty(value = "注射状态", required = false)
    
    @Column(columnDefinition = "注射状态")
    private String shootStatus;
    public String getShootStatus() {
        return shootStatus;
    }
    public void setShootStatus(String shootStatus) {
        this.shootStatus = shootStatus;
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
     * 拔出时间
     */
    @ApiModelProperty(value = "拔出时间", required = false)
    
    @Column(columnDefinition = "拔出时间")
    private Date outDateTime;
    public Date getOutDateTime() {
        return outDateTime;
    }
    public void setOutDateTime(Date outDateTime) {
        this.outDateTime = outDateTime;
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
     * 执行者ID
     */
    @ApiModelProperty(value = "执行者ID", required = false)
    
    @Column(columnDefinition = "执行者ID")
    private String executorId;
    public String getExecutorId() {
        return executorId;
    }
    public void setExecutorId(String executorId) {
        this.executorId = executorId;
    }
    
    /**
     * 执行者名称
     */
    @ApiModelProperty(value = "执行者名称", required = false)
    
    @Column(columnDefinition = "执行者名称")
    private String executorName;
    public String getExecutorName() {
        return executorName;
    }
    public void setExecutorName(String executorName) {
        this.executorName = executorName;
    }
    
    /**
     * 医生ID
     */
    @ApiModelProperty(value = "医生ID", required = false)
    
    @Column(columnDefinition = "医生ID")
    private String doctorId;
    public String getDoctorId() {
        return doctorId;
    }
    public void setDoctorId(String doctorId) {
        this.doctorId = doctorId;
    }
    
    /**
     * 医生名称
     */
    @ApiModelProperty(value = "医生名称", required = false)
    
    @Column(columnDefinition = "医生名称")
    private String doctorName;
    public String getDoctorName() {
        return doctorName;
    }
    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }
    
    /**
     * 助理医生ID
     */
    @ApiModelProperty(value = "助理医生ID", required = false)
    
    @Column(columnDefinition = "助理医生ID")
    private String assistantDoctorId;
    public String getAssistantDoctorId() {
        return assistantDoctorId;
    }
    public void setAssistantDoctorId(String assistantDoctorId) {
        this.assistantDoctorId = assistantDoctorId;
    }
    
    /**
     * 助理名称
     */
    @ApiModelProperty(value = "助理名称", required = false)
    
    @Column(columnDefinition = "助理名称")
    private String assistantDoctorName;
    public String getAssistantDoctorName() {
        return assistantDoctorName;
    }
    public void setAssistantDoctorName(String assistantDoctorName) {
        this.assistantDoctorName = assistantDoctorName;
    }
    
    /**
     * 类型号
     */
    @ApiModelProperty(value = "类型号", required = false)
    
    @Column(columnDefinition = "类型号")
    private double itemNum;
    public double getItemNum() {
        return itemNum;
    }
    public void setItemNum(double itemNum) {
        this.itemNum = itemNum;
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
     * 标示
     */
    @ApiModelProperty(value = "标示", required = false)
    
    @Column(columnDefinition = "标示")
    private Integer sign;
    public Integer getSign() {
        return sign;
    }
    public void setSign(Integer sign) {
        this.sign = sign;
    }
    
}

