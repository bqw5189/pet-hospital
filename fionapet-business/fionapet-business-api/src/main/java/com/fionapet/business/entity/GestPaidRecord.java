package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 顾客影像记录表
 * <p>
* Created by tom on 2016-07-25 09:32:34.
 */
@Entity
@Table(name = "t_gest_paid_record")
@ApiModel("支付方式记录表")
public class GestPaidRecord extends CMSEntity {
    
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
     * 操作部位
     */
    @ApiModelProperty(value = "支付方式", required = false)
    
    @Column(columnDefinition = "支付方式")
    private String operateAction;
    public String getOperateAction() {
        return operateAction;
    }
    public void setOperateAction(String operateAction) {
        this.operateAction = operateAction;
    }
    
    /**
     * 操作内容
     */
    @ApiModelProperty(value = "支付金额", required = false)
    
    @Column(columnDefinition = "支付金额")
    private String operateContent;
    public String getOperateContent() {
        return operateContent;
    }
    public void setOperateContent(String operateContent) {
        this.operateContent = operateContent;
    }
    
    /**
     * 账号ID
     */
    @ApiModelProperty(value = "账号ID", required = false)
    
    @Column(columnDefinition = "账号ID")
    private String settleAccountsId;
    public String getSettleAccountsId() {
        return settleAccountsId;
    }
    public void setSettleAccountsId(String settleAccountsId) {
        this.settleAccountsId = settleAccountsId;
    }
    
}

