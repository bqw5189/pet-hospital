package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 服务主表
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_service")
@ApiModel("服务主表")
public class Service extends CMSEntity {
    
    /**
     * 服务编号
     */
    @ApiModelProperty(value = "服务编号", required = false)
    
    @Column(columnDefinition = "服务编号")
    private String serviceCode;
    public String getServiceCode() {
        return serviceCode;
    }
    public void setServiceCode(String serviceCode) {
        this.serviceCode = serviceCode;
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
     * 美发师ID
     */
    @ApiModelProperty(value = "美发师ID", required = false)
    
    @Column(columnDefinition = "美发师ID")
    private String hairdresserId;
    public String getHairdresserId() {
        return hairdresserId;
    }
    public void setHairdresserId(String hairdresserId) {
        this.hairdresserId = hairdresserId;
    }
    
    /**
     * 助理ID
     */
    @ApiModelProperty(value = "助理ID", required = false)
    
    @Column(columnDefinition = "助理ID")
    private String assistantId;
    public String getAssistantId() {
        return assistantId;
    }
    public void setAssistantId(String assistantId) {
        this.assistantId = assistantId;
    }
    
    /**
     * 助理名称
     */
    @ApiModelProperty(value = "助理名称", required = false)
    
    @Column(columnDefinition = "助理名称")
    private String assistantName;
    public String getAssistantName() {
        return assistantName;
    }
    public void setAssistantName(String assistantName) {
        this.assistantName = assistantName;
    }
    
    /**
     * 美发师名称
     */
    @ApiModelProperty(value = "美发师名称", required = false)
    
    @Column(columnDefinition = "美发师名称")
    private String hairdresserName;
    public String getHairdresserName() {
        return hairdresserName;
    }
    public void setHairdresserName(String hairdresserName) {
        this.hairdresserName = hairdresserName;
    }
    
    /**
     * 数量
     */
    @ApiModelProperty(value = "数量", required = false)
    
    @Column(columnDefinition = "数量")
    private Integer totalNum;
    public Integer getTotalNum() {
        return totalNum;
    }
    public void setTotalNum(Integer totalNum) {
        this.totalNum = totalNum;
    }
    
    /**
     * 金额
     */
    @ApiModelProperty(value = "金额", required = false)
    
    @Column(columnDefinition = "金额")
    private double totalCost;
    public double getTotalCost() {
        return totalCost;
    }
    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }
    
    /**
     * 影像状态状态
     */
    @ApiModelProperty(value = "影像状态状态", required = false)
    
    @Column(columnDefinition = "影像状态状态")
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

