package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 医院记录表
 * <p>
* Created by tom on 2016-07-25 09:32:32.
 */
@Entity
@Table(name = "t_in_hospital_record")
@ApiModel("医院记录表")
public class InHospitalRecord extends CMSEntity {
    
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
     * 顾客ID
     */
    @ApiModelProperty(value = "顾客ID", required = false)
    
    @Column(columnDefinition = "顾客ID")
    private String gestId;
    public String getGestId() {
        return gestId;
    }
    public void setGestId(String gestId) {
        this.gestId = gestId;
    }
    
    /**
     * 顾客编号
     */
    @ApiModelProperty(value = "顾客编号", required = false)
    
    @Column(columnDefinition = "顾客编号")
    private String gestCode;
    public String getGestCode() {
        return gestCode;
    }
    public void setGestCode(String gestCode) {
        this.gestCode = gestCode;
    }
    
    /**
     * 顾客名称
     */
    @ApiModelProperty(value = "顾客名称", required = false)
    
    @Column(columnDefinition = "顾客名称")
    private String gestName;
    public String getGestName() {
        return gestName;
    }
    public void setGestName(String gestName) {
        this.gestName = gestName;
    }
    
    /**
     * VIP编号
     */
    @ApiModelProperty(value = "VIP编号", required = false)
    
    @Column(columnDefinition = "VIP编号")
    private double vipNo;
    public double getVipNo() {
        return vipNo;
    }
    public void setVipNo(double vipNo) {
        this.vipNo = vipNo;
    }
    
    /**
     * 手机
     */
    @ApiModelProperty(value = "手机", required = false)
    
    @Column(columnDefinition = "手机")
    private String mobilePhone;
    public String getMobilePhone() {
        return mobilePhone;
    }
    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
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
     * 起始时间
     */
    @ApiModelProperty(value = "起始时间", required = false)
    
    @Column(columnDefinition = "起始时间")
    private Date startTime;
    public Date getStartTime() {
        return startTime;
    }
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }
    
    /**
     * 结束时间
     */
    @ApiModelProperty(value = "结束时间", required = false)
    
    @Column(columnDefinition = "结束时间")
    private Date endTime;
    public Date getEndTime() {
        return endTime;
    }
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
    
    /**
     * 收款
     */
    @ApiModelProperty(value = "收款", required = false)
    
    @Column(columnDefinition = "收款")
    private double inputMoney;
    public double getInputMoney() {
        return inputMoney;
    }
    public void setInputMoney(double inputMoney) {
        this.inputMoney = inputMoney;
    }
    
    /**
     * 预约时间
     */
    @ApiModelProperty(value = "预约时间", required = false)
    
    @Column(columnDefinition = "预约时间")
    private Integer preDays;
    public Integer getPreDays() {
        return preDays;
    }
    public void setPreDays(Integer preDays) {
        this.preDays = preDays;
    }
    
    /**
     * 实际时间
     */
    @ApiModelProperty(value = "实际时间", required = false)
    
    @Column(columnDefinition = "实际时间")
    private Integer realDays;
    public Integer getRealDays() {
        return realDays;
    }
    public void setRealDays(Integer realDays) {
        this.realDays = realDays;
    }
    
    /**
     * 笼子编号
     */
    @ApiModelProperty(value = "笼子编号", required = false)
    
    @Column(columnDefinition = "笼子编号")
    private String cageNo;
    public String getCageNo() {
        return cageNo;
    }
    public void setCageNo(String cageNo) {
        this.cageNo = cageNo;
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
     * 价格
     */
    @ApiModelProperty(value = "价格", required = false)
    
    @Column(columnDefinition = "价格")
    private double price;
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    
    /**
     * 实际价格
     */
    @ApiModelProperty(value = "实际价格", required = false)
    
    @Column(columnDefinition = "实际价格")
    private double realPrice;
    public double getRealPrice() {
        return realPrice;
    }
    public void setRealPrice(double realPrice) {
        this.realPrice = realPrice;
    }
    
    /**
     * 总价
     */
    @ApiModelProperty(value = "总价", required = false)
    
    @Column(columnDefinition = "总价")
    private double totalMoney;
    public double getTotalMoney() {
        return totalMoney;
    }
    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
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
     * managerBy
     */
    @ApiModelProperty(value = "managerBy", required = false)
    
    @Column(columnDefinition = "managerBy")
    private String managerBy;
    public String getManagerBy() {
        return managerBy;
    }
    public void setManagerBy(String managerBy) {
        this.managerBy = managerBy;
    }
    
    /**
     * remark
     */
    @ApiModelProperty(value = "remark", required = false)
    
    @Column(columnDefinition = "remark")
    private String remark;
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    
    /**
     * updateTime
     */
    @ApiModelProperty(value = "updateTime", required = false)
    
    @Column(columnDefinition = "updateTime")
    private Date updateTime;
    public Date getUpdateTime() {
        return updateTime;
    }
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
    
    /**
     * managerId
     */
    @ApiModelProperty(value = "managerId", required = false)
    
    @Column(columnDefinition = "managerId")
    private String managerId;
    public String getManagerId() {
        return managerId;
    }
    public void setManagerId(String managerId) {
        this.managerId = managerId;
    }
    
    /**
     * manufacturerId
     */
    @ApiModelProperty(value = "manufacturerId", required = false)
    
    @Column(columnDefinition = "manufacturerId")
    private String manufacturerId;
    public String getManufacturerId() {
        return manufacturerId;
    }
    public void setManufacturerId(String manufacturerId) {
        this.manufacturerId = manufacturerId;
    }
    
    /**
     * manufacturerName
     */
    @ApiModelProperty(value = "manufacturerName", required = false)
    
    @Column(columnDefinition = "manufacturerName")
    private String manufacturerName;
    public String getManufacturerName() {
        return manufacturerName;
    }
    public void setManufacturerName(String manufacturerName) {
        this.manufacturerName = manufacturerName;
    }
    
}

