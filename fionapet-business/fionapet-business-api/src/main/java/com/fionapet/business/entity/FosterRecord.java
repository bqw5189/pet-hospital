package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 养育记录主表
 * <p>
* Created by tom on 2016-07-31 17:25:33.
 */
@Entity
@Table(name = "t_foster_record")
@ApiModel("寄养记录主表")
public class FosterRecord extends CMSEntity {
    
    /**
     * 养育编号
     */
    @ApiModelProperty(value = "养育编号", required = false)
    
    @Column(columnDefinition = "养育编号")
    private String fosterNo;
    public String getFosterNo() {
        return fosterNo;
    }
    public void setFosterNo(String fosterNo) {
        this.fosterNo = fosterNo;
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
     * vip编号
     */
    @ApiModelProperty(value = "vip编号", required = false)
    
    @Column(columnDefinition = "vip编号")
    private String vipNo;
    public String getVipNo() {
        return vipNo;
    }
    public void setVipNo(String vipNo) {
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
     * 预存金额
     */
    @ApiModelProperty(value = "预存金额", required = false)
    
    @Column(columnDefinition = "预存金额")
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
     * 经销商id
     */
    @ApiModelProperty(value = "经销商id", required = false)
    
    @Column(columnDefinition = "经销商id")
    private String manufacturerId;
    public String getManufacturerId() {
        return manufacturerId;
    }
    public void setManufacturerId(String manufacturerId) {
        this.manufacturerId = manufacturerId;
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
     * 管理人员
     */
    @ApiModelProperty(value = "管理人员", required = false)
    
    @Column(columnDefinition = "管理人员")
    private String managerBy;
    public String getManagerBy() {
        return managerBy;
    }
    public void setManagerBy(String managerBy) {
        this.managerBy = managerBy;
    }
    
    /**
     * 管理ID
     */
    @ApiModelProperty(value = "管理ID", required = false)
    
    @Column(columnDefinition = "管理ID")
    private String managerId;
    public String getManagerId() {
        return managerId;
    }
    public void setManagerId(String managerId) {
        this.managerId = managerId;
    }
    
}

