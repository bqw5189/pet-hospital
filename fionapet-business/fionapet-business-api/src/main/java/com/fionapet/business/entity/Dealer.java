package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 代理商
 * <p>
* Created by tom on 2016-07-31 16:45:31.
 */
@Entity
@Table(name = "t_dealer")
@ApiModel("代理商")
public class Dealer extends CMSEntity {
    
    /**
     * 编码
     */
    @ApiModelProperty(value = "编码", required = false)
    
    @Column(columnDefinition = "编码")
    private String code;
    public String getCode() {
        return code;
    }
    public void setCode(String code) {
        this.code = code;
    }
    
    /**
     * name
     */
    @ApiModelProperty(value = "name", required = false)
    
    @Column(columnDefinition = "name")
    private String name;
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    
    /**
     * 联系人
     */
    @ApiModelProperty(value = "联系人", required = false)
    
    @Column(columnDefinition = "联系人")
    private String contractMan;
    public String getContractMan() {
        return contractMan;
    }
    public void setContractMan(String contractMan) {
        this.contractMan = contractMan;
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
    @ApiModelProperty(value = "联系地址", required = false)
    
    @Column(columnDefinition = "联系地址")
    private String dealerAddress;
    public String getDealerAddress() {
        return dealerAddress;
    }
    public void setDealerAddress(String dealerAddress) {
        this.dealerAddress = dealerAddress;
    }
    
    /**
     * 传真
     */
    @ApiModelProperty(value = "传真", required = false)
    
    @Column(columnDefinition = "传真")
    private String fax;
    public String getFax() {
        return fax;
    }
    public void setFax(String fax) {
        this.fax = fax;
    }
    
    /**
     * 网站
     */
    @ApiModelProperty(value = "网站", required = false)
    
    @Column(columnDefinition = "网站")
    private String website;
    public String getWebsite() {
        return website;
    }
    public void setWebsite(String website) {
        this.website = website;
    }
    
    /**
     * 税号
     */
    @ApiModelProperty(value = "税号", required = false)
    
    @Column(columnDefinition = "税号")
    private String taxNo;
    public String getTaxNo() {
        return taxNo;
    }
    public void setTaxNo(String taxNo) {
        this.taxNo = taxNo;
    }
    
    /**
     * 开户银行
     */
    @ApiModelProperty(value = "开户银行", required = false)
    
    @Column(columnDefinition = "开户银行")
    private String bankName;
    public String getBankName() {
        return bankName;
    }
    public void setBankName(String bankName) {
        this.bankName = bankName;
    }
    
    /**
     * 代理商账户名
     */
    @ApiModelProperty(value = "代理商账户名", required = false)
    
    @Column(columnDefinition = "代理商账户名")
    private String dealerBankName;
    public String getDealerBankName() {
        return dealerBankName;
    }
    public void setDealerBankName(String dealerBankName) {
        this.dealerBankName = dealerBankName;
    }
    
    /**
     * 银行账号
     */
    @ApiModelProperty(value = "银行账号", required = false)
    
    @Column(columnDefinition = "银行账号")
    private String accountNo;
    public String getAccountNo() {
        return accountNo;
    }
    public void setAccountNo(String accountNo) {
        this.accountNo = accountNo;
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
     * 类型:经销商/生产商/经销商和代理商
     */
    @ApiModelProperty(value = "类型:经销商/生产商/经销商和代理商", required = false)
    
    @Column(columnDefinition = "类型:经销商/生产商/经销商和代理商")
    private String companyType;
    public String getCompanyType() {
        return companyType;
    }
    public void setCompanyType(String companyType) {
        this.companyType = companyType;
    }
    
}

