package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * 经销商
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_dealer")
@ApiModel("经销商")
public class Dealer extends CMSEntity {

    /**
     * code
     */
    @ApiModelProperty(value = "code", required = false)@NotNull
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
    @ApiModelProperty(value = "name", required = false)@NotNull
    private String name;
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    
    /**
     * contractMan
     */
    @ApiModelProperty(value = "contractMan", required = false)
    private String contractMan;
    public String getContractMan() {
        return contractMan;
    }
    public void setContractMan(String contractMan) {
        this.contractMan = contractMan;
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
     * email
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
     * dealerAddress
     */
    @ApiModelProperty(value = "dealerAddress", required = false)
    private String dealerAddress;
    public String getDealerAddress() {
        return dealerAddress;
    }
    public void setDealerAddress(String dealerAddress) {
        this.dealerAddress = dealerAddress;
    }
    
    /**
     * fax
     */
    @ApiModelProperty(value = "fax", required = false)
    private String fax;
    public String getFax() {
        return fax;
    }
    public void setFax(String fax) {
        this.fax = fax;
    }
    
    /**
     * website
     */
    @ApiModelProperty(value = "website", required = false)
    private String website;
    public String getWebsite() {
        return website;
    }
    public void setWebsite(String website) {
        this.website = website;
    }
    
    /**
     * taxNo
     */
    @ApiModelProperty(value = "taxNo", required = false)
    private String taxNo;
    public String getTaxNo() {
        return taxNo;
    }
    public void setTaxNo(String taxNo) {
        this.taxNo = taxNo;
    }
    
    /**
     * bankName
     */
    @ApiModelProperty(value = "bankName", required = false)
    private String bankName;
    public String getBankName() {
        return bankName;
    }
    public void setBankName(String bankName) {
        this.bankName = bankName;
    }
    
    /**
     * dealerBankName
     */
    @ApiModelProperty(value = "dealerBankName", required = false)
    private String dealerBankName;
    public String getDealerBankName() {
        return dealerBankName;
    }
    public void setDealerBankName(String dealerBankName) {
        this.dealerBankName = dealerBankName;
    }
    
    /**
     * accountNo
     */
    @ApiModelProperty(value = "accountNo", required = false)
    private String accountNo;
    public String getAccountNo() {
        return accountNo;
    }
    public void setAccountNo(String accountNo) {
        this.accountNo = accountNo;
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
     * companyType
     */
    @ApiModelProperty(value = "companyType", required = false)
    private String companyType;
    public String getCompanyType() {
        return companyType;
    }
    public void setCompanyType(String companyType) {
        this.companyType = companyType;
    }
    
}

