package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * VIP信息
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_vip_input_tem")
@ApiModel("VIP信息")
public class VipInputTem extends CMSEntity {
    
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
     * 行号
     */
    @ApiModelProperty(value = "行号", required = false)
    
    @Column(columnDefinition = "行号")
    private double rowNumber;
    public double getRowNumber() {
        return rowNumber;
    }
    public void setRowNumber(double rowNumber) {
        this.rowNumber = rowNumber;
    }
    
    /**
     * VIP编号
     */
    @ApiModelProperty(value = "VIP编号", required = false)
    
    @Column(columnDefinition = "VIP编号")
    private String vipCode;
    public String getVipCode() {
        return vipCode;
    }
    public void setVipCode(String vipCode) {
        this.vipCode = vipCode;
    }
    
    /**
     * VIP名称
     */
    @ApiModelProperty(value = "VIP名称", required = false)
    
    @Column(columnDefinition = "VIP名称")
    private String vipName;
    public String getVipName() {
        return vipName;
    }
    public void setVipName(String vipName) {
        this.vipName = vipName;
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
     * 移动电话
     */
    @ApiModelProperty(value = "移动电话", required = false)
    
    @Column(columnDefinition = "移动电话")
    private String mobilePhone;
    public String getMobilePhone() {
        return mobilePhone;
    }
    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }
    
    /**
     * 座机
     */
    @ApiModelProperty(value = "座机", required = false)
    
    @Column(columnDefinition = "座机")
    private String phone;
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
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
     * VIP等级
     */
    @ApiModelProperty(value = "VIP等级", required = false)
    
    @Column(columnDefinition = "VIP等级")
    private String vipLevel;
    public String getVipLevel() {
        return vipLevel;
    }
    public void setVipLevel(String vipLevel) {
        this.vipLevel = vipLevel;
    }
    
    /**
     * VIP地址
     */
    @ApiModelProperty(value = "VIP地址", required = false)
    
    @Column(columnDefinition = "VIP地址")
    private String vipAdress;
    public String getVipAdress() {
        return vipAdress;
    }
    public void setVipAdress(String vipAdress) {
        this.vipAdress = vipAdress;
    }
    
    /**
     * 提示标识
     */
    @ApiModelProperty(value = "提示标识", required = false)
    
    @Column(columnDefinition = "提示标识")
    private Integer sign;
    public Integer getSign() {
        return sign;
    }
    public void setSign(Integer sign) {
        this.sign = sign;
    }
    
}

