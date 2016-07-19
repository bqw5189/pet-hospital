package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 提前付费表
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_prepay_money")
@ApiModel("提前付费表")
public class PrepayMoney extends CMSEntity {
    
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
     * 业务类型
     */
    @ApiModelProperty(value = "业务类型", required = false)
    
    @Column(columnDefinition = "业务类型")
    private String businessType;
    public String getBusinessType() {
        return businessType;
    }
    public void setBusinessType(String businessType) {
        this.businessType = businessType;
    }
    
    /**
     * 类型
     */
    @ApiModelProperty(value = "类型", required = false)
    
    @Column(columnDefinition = "类型")
    private String optionType;
    public String getOptionType() {
        return optionType;
    }
    public void setOptionType(String optionType) {
        this.optionType = optionType;
    }
    
    /**
     * 关联ID
     */
    @ApiModelProperty(value = "关联ID", required = false)
    
    @Column(columnDefinition = "关联ID")
    private String relationId;
    public String getRelationId() {
        return relationId;
    }
    public void setRelationId(String relationId) {
        this.relationId = relationId;
    }
    
    /**
     * 付费
     */
    @ApiModelProperty(value = "付费", required = false)
    
    @Column(columnDefinition = "付费")
    private double inputMoney;
    public double getInputMoney() {
        return inputMoney;
    }
    public void setInputMoney(double inputMoney) {
        this.inputMoney = inputMoney;
    }
    
    /**
     * 时间
     */
    @ApiModelProperty(value = "时间", required = false)
    
    @Column(columnDefinition = "时间")
    private Date recordTime;
    public Date getRecordTime() {
        return recordTime;
    }
    public void setRecordTime(Date recordTime) {
        this.recordTime = recordTime;
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

