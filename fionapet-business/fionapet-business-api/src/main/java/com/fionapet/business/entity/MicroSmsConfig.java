package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 消息提醒配置表
 * <p>
* Created by tom on 2016-07-18 11:47:03.
 */
@Entity
@Table(name = "t_micro_sms_config")
@ApiModel("消息提醒配置表")
public class MicroSmsConfig extends CMSEntity {
    
    /**
     * 配置名称
     */
    @ApiModelProperty(value = "配置名称", required = false)
    
    @Column(columnDefinition = "配置名称")
    private String configName;
    public String getConfigName() {
        return configName;
    }
    public void setConfigName(String configName) {
        this.configName = configName;
    }
    
    /**
     * 配置值
     */
    @ApiModelProperty(value = "配置值", required = false)
    
    @Column(columnDefinition = "配置值")
    private String configValue;
    public String getConfigValue() {
        return configValue;
    }
    public void setConfigValue(String configValue) {
        this.configValue = configValue;
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

