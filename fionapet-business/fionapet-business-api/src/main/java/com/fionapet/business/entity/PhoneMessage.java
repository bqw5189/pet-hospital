package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 电话信息表
 * <p>
* Created by tom on 2016-07-18 11:47:02.
 */
@Entity
@Table(name = "t_phone_message")
@ApiModel("电话信息表")
public class PhoneMessage extends CMSEntity {
    
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
     * 内容
     */
    @ApiModelProperty(value = "内容", required = false)
    
    @Column(columnDefinition = "内容")
    private String content;
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    
    /**
     * 类型
     */
    @ApiModelProperty(value = "类型", required = false)
    
    @Column(columnDefinition = "类型")
    private String promptType;
    public String getPromptType() {
        return promptType;
    }
    public void setPromptType(String promptType) {
        this.promptType = promptType;
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
     * 发送状态
     */
    @ApiModelProperty(value = "发送状态", required = false)
    
    @Column(columnDefinition = "发送状态")
    private String sendStatus;
    public String getSendStatus() {
        return sendStatus;
    }
    public void setSendStatus(String sendStatus) {
        this.sendStatus = sendStatus;
    }
    
    /**
     * 生日
     */
    @ApiModelProperty(value = "生日", required = false)
    
    @Column(columnDefinition = "生日")
    private Date birthday;
    public Date getBirthday() {
        return birthday;
    }
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
    
    /**
     * 发送时间
     */
    @ApiModelProperty(value = "发送时间", required = false)
    
    @Column(columnDefinition = "发送时间")
    private Date sendTime;
    public Date getSendTime() {
        return sendTime;
    }
    public void setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }
    
}

