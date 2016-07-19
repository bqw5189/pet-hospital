package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 宠物主人信息
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_persons")
@ApiModel("宠物主人信息")
public class Persons extends CMSEntity {
    
    /**
     * personCode
     */
    @ApiModelProperty(value = "personCode", required = false)
    private String personCode;
    public String getPersonCode() {
        return personCode;
    }
    public void setPersonCode(String personCode) {
        this.personCode = personCode;
    }
    
    /**
     * personName
     */
    @ApiModelProperty(value = "personName", required = false)
    private String personName;
    public String getPersonName() {
        return personName;
    }
    public void setPersonName(String personName) {
        this.personName = personName;
    }
    
    /**
     * password
     */
    @ApiModelProperty(value = "password", required = false)
    private String password;
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    
    /**
     * loginAppType
     */
    @ApiModelProperty(value = "loginAppType", required = false)
    private String loginAppType;
    public String getLoginAppType() {
        return loginAppType;
    }
    public void setLoginAppType(String loginAppType) {
        this.loginAppType = loginAppType;
    }
    
    /**
     * loginAccountType
     */
    @ApiModelProperty(value = "loginAccountType", required = false)
    private String loginAccountType;
    public String getLoginAccountType() {
        return loginAccountType;
    }
    public void setLoginAccountType(String loginAccountType) {
        this.loginAccountType = loginAccountType;
    }
    
    /**
     * pwdFailedCount
     */
    @ApiModelProperty(value = "pwdFailedCount", required = false)
    private String pwdFailedCount;
    public String getPwdFailedCount() {
        return pwdFailedCount;
    }
    public void setPwdFailedCount(String pwdFailedCount) {
        this.pwdFailedCount = pwdFailedCount;
    }
    
    /**
     * changeStartReason
     */
    @ApiModelProperty(value = "changeStartReason", required = false)
    private String changeStartReason;
    public String getChangeStartReason() {
        return changeStartReason;
    }
    public void setChangeStartReason(String changeStartReason) {
        this.changeStartReason = changeStartReason;
    }
    
    /**
     * orgId
     */
    @ApiModelProperty(value = "orgId", required = false)
    private String orgId;
    public String getOrgId() {
        return orgId;
    }
    public void setOrgId(String orgId) {
        this.orgId = orgId;
    }
    
    /**
     * idCardType
     */
    @ApiModelProperty(value = "idCardType", required = false)
    private String idCardType;
    public String getIdCardType() {
        return idCardType;
    }
    public void setIdCardType(String idCardType) {
        this.idCardType = idCardType;
    }
    
    /**
     * sex
     */
    @ApiModelProperty(value = "sex", required = false)
    private String sex;
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
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
     * emergencyPhone
     */
    @ApiModelProperty(value = "emergencyPhone", required = false)
    private String emergencyPhone;
    public String getEmergencyPhone() {
        return emergencyPhone;
    }
    public void setEmergencyPhone(String emergencyPhone) {
        this.emergencyPhone = emergencyPhone;
    }
    
    /**
     * idCardNumber
     */
    @ApiModelProperty(value = "idCardNumber", required = false)
    private String idCardNumber;
    public String getIdCardNumber() {
        return idCardNumber;
    }
    public void setIdCardNumber(String idCardNumber) {
        this.idCardNumber = idCardNumber;
    }
    
    /**
     * officeEmail
     */
    @ApiModelProperty(value = "officeEmail", required = false)
    private String officeEmail;
    public String getOfficeEmail() {
        return officeEmail;
    }
    public void setOfficeEmail(String officeEmail) {
        this.officeEmail = officeEmail;
    }
    
    /**
     * address
     */
    @ApiModelProperty(value = "address", required = false)
    private String address;
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    
    /**
     * officeAddress
     */
    @ApiModelProperty(value = "officeAddress", required = false)
    private String officeAddress;
    public String getOfficeAddress() {
        return officeAddress;
    }
    public void setOfficeAddress(String officeAddress) {
        this.officeAddress = officeAddress;
    }
    
    /**
     * personStatus
     */
    @ApiModelProperty(value = "personStatus", required = false)
    private String personStatus;
    public String getPersonStatus() {
        return personStatus;
    }
    public void setPersonStatus(String personStatus) {
        this.personStatus = personStatus;
    }
    
    /**
     * isDoctor
     */
    @ApiModelProperty(value = "isDoctor", required = false)
    private String isDoctor;
    public String getIsDoctor() {
        return isDoctor;
    }
    public void setIsDoctor(String isDoctor) {
        this.isDoctor = isDoctor;
    }
    
    /**
     * isNurse
     */
    @ApiModelProperty(value = "isNurse", required = false)
    private String isNurse;
    public String getIsNurse() {
        return isNurse;
    }
    public void setIsNurse(String isNurse) {
        this.isNurse = isNurse;
    }
    
    /**
     * isSeller
     */
    @ApiModelProperty(value = "isSeller", required = false)
    private String isSeller;
    public String getIsSeller() {
        return isSeller;
    }
    public void setIsSeller(String isSeller) {
        this.isSeller = isSeller;
    }
    
    /**
     * roleId
     */
    @ApiModelProperty(value = "roleId", required = false)
    private String roleId;
    public String getRoleId() {
        return roleId;
    }
    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }
    
    /**
     * authorizationCode
     */
    @ApiModelProperty(value = "authorizationCode", required = false)
    private String authorizationCode;
    public String getAuthorizationCode() {
        return authorizationCode;
    }
    public void setAuthorizationCode(String authorizationCode) {
        this.authorizationCode = authorizationCode;
    }
    
    /**
     * isSyncEas
     */
    @ApiModelProperty(value = "isSyncEas", required = false)
    private String isSyncEas;
    public String getIsSyncEas() {
        return isSyncEas;
    }
    public void setIsSyncEas(String isSyncEas) {
        this.isSyncEas = isSyncEas;
    }
    
    /**
     * birthday
     */
    @ApiModelProperty(value = "birthday", required = false)
    private String birthday;
    public String getBirthday() {
        return birthday;
    }
    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
    
    /**
     * personRight
     */
    @ApiModelProperty(value = "personRight", required = false)
    private String personRight;
    public String getPersonRight() {
        return personRight;
    }
    public void setPersonRight(String personRight) {
        this.personRight = personRight;
    }
    
    /**
     * Images
     */
    @ApiModelProperty(value = "Images", required = false)
    private String Images;
    public String getImages() {
        return Images;
    }
    public void setImages(String Images) {
        this.Images = Images;
    }
    
    /**
     * descibe
     */
    @ApiModelProperty(value = "descibe", required = false)
    private String descibe;
    public String getDescibe() {
        return descibe;
    }
    public void setDescibe(String descibe) {
        this.descibe = descibe;
    }
    
    /**
     * isnoAppoInt
     */
    @ApiModelProperty(value = "isnoAppoInt", required = false)
    private Integer isnoAppoInt;
    public Integer getIsnoAppoInt() {
        return isnoAppoInt;
    }
    public void setIsnoAppoInt(Integer isnoAppoInt) {
        this.isnoAppoInt = isnoAppoInt;
    }
    
    /**
     * emploeeHeadId
     */
    @ApiModelProperty(value = "emploeeHeadId", required = false)
    private String emploeeHeadId;
    public String getEmploeeHeadId() {
        return emploeeHeadId;
    }
    public void setEmploeeHeadId(String emploeeHeadId) {
        this.emploeeHeadId = emploeeHeadId;
    }
    
}

