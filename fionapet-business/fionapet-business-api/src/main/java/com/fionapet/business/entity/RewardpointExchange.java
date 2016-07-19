package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 赔偿交换
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_rewardpoint_exchange")
@ApiModel("赔偿交换")
public class RewardpointExchange extends CMSEntity {
    
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
     * 宠物主人编号
     */
    @ApiModelProperty(value = "宠物主人编号", required = false)
    
    @Column(columnDefinition = "宠物主人编号")
    private String gestCode;
    public String getGestCode() {
        return gestCode;
    }
    public void setGestCode(String gestCode) {
        this.gestCode = gestCode;
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
     * 交换点
     */
    @ApiModelProperty(value = "交换点", required = false)
    
    @Column(columnDefinition = "交换点")
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
    private Integer itemNum;
    public Integer getItemNum() {
        return itemNum;
    }
    public void setItemNum(Integer itemNum) {
        this.itemNum = itemNum;
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

