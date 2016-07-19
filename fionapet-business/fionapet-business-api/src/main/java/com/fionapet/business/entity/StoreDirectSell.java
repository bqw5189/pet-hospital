package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 仓库直销主表
 * <p>
* Created by tom on 2016-07-18 11:47:03.
 */
@Entity
@Table(name = "t_store_direct_sell")
@ApiModel("仓库直销主表")
public class StoreDirectSell extends CMSEntity {
    
    /**
     * 仓库直销编号
     */
    @ApiModelProperty(value = "仓库直销编号", required = false)
    
    @Column(columnDefinition = "仓库直销编号")
    private String directSellCode;
    public String getDirectSellCode() {
        return directSellCode;
    }
    public void setDirectSellCode(String directSellCode) {
        this.directSellCode = directSellCode;
    }
    
    /**
     * 总数
     */
    @ApiModelProperty(value = "总数", required = false)
    
    @Column(columnDefinition = "总数")
    private Integer totalNum;
    public Integer getTotalNum() {
        return totalNum;
    }
    public void setTotalNum(Integer totalNum) {
        this.totalNum = totalNum;
    }
    
    /**
     * 总价
     */
    @ApiModelProperty(value = "总价", required = false)
    
    @Column(columnDefinition = "总价")
    private double totalCost;
    public double getTotalCost() {
        return totalCost;
    }
    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }
    
    /**
     * 购买人ID
     */
    @ApiModelProperty(value = "购买人ID", required = false)
    
    @Column(columnDefinition = "购买人ID")
    private String gestId;
    public String getGestId() {
        return gestId;
    }
    public void setGestId(String gestId) {
        this.gestId = gestId;
    }
    
    /**
     * 购买人名称
     */
    @ApiModelProperty(value = "购买人名称", required = false)
    
    @Column(columnDefinition = "购买人名称")
    private String gestName;
    public String getGestName() {
        return gestName;
    }
    public void setGestName(String gestName) {
        this.gestName = gestName;
    }
    
    /**
     * 宠物ID
     */
    @ApiModelProperty(value = "宠物ID", required = false)
    
    @Column(columnDefinition = "宠物ID")
    private String petId;
    public String getPetId() {
        return petId;
    }
    public void setPetId(String petId) {
        this.petId = petId;
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
     * 购买人编号
     */
    @ApiModelProperty(value = "购买人编号", required = false)
    
    @Column(columnDefinition = "购买人编号")
    private String gestCode;
    public String getGestCode() {
        return gestCode;
    }
    public void setGestCode(String gestCode) {
        this.gestCode = gestCode;
    }
    
    /**
     * 电话
     */
    @ApiModelProperty(value = "电话", required = false)
    
    @Column(columnDefinition = "电话")
    private String mobilePhone;
    public String getMobilePhone() {
        return mobilePhone;
    }
    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }
    
    /**
     * 折扣
     */
    @ApiModelProperty(value = "折扣", required = false)
    
    @Column(columnDefinition = "折扣")
    private double discount;
    public double getDiscount() {
        return discount;
    }
    public void setDiscount(double discount) {
        this.discount = discount;
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

