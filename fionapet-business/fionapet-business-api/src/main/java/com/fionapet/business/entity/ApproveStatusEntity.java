package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 审批状态实体
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_approve_status_entity")
@ApiModel("审批状态实体")
public class ApproveStatusEntity extends CMSEntity {
    
    /**
     * 单号
     */
    @ApiModelProperty(value = "单号", required = false)
    
    @Column(columnDefinition = "单号")
    private String sheetNo;
    public String getSheetNo() {
        return sheetNo;
    }
    public void setSheetNo(String sheetNo) {
        this.sheetNo = sheetNo;
    }
    
    /**
     * 事项名称
     */
    @ApiModelProperty(value = "事项名称", required = false)
    
    @Column(columnDefinition = "事项名称")
    private String activityName;
    public String getActivityName() {
        return activityName;
    }
    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }
    
    /**
     * 审批状态
     */
    @ApiModelProperty(value = "审批状态", required = false)
    
    @Column(columnDefinition = "审批状态")
    private String approveStatus;
    public String getApproveStatus() {
        return approveStatus;
    }
    public void setApproveStatus(String approveStatus) {
        this.approveStatus = approveStatus;
    }
    
    /**
     * 审批时间
     */
    @ApiModelProperty(value = "审批时间", required = false)
    
    @Column(columnDefinition = "审批时间")
    private Date approvedAt;
    public Date getApprovedAt() {
        return approvedAt;
    }
    public void setApprovedAt(Date approvedAt) {
        this.approvedAt = approvedAt;
    }
    
    /**
     * 描述
     */
    @ApiModelProperty(value = "描述", required = false)
    
    @Column(columnDefinition = "描述")
    private String description;
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    
}

