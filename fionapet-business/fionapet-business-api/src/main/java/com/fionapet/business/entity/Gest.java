package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 宠物主人
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_gest")
@ApiModel("宠物主人")
public class Gest extends CMSEntity {
    
    /**
     * gestCode
     */
    @ApiModelProperty(value = "gestCode", required = false)
    private String gestCode;
    public String getGestCode() {
        return gestCode;
    }
    public void setGestCode(String gestCode) {
        this.gestCode = gestCode;
    }
    
    /**
     * loseRightDate
     */
    @ApiModelProperty(value = "loseRightDate", required = false)
    private String loseRightDate;
    public String getLoseRightDate() {
        return loseRightDate;
    }
    public void setLoseRightDate(String loseRightDate) {
        this.loseRightDate = loseRightDate;
    }
    
    /**
     * gestName
     */
    @ApiModelProperty(value = "gestName", required = false)
    private String gestName;
    public String getGestName() {
        return gestName;
    }
    public void setGestName(String gestName) {
        this.gestName = gestName;
    }
    
    /**
     * gestSex
     */
    @ApiModelProperty(value = "gestSex", required = false)
    private String gestSex;
    public String getGestSex() {
        return gestSex;
    }
    public void setGestSex(String gestSex) {
        this.gestSex = gestSex;
    }
    
    /**
     * gestBirthday
     */
    @ApiModelProperty(value = "gestBirthday", required = false)
    private String gestBirthday;
    public String getGestBirthday() {
        return gestBirthday;
    }
    public void setGestBirthday(String gestBirthday) {
        this.gestBirthday = gestBirthday;
    }
    
    /**
     * mobilePhone
     */
    @ApiModelProperty(value = "mobilePhone", required = false)
    private String mobilePhone;
    public String getMobilePhone() {
        return mobilePhone;
    }
    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }
    
    /**
     * telPhone
     */
    @ApiModelProperty(value = "telPhone", required = false)
    private String telPhone;
    public String getTelPhone() {
        return telPhone;
    }
    public void setTelPhone(String telPhone) {
        this.telPhone = telPhone;
    }
    
    /**
     * eMail
     */
    @ApiModelProperty(value = "email", required = false)
    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * gestAddress
     */
    @ApiModelProperty(value = "gestAddress", required = false)
    private String gestAddress;
    public String getGestAddress() {
        return gestAddress;
    }
    public void setGestAddress(String gestAddress) {
        this.gestAddress = gestAddress;
    }
    
    /**
     * isVip
     */
    @ApiModelProperty(value = "isVip", required = false)
    private String isVip;
    public String getIsVip() {
        return isVip;
    }
    public void setIsVip(String isVip) {
        this.isVip = isVip;
    }
    
    /**
     * vipNo
     */
    @ApiModelProperty(value = "vipNo", required = false)
    private String vipNo;
    public String getVipNo() {
        return vipNo;
    }
    public void setVipNo(String vipNo) {
        this.vipNo = vipNo;
    }
    
    /**
     * vipAccount
     */
    @ApiModelProperty(value = "vipAccount", required = false)
    private double vipAccount;
    public double getVipAccount() {
        return vipAccount;
    }
    public void setVipAccount(double vipAccount) {
        this.vipAccount = vipAccount;
    }
    
    /**
     * lastPaidTime
     */
    @ApiModelProperty(value = "lastPaidTime", required = false)
    private Date lastPaidTime;
    public Date getLastPaidTime() {
        return lastPaidTime;
    }
    public void setLastPaidTime(Date lastPaidTime) {
        this.lastPaidTime = lastPaidTime;
    }
    
    /**
     * gestStyle
     */
    @ApiModelProperty(value = "gestStyle", required = false)
    private String gestStyle;
    public String getGestStyle() {
        return gestStyle;
    }
    public void setGestStyle(String gestStyle) {
        this.gestStyle = gestStyle;
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
     * remark
     */
    @ApiModelProperty(value = "remark", required = false)
    private String remark;
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    
    /**
     * rewardPoint
     */
    @ApiModelProperty(value = "rewardPoint", required = false)
    private String rewardPoint;
    public String getRewardPoint() {
        return rewardPoint;
    }
    public void setRewardPoint(String rewardPoint) {
        this.rewardPoint = rewardPoint;
    }
    
    /**
     * prepayMoney
     */
    @ApiModelProperty(value = "prepayMoney", required = false)
    private double prepayMoney;
    public double getPrepayMoney() {
        return prepayMoney;
    }
    public void setPrepayMoney(double prepayMoney) {
        this.prepayMoney = prepayMoney;
    }
    
}

