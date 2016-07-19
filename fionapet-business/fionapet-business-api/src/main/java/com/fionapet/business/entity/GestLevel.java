package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 会员等级管理
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_gest_level")
@ApiModel("会员等级管理")
public class GestLevel extends CMSEntity {
    
    /**
     * levelCode
     */
    @ApiModelProperty(value = "levelCode", required = false)
    private String levelCode;
    public String getLevelCode() {
        return levelCode;
    }
    public void setLevelCode(String levelCode) {
        this.levelCode = levelCode;
    }
    
    /**
     * levelName
     */
    @ApiModelProperty(value = "levelName", required = false)
    private String levelName;
    public String getLevelName() {
        return levelName;
    }
    public void setLevelName(String levelName) {
        this.levelName = levelName;
    }
    
    /**
     * isCredit
     */
    @ApiModelProperty(value = "isCredit", required = false)
    private String isCredit;
    public String getIsCredit() {
        return isCredit;
    }
    public void setIsCredit(String isCredit) {
        this.isCredit = isCredit;
    }
    
    /**
     * isDiscount
     */
    @ApiModelProperty(value = "isDiscount", required = false)
    private String isDiscount;
    public String getIsDiscount() {
        return isDiscount;
    }
    public void setIsDiscount(String isDiscount) {
        this.isDiscount = isDiscount;
    }
    
    /**
     * discountRate
     */
    @ApiModelProperty(value = "discountRate", required = false)
    private String discountRate;
    public String getDiscountRate() {
        return discountRate;
    }
    public void setDiscountRate(String discountRate) {
        this.discountRate = discountRate;
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
    
}

