package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 急诊表
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_prompt")
@ApiModel("急诊表")
public class Prompt extends CMSEntity {
    
    /**
     * 配置ID
     */
    @ApiModelProperty(value = "配置ID", required = false)
    
    @Column(columnDefinition = "配置ID")
    private String configId;
    public String getConfigId() {
        return configId;
    }
    public void setConfigId(String configId) {
        this.configId = configId;
    }
    
    /**
     * 编号
     */
    @ApiModelProperty(value = "编号", required = false)
    
    @Column(columnDefinition = "编号")
    private String keyCode;
    public String getKeyCode() {
        return keyCode;
    }
    public void setKeyCode(String keyCode) {
        this.keyCode = keyCode;
    }
    
    /**
     * 关联ID
     */
    @ApiModelProperty(value = "关联ID", required = false)
    
    @Column(columnDefinition = "关联ID")
    private String relationId;
    public String getRelationId() {
        return relationId;
    }
    public void setRelationId(String relationId) {
        this.relationId = relationId;
    }
    
    /**
     * 主人ID
     */
    @ApiModelProperty(value = "主人ID", required = false)
    
    @Column(columnDefinition = "主人ID")
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
     * 性别
     */
    @ApiModelProperty(value = "性别", required = false)
    
    @Column(columnDefinition = "性别")
    private String sex;
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
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
     * 生日
     */
    @ApiModelProperty(value = "生日", required = false)
    
    @Column(columnDefinition = "生日")
    private Date birthday;
    public Date getBirthday() {
        return birthday;
    }
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
    
    /**
     * 宠物生日
     */
    @ApiModelProperty(value = "宠物生日", required = false)
    
    @Column(columnDefinition = "宠物生日")
    private Date birthdate;
    public Date getBirthdate() {
        return birthdate;
    }
    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }
    
    /**
     * 天数
     */
    @ApiModelProperty(value = "天数", required = false)
    
    @Column(columnDefinition = "天数")
    private Integer days;
    public Integer getDays() {
        return days;
    }
    public void setDays(Integer days) {
        this.days = days;
    }
    
    /**
     * 笼子号
     */
    @ApiModelProperty(value = "笼子号", required = false)
    
    @Column(columnDefinition = "笼子号")
    private String cageNo;
    public String getCageNo() {
        return cageNo;
    }
    public void setCageNo(String cageNo) {
        this.cageNo = cageNo;
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
     * 总价格
     */
    @ApiModelProperty(value = "总价格", required = false)
    
    @Column(columnDefinition = "总价格")
    private double totalMoney;
    public double getTotalMoney() {
        return totalMoney;
    }
    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }
    
    /**
     * 应付价格
     */
    @ApiModelProperty(value = "应付价格", required = false)
    
    @Column(columnDefinition = "应付价格")
    private double inputMoney;
    public double getInputMoney() {
        return inputMoney;
    }
    public void setInputMoney(double inputMoney) {
        this.inputMoney = inputMoney;
    }
    
    /**
     * 开始时间
     */
    @ApiModelProperty(value = "开始时间", required = false)
    
    @Column(columnDefinition = "开始时间")
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
     * 处理
     */
    @ApiModelProperty(value = "处理", required = false)
    
    @Column(columnDefinition = "处理")
    private String shootProcess;
    public String getShootProcess() {
        return shootProcess;
    }
    public void setShootProcess(String shootProcess) {
        this.shootProcess = shootProcess;
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
     * 状态
     */
    @ApiModelProperty(value = "状态", required = false)
    
    @Column(columnDefinition = "状态")
    private String sendStatus;
    public String getSendStatus() {
        return sendStatus;
    }
    public void setSendStatus(String sendStatus) {
        this.sendStatus = sendStatus;
    }
    
    /**
     * 类型
     */
    @ApiModelProperty(value = "类型", required = false)
    
    @Column(columnDefinition = "类型")
    private String promptType;
    public String getPromptType() {
        return promptType;
    }
    public void setPromptType(String promptType) {
        this.promptType = promptType;
    }
    
    /**
     * 类型统计
     */
    @ApiModelProperty(value = "类型统计", required = false)
    
    @Column(columnDefinition = "类型统计")
    private String itemCount;
    public String getItemCount() {
        return itemCount;
    }
    public void setItemCount(String itemCount) {
        this.itemCount = itemCount;
    }
    
    /**
     * 仓库
     */
    @ApiModelProperty(value = "仓库", required = false)
    
    @Column(columnDefinition = "仓库")
    private String wareHouse;
    public String getWareHouse() {
        return wareHouse;
    }
    public void setWareHouse(String wareHouse) {
        this.wareHouse = wareHouse;
    }
    
    /**
     * 上限
     */
    @ApiModelProperty(value = "上限", required = false)
    
    @Column(columnDefinition = "上限")
    private Integer upLimit;
    public Integer getUpLimit() {
        return upLimit;
    }
    public void setUpLimit(Integer upLimit) {
        this.upLimit = upLimit;
    }
    
    /**
     * 下限
     */
    @ApiModelProperty(value = "下限", required = false)
    
    @Column(columnDefinition = "下限")
    private Integer downLimit;
    public Integer getDownLimit() {
        return downLimit;
    }
    public void setDownLimit(Integer downLimit) {
        this.downLimit = downLimit;
    }
    
    /**
     * shootStatus
     */
    @ApiModelProperty(value = "shootStatus", required = false)
    
    @Column(columnDefinition = "shootStatus")
    private String shootStatus;
    public String getShootStatus() {
        return shootStatus;
    }
    public void setShootStatus(String shootStatus) {
        this.shootStatus = shootStatus;
    }
    
}

