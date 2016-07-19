package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 应用配置
 * <p>
* Created by tom on 2016-07-13 16:04:24.
 */
@Entity
@Table(name = "t_app_config")
@ApiModel("应用配置")
public class AppConfig extends CMSEntity {
    
    /**
     * 名称
     */
    @ApiModelProperty(value = "名称", required = false)
    
    @Column(columnDefinition = "名称")
    private String configName;
    public String getConfigName() {
        return configName;
    }
    public void setConfigName(String configName) {
        this.configName = configName;
    }
    
    /**
     * 提醒内容
     */
    @ApiModelProperty(value = "提醒内容", required = false)
    
    @Column(columnDefinition = "提醒内容")
    private String configValue;
    public String getConfigValue() {
        return configValue;
    }
    public void setConfigValue(String configValue) {
        this.configValue = configValue;
    }
    
    /**
     * 描述 模版
     */
    @ApiModelProperty(value = "描述 模版", required = false)
    
    @Column(columnDefinition = "描述 模版")
    private String description;
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    
}

