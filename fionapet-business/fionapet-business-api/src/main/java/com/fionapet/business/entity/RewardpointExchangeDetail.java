package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 赔偿交换细节
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_rewardpoint_exchange_detail")
@ApiModel("赔偿交换细节")
public class RewardpointExchangeDetail extends CMSEntity {
    
    /**
     * 上级ID
     */
    @ApiModelProperty(value = "上级ID", required = false)
    
    @Column(columnDefinition = "上级ID")
    private String parentId;
    public String getParentId() {
        return parentId;
    }
    public void setParentId(String parentId) {
        this.parentId = parentId;
    }
    
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
     * 类型名称
     */
    @ApiModelProperty(value = "类型名称", required = false)
    
    @Column(columnDefinition = "类型名称")
    private String itemName;
    public String getItemName() {
        return itemName;
    }
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
    
    /**
     * 单位
     */
    @ApiModelProperty(value = "单位", required = false)
    
    @Column(columnDefinition = "单位")
    private String unit;
    public String getUnit() {
        return unit;
    }
    public void setUnit(String unit) {
        this.unit = unit;
    }
    
    /**
     * 业务类型ID
     */
    @ApiModelProperty(value = "业务类型ID", required = false)
    
    @Column(columnDefinition = "业务类型ID")
    private String busiTypeId;
    public String getBusiTypeId() {
        return busiTypeId;
    }
    public void setBusiTypeId(String busiTypeId) {
        this.busiTypeId = busiTypeId;
    }
    
    /**
     * 销售价格
     */
    @ApiModelProperty(value = "销售价格", required = false)
    
    @Column(columnDefinition = "销售价格")
    private double sellPrice;
    public double getSellPrice() {
        return sellPrice;
    }
    public void setSellPrice(double sellPrice) {
        this.sellPrice = sellPrice;
    }
    
    /**
     * 偿还价格
     */
    @ApiModelProperty(value = "偿还价格", required = false)
    
    @Column(columnDefinition = "偿还价格")
    private Integer rewardPointPrice;
    public Integer getRewardPointPrice() {
        return rewardPointPrice;
    }
    public void setRewardPointPrice(Integer rewardPointPrice) {
        this.rewardPointPrice = rewardPointPrice;
    }
    
    /**
     * 总赔偿点
     */
    @ApiModelProperty(value = "总赔偿点", required = false)
    
    @Column(columnDefinition = "总赔偿点")
    private Integer totalRewardPoint;
    public Integer getTotalRewardPoint() {
        return totalRewardPoint;
    }
    public void setTotalRewardPoint(Integer totalRewardPoint) {
        this.totalRewardPoint = totalRewardPoint;
    }
    
    /**
     * 数量
     */
    @ApiModelProperty(value = "数量", required = false)
    
    @Column(columnDefinition = "数量")
    private double totalNum;
    public double getTotalNum() {
        return totalNum;
    }
    public void setTotalNum(double totalNum) {
        this.totalNum = totalNum;
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
    
}

