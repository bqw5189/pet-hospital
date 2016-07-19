package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 业务类型打折率
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_item_discount_rate")
@ApiModel("业务类型打折率")
public class ItemDiscountRate extends CMSEntity {
    
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
     * cateNo
     */
    @ApiModelProperty(value = "cateNo", required = false)
    private String cateNo;
    public String getCateNo() {
        return cateNo;
    }
    public void setCateNo(String cateNo) {
        this.cateNo = cateNo;
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
    
}

