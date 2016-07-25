package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 仓库检查主表
 * <p>
* Created by tom on 2016-07-25 09:32:33.
 */
@Entity
@Table(name = "t_check_warehouse")
@ApiModel("仓库检查主表")
public class CheckWarehouse extends CMSEntity {
    
    /**
     * 检查时间
     */
    @ApiModelProperty(value = "检查时间", required = false)
    
    @Column(columnDefinition = "检查时间")
    private Date checkDate;
    public Date getCheckDate() {
        return checkDate;
    }
    public void setCheckDate(Date checkDate) {
        this.checkDate = checkDate;
    }
    
    /**
     * 检查者
     */
    @ApiModelProperty(value = "检查者", required = false)
    
    @Column(columnDefinition = "检查者")
    private String checkMan;
    public String getCheckMan() {
        return checkMan;
    }
    public void setCheckMan(String checkMan) {
        this.checkMan = checkMan;
    }
    
    /**
     * 文件名
     */
    @ApiModelProperty(value = "文件名", required = false)
    
    @Column(columnDefinition = "文件名")
    private String fileName;
    public String getFileName() {
        return fileName;
    }
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
    
    /**
     * 类型统计
     */
    @ApiModelProperty(value = "类型统计", required = false)
    
    @Column(columnDefinition = "类型统计")
    private Integer itemCount;
    public Integer getItemCount() {
        return itemCount;
    }
    public void setItemCount(Integer itemCount) {
        this.itemCount = itemCount;
    }
    
    /**
     * 描述
     */
    @ApiModelProperty(value = "描述", required = false)
    
    @Column(columnDefinition = "描述")
    private String describe;
    public String getDescribe() {
        return describe;
    }
    public void setDescribe(String describe) {
        this.describe = describe;
    }
    
    /**
     * 检查数量
     */
    @ApiModelProperty(value = "检查数量", required = false)
    
    @Column(columnDefinition = "检查数量")
    private String checkNumber;
    public String getCheckNumber() {
        return checkNumber;
    }
    public void setCheckNumber(String checkNumber) {
        this.checkNumber = checkNumber;
    }
    
}

