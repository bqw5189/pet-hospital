package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 提醒配置表
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_app_config")
@ApiModel("提醒配置表")
public class AppConfig extends CMSEntity {
    
    /**
     * configName
     */
    @ApiModelProperty(value = "configName", required = false)
    private String configName;
    public String getConfigName() {
        return configName;
    }
    public void setConfigName(String configName) {
        this.configName = configName;
    }
    
    /**
     * configValue
     */
    @ApiModelProperty(value = "configValue", required = false)
    private String configValue;
    public String getConfigValue() {
        return configValue;
    }
    public void setConfigValue(String configValue) {
        this.configValue = configValue;
    }
    
    /**
     * description
     */
    @ApiModelProperty(value = "description", required = false)
    private String description;
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    
}

