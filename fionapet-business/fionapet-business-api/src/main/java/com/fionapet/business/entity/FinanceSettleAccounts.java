package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 资金账号表
 * <p>
* Created by tom on 2016-07-25 09:32:33.
 */
@Entity
@Table(name = "t_finance_settle_accounts")
@ApiModel("资金账号表")
public class FinanceSettleAccounts extends CMSEntity {
    
    /**
     * 编号
     */
    @ApiModelProperty(value = "编号", required = false)
    
    @Column(columnDefinition = "编号")
    private String settleCode;
    public String getSettleCode() {
        return settleCode;
    }
    public void setSettleCode(String settleCode) {
        this.settleCode = settleCode;
    }
    
    /**
     * 顾客ID
     */
    @ApiModelProperty(value = "顾客ID", required = false)
    
    @Column(columnDefinition = "顾客ID")
    private String gestId;
    public String getGestId() {
        return gestId;
    }
    public void setGestId(String gestId) {
        this.gestId = gestId;
    }
    
    /**
     * 顾客编号
     */
    @ApiModelProperty(value = "顾客编号", required = false)
    
    @Column(columnDefinition = "顾客编号")
    private String gestCode;
    public String getGestCode() {
        return gestCode;
    }
    public void setGestCode(String gestCode) {
        this.gestCode = gestCode;
    }
    
    /**
     * 顾客名称
     */
    @ApiModelProperty(value = "顾客名称", required = false)
    
    @Column(columnDefinition = "顾客名称")
    private String gestName;
    public String getGestName() {
        return gestName;
    }
    public void setGestName(String gestName) {
        this.gestName = gestName;
    }
    
    /**
     * 宠物编号
     */
    @ApiModelProperty(value = "宠物编号", required = false)
    
    @Column(columnDefinition = "宠物编号")
    private String petCode;
    public String getPetCode() {
        return petCode;
    }
    public void setPetCode(String petCode) {
        this.petCode = petCode;
    }
    
    /**
     * 宠物名称
     */
    @ApiModelProperty(value = "宠物名称", required = false)
    
    @Column(columnDefinition = "宠物名称")
    private String petName;
    public String getPetName() {
        return petName;
    }
    public void setPetName(String petName) {
        this.petName = petName;
    }
    
    /**
     * 总金额
     */
    @ApiModelProperty(value = "总金额", required = false)
    
    @Column(columnDefinition = "总金额")
    private double totalMoney;
    public double getTotalMoney() {
        return totalMoney;
    }
    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }
    
    /**
     * 折扣金额
     */
    @ApiModelProperty(value = "折扣金额", required = false)
    
    @Column(columnDefinition = "折扣金额")
    private double disCountMoney;
    public double getDisCountMoney() {
        return disCountMoney;
    }
    public void setDisCountMoney(double disCountMoney) {
        this.disCountMoney = disCountMoney;
    }
    
    /**
     * 原金额
     */
    @ApiModelProperty(value = "原金额", required = false)
    
    @Column(columnDefinition = "原金额")
    private double shouldPaidMoney;
    public double getShouldPaidMoney() {
        return shouldPaidMoney;
    }
    public void setShouldPaidMoney(double shouldPaidMoney) {
        this.shouldPaidMoney = shouldPaidMoney;
    }
    
    /**
     * 实际金额
     */
    @ApiModelProperty(value = "实际金额", required = false)
    
    @Column(columnDefinition = "实际金额")
    private double factPaidMoney;
    public double getFactPaidMoney() {
        return factPaidMoney;
    }
    public void setFactPaidMoney(double factPaidMoney) {
        this.factPaidMoney = factPaidMoney;
    }
    
    /**
     * 返回金额
     */
    @ApiModelProperty(value = "返回金额", required = false)
    
    @Column(columnDefinition = "返回金额")
    private double backMoney;
    public double getBackMoney() {
        return backMoney;
    }
    public void setBackMoney(double backMoney) {
        this.backMoney = backMoney;
    }
    
    /**
     * 返回原因
     */
    @ApiModelProperty(value = "返回原因", required = false)
    
    @Column(columnDefinition = "返回原因")
    private String backReason;
    public String getBackReason() {
        return backReason;
    }
    public void setBackReason(String backReason) {
        this.backReason = backReason;
    }
    
    /**
     * 影像状态
     */
    @ApiModelProperty(value = "影像状态", required = false)
    
    @Column(columnDefinition = "影像状态")
    private String paidStatus;
    public String getPaidStatus() {
        return paidStatus;
    }
    public void setPaidStatus(String paidStatus) {
        this.paidStatus = paidStatus;
    }
    
    /**
     * 影像时间
     */
    @ApiModelProperty(value = "影像时间", required = false)
    
    @Column(columnDefinition = "影像时间")
    private Date paidTime;
    public Date getPaidTime() {
        return paidTime;
    }
    public void setPaidTime(Date paidTime) {
        this.paidTime = paidTime;
    }
    
    /**
     * 变更金额
     */
    @ApiModelProperty(value = "变更金额", required = false)
    
    @Column(columnDefinition = "变更金额")
    private double changeMoney;
    public double getChangeMoney() {
        return changeMoney;
    }
    public void setChangeMoney(double changeMoney) {
        this.changeMoney = changeMoney;
    }
    
}

