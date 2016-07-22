package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.*;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 会员
 * <p>
* Created by tom on 2016-07-22 14:22:59.
 */
@Entity
@Table(name = "t_gest")
@ApiModel("会员")
public class Gest extends CMSEntity {
    
    /**
     * 编号
     */
    @ApiModelProperty(value = "编号", required = false)
    @Column(columnDefinition = "编号")
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
    @Column(columnDefinition = "loseRightDate")
    private String loseRightDate;
    public String getLoseRightDate() {
        return loseRightDate;
    }
    public void setLoseRightDate(String loseRightDate) {
        this.loseRightDate = loseRightDate;
    }
    
    /**
     * 名称
     */
    @ApiModelProperty(value = "名称", required = false)
    @Column(columnDefinition = "名称")
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
    private UserDictDetail gestSex;
    @ManyToOne(cascade = {CascadeType.MERGE,CascadeType.REFRESH }, optional = true)
    @JoinColumn(name="gest_sex", referencedColumnName = "dictDetailCode")
    public UserDictDetail getGestSex() {
        return gestSex;
    }
    public void setGestSex(UserDictDetail gestSex) {
        this.gestSex = gestSex;
    }
    
    /**
     * 生日
     */
    @ApiModelProperty(value = "生日", required = false)
    @Column(columnDefinition = "生日")
    private Date gestBirthday;
    public Date getGestBirthday() {
        return gestBirthday;
    }
    public void setGestBirthday(Date gestBirthday) {
        this.gestBirthday = gestBirthday;
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
     * 电话
     */
    @ApiModelProperty(value = "电话", required = false)
    @Column(columnDefinition = "电话")
    private String telPhone;
    public String getTelPhone() {
        return telPhone;
    }
    public void setTelPhone(String telPhone) {
        this.telPhone = telPhone;
    }
    
    /**
     * 邮箱
     */
    @ApiModelProperty(value = "邮箱", required = false)
    @Column(columnDefinition = "邮箱")
    private String email;
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    
    /**
     * 联系地址
     */
    @ApiModelProperty(value = "gestAddress", required = false)
    @Column(columnDefinition = "gestAddress")
    private String gestAddress;
    public String getGestAddress() {
        return gestAddress;
    }
    public void setGestAddress(String gestAddress) {
        this.gestAddress = gestAddress;
    }
    
    /**
     * 是否会员
     */
    @ApiModelProperty(value = "是否会员", required = false)
    @Column(columnDefinition = "是否会员")
    private DictTypeDetail isVip;
    @ManyToOne(cascade = {CascadeType.MERGE,CascadeType.REFRESH }, optional = true)
    @JoinColumn(name="is_vip", referencedColumnName = "dictDetailCode")
    public DictTypeDetail getIsVip() {
        return isVip;
    }
    public void setIsVip(DictTypeDetail isVip) {
        this.isVip = isVip;
    }
    
    /**
     * 会员号
     */
    @ApiModelProperty(value = "会员号", required = false)
    @Column(columnDefinition = "会员号")
    private String vipNo;
    public String getVipNo() {
        return vipNo;
    }
    public void setVipNo(String vipNo) {
        this.vipNo = vipNo;
    }
    
    /**
     * 账号
     */
    @ApiModelProperty(value = "账号", required = false)
    @Column(columnDefinition = "账号")
    private double vipAccount;
    public double getVipAccount() {
        return vipAccount;
    }
    public void setVipAccount(double vipAccount) {
        this.vipAccount = vipAccount;
    }
    
    /**
     * 最后消费时间
     */
    @ApiModelProperty(value = "最后消费时间", required = false)
    @Column(columnDefinition = "最后消费时间")
    private Date lastPaidTime;
    public Date getLastPaidTime() {
        return lastPaidTime;
    }
    public void setLastPaidTime(Date lastPaidTime) {
        this.lastPaidTime = lastPaidTime;
    }
    
    /**
     * 会员级别
     */
    @ApiModelProperty(value = "gestStyle", required = false)
    @Column(columnDefinition = "gestStyle")
    private GestLevel gestStyle;
    @ManyToOne(cascade = {CascadeType.MERGE,CascadeType.REFRESH }, optional = true)
    @JoinColumn(name="gest_style", referencedColumnName = "levelCode")
    public GestLevel getGestStyle() {
        return gestStyle;
    }
    public void setGestStyle(GestLevel gestStyle) {
        this.gestStyle = gestStyle;
    }
    
    /**
     * 支付状态
     */
    @ApiModelProperty(value = "paidStatus", required = false)
    @Column(columnDefinition = "paidStatus")
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
    @Column(columnDefinition = "remark")
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
    @Column(columnDefinition = "rewardPoint")
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
    @Column(columnDefinition = "prepayMoney")
    private double prepayMoney;
    public double getPrepayMoney() {
        return prepayMoney;
    }
    public void setPrepayMoney(double prepayMoney) {
        this.prepayMoney = prepayMoney;
    }
    
}

