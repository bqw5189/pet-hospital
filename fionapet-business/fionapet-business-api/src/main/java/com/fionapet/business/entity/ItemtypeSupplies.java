package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 供应量表
 * <p>
* Created by tom on 2016-07-25 09:32:33.
 */
@Entity
@Table(name = "t_itemtype_supplies")
@ApiModel("供应量表")
public class ItemtypeSupplies extends CMSEntity {
    
    /**
     * 类型编号
     */
    @ApiModelProperty(value = "类型编号", required = false)
    
    @Column(columnDefinition = "类型编号")
    private String itemCode;
    public String getItemCode() {
        return itemCode;
    }
    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }
    
    /**
     * 数量
     */
    @ApiModelProperty(value = "数量", required = false)
    
    @Column(columnDefinition = "数量")
    private double itemNum;
    public double getItemNum() {
        return itemNum;
    }
    public void setItemNum(double itemNum) {
        this.itemNum = itemNum;
    }
    
    /**
     * 单元
     */
    @ApiModelProperty(value = "单元", required = false)
    
    @Column(columnDefinition = "单元")
    private String unit;
    public String getUnit() {
        return unit;
    }
    public void setUnit(String unit) {
        this.unit = unit;
    }
    
    /**
     * 供应量编号
     */
    @ApiModelProperty(value = "供应量编号", required = false)
    
    @Column(columnDefinition = "供应量编号")
    private String suppliesCode;
    public String getSuppliesCode() {
        return suppliesCode;
    }
    public void setSuppliesCode(String suppliesCode) {
        this.suppliesCode = suppliesCode;
    }
    
    /**
     * 提示
     */
    @ApiModelProperty(value = "提示", required = false)
    
    @Column(columnDefinition = "提示")
    private String sign;
    public String getSign() {
        return sign;
    }
    public void setSign(String sign) {
        this.sign = sign;
    }
    
}

