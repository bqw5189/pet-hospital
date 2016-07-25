package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 收款记录表
 * <p>
* Created by tom on 2016-07-25 09:32:32.
 */
@Entity
@Table(name = "t_input_money_record")
@ApiModel("收款记录表")
public class InputMoneyRecord extends CMSEntity {
    
    /**
     * 收款时间
     */
    @ApiModelProperty(value = "收款时间", required = false)
    
    @Column(columnDefinition = "收款时间")
    private Date inputMoneyDate;
    public Date getInputMoneyDate() {
        return inputMoneyDate;
    }
    public void setInputMoneyDate(Date inputMoneyDate) {
        this.inputMoneyDate = inputMoneyDate;
    }
    
    /**
     * 客户名称
     */
    @ApiModelProperty(value = "客户名称", required = false)
    
    @Column(columnDefinition = "客户名称")
    private String gestName;
    public String getGestName() {
        return gestName;
    }
    public void setGestName(String gestName) {
        this.gestName = gestName;
    }
    
    /**
     * 客户ID
     */
    @ApiModelProperty(value = "客户ID", required = false)
    
    @Column(columnDefinition = "客户ID")
    private String gestId;
    public String getGestId() {
        return gestId;
    }
    public void setGestId(String gestId) {
        this.gestId = gestId;
    }
    
    /**
     * 收款金额
     */
    @ApiModelProperty(value = "收款金额", required = false)
    
    @Column(columnDefinition = "收款金额")
    private double inputMoney;
    public double getInputMoney() {
        return inputMoney;
    }
    public void setInputMoney(double inputMoney) {
        this.inputMoney = inputMoney;
    }
    
    /**
     * VIP账号
     */
    @ApiModelProperty(value = "VIP账号", required = false)
    
    @Column(columnDefinition = "VIP账号")
    private double vipAccount;
    public double getVipAccount() {
        return vipAccount;
    }
    public void setVipAccount(double vipAccount) {
        this.vipAccount = vipAccount;
    }
    
}

