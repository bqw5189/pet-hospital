package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 返回商品主表
 * <p>
* Created by tom on 2016-07-18 11:47:03.
 */
@Entity
@Table(name = "t_return_commodity")
@ApiModel("返回商品主表")
public class ReturnCommodity extends CMSEntity {
    
    /**
     * 编号
     */
    @ApiModelProperty(value = "编号", required = false)
    
    @Column(columnDefinition = "编号")
    private String rcCode;
    public String getRcCode() {
        return rcCode;
    }
    public void setRcCode(String rcCode) {
        this.rcCode = rcCode;
    }
    
    /**
     * 患处ID
     */
    @ApiModelProperty(value = "患处ID", required = false)
    
    @Column(columnDefinition = "患处ID")
    private String cashId;
    public String getCashId() {
        return cashId;
    }
    public void setCashId(String cashId) {
        this.cashId = cashId;
    }
    
    /**
     * 患处编号
     */
    @ApiModelProperty(value = "患处编号", required = false)
    
    @Column(columnDefinition = "患处编号")
    private String cashCode;
    public String getCashCode() {
        return cashCode;
    }
    public void setCashCode(String cashCode) {
        this.cashCode = cashCode;
    }
    
    /**
     * 数量
     */
    @ApiModelProperty(value = "数量", required = false)
    
    @Column(columnDefinition = "数量")
    private Integer countNum;
    public Integer getCountNum() {
        return countNum;
    }
    public void setCountNum(Integer countNum) {
        this.countNum = countNum;
    }
    
    /**
     * 价格
     */
    @ApiModelProperty(value = "价格", required = false)
    
    @Column(columnDefinition = "价格")
    private double totalCost;
    public double getTotalCost() {
        return totalCost;
    }
    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }
    
    /**
     * 宠物主人ID
     */
    @ApiModelProperty(value = "宠物主人ID", required = false)
    
    @Column(columnDefinition = "宠物主人ID")
    private String gestId;
    public String getGestId() {
        return gestId;
    }
    public void setGestId(String gestId) {
        this.gestId = gestId;
    }
    
    /**
     * 宠物主人名称
     */
    @ApiModelProperty(value = "宠物主人名称", required = false)
    
    @Column(columnDefinition = "宠物主人名称")
    private String gestName;
    public String getGestName() {
        return gestName;
    }
    public void setGestName(String gestName) {
        this.gestName = gestName;
    }
    
    /**
     * 宠物主人电话
     */
    @ApiModelProperty(value = "宠物主人电话", required = false)
    
    @Column(columnDefinition = "宠物主人电话")
    private String gestPhone;
    public String getGestPhone() {
        return gestPhone;
    }
    public void setGestPhone(String gestPhone) {
        this.gestPhone = gestPhone;
    }
    
    /**
     * 训练员ID
     */
    @ApiModelProperty(value = "训练员ID", required = false)
    
    @Column(columnDefinition = "训练员ID")
    private String handlerId;
    public String getHandlerId() {
        return handlerId;
    }
    public void setHandlerId(String handlerId) {
        this.handlerId = handlerId;
    }
    
    /**
     * 训练员名称
     */
    @ApiModelProperty(value = "训练员名称", required = false)
    
    @Column(columnDefinition = "训练员名称")
    private String handlerName;
    public String getHandlerName() {
        return handlerName;
    }
    public void setHandlerName(String handlerName) {
        this.handlerName = handlerName;
    }
    
    /**
     * 时间
     */
    @ApiModelProperty(value = "时间", required = false)
    
    @Column(columnDefinition = "时间")
    private Date handOn;
    public Date getHandOn() {
        return handOn;
    }
    public void setHandOn(Date handOn) {
        this.handOn = handOn;
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
     * 影像名称
     */
    @ApiModelProperty(value = "影像名称", required = false)
    
    @Column(columnDefinition = "影像名称")
    private Date paidTime;
    public Date getPaidTime() {
        return paidTime;
    }
    public void setPaidTime(Date paidTime) {
        this.paidTime = paidTime;
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
    
}

