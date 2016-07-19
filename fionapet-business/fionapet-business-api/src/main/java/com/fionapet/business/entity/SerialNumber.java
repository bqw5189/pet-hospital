package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 序列号
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_serial_number")
@ApiModel("序列号")
public class SerialNumber extends CMSEntity {
    
    /**
     * 序列种类方式
     */
    @ApiModelProperty(value = "序列种类方式", required = false)
    
    @Column(columnDefinition = "序列种类方式")
    private String serialNumberStyle;
    public String getSerialNumberStyle() {
        return serialNumberStyle;
    }
    public void setSerialNumberStyle(String serialNumberStyle) {
        this.serialNumberStyle = serialNumberStyle;
    }
    
    /**
     * 序列数
     */
    @ApiModelProperty(value = "序列数", required = false)
    
    @Column(columnDefinition = "序列数")
    private Integer serialNum;
    public Integer getSerialNum() {
        return serialNum;
    }
    public void setSerialNum(Integer serialNum) {
        this.serialNum = serialNum;
    }
    
}

