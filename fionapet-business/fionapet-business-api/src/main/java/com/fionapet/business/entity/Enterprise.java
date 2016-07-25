package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 企业信息表
 * <p>
* Created by tom on 2016-07-25 09:32:31.
 */
@Entity
@Table(name = "t_enterprise")
@ApiModel("企业信息表")
public class Enterprise extends CMSEntity {
    
    /**
     * 全名称
     */
    @ApiModelProperty(value = "全名称", required = false)
    
    @Column(columnDefinition = "全名称")
    private String fullName;
    public String getFullName() {
        return fullName;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    
    /**
     * 简称
     */
    @ApiModelProperty(value = "简称", required = false)
    
    @Column(columnDefinition = "简称")
    private String shortName;
    public String getShortName() {
        return shortName;
    }
    public void setShortName(String shortName) {
        this.shortName = shortName;
    }
    
    /**
     * 企业号
     */
    @ApiModelProperty(value = "企业号", required = false)
    
    @Column(columnDefinition = "企业号")
    private String entNo;
    public String getEntNo() {
        return entNo;
    }
    public void setEntNo(String entNo) {
        this.entNo = entNo;
    }
    
    /**
     * 负责人
     */
    @ApiModelProperty(value = "负责人", required = false)
    
    @Column(columnDefinition = "负责人")
    private String responseMan;
    public String getResponseMan() {
        return responseMan;
    }
    public void setResponseMan(String responseMan) {
        this.responseMan = responseMan;
    }
    
    /**
     * 邮箱号
     */
    @ApiModelProperty(value = "邮箱号", required = false)
    
    @Column(columnDefinition = "邮箱号")
    private String emailNo;
    public String getEmailNo() {
        return emailNo;
    }
    public void setEmailNo(String emailNo) {
        this.emailNo = emailNo;
    }
    
    /**
     * 地址
     */
    @ApiModelProperty(value = "地址", required = false)
    
    @Column(columnDefinition = "地址")
    private String address;
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
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
     * 口号
     */
    @ApiModelProperty(value = "口号", required = false)
    
    @Column(columnDefinition = "口号")
    private String fax;
    public String getFax() {
        return fax;
    }
    public void setFax(String fax) {
        this.fax = fax;
    }
    
    /**
     * 邮箱
     */
    @ApiModelProperty(value = "邮箱", required = false)
    private String eMail;
    @Column(name = "e_mail", columnDefinition = "邮箱")
    public String getEMail() {
        return eMail;
    }
    public void setEMail(String eMail) {
        this.eMail = eMail;
    }
    
    /**
     * 邮编
     */
    @ApiModelProperty(value = "邮编", required = false)
    
    @Column(columnDefinition = "邮编")
    private String areaCode;
    public String getAreaCode() {
        return areaCode;
    }
    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode;
    }
    
    /**
     * 序列号
     */
    @ApiModelProperty(value = "序列号", required = false)
    
    @Column(columnDefinition = "序列号")
    private String serialNumber;
    public String getSerialNumber() {
        return serialNumber;
    }
    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }
    
    /**
     * 说明
     */
    @ApiModelProperty(value = "说明", required = false)
    
    @Column(columnDefinition = "说明")
    private String remark;
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    
}

