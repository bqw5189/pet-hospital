package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 类型化验实例表
 * <p>
* Created by tom on 2016-07-25 09:32:32.
 */
@Entity
@Table(name = "t_itemtype_chemicalexam")
@ApiModel("类型化验实例表")
public class ItemtypeChemicalexam extends CMSEntity {
    
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
     * 化验实例ID
     */
    @ApiModelProperty(value = "化验实例ID", required = false)
    
    @Column(columnDefinition = "化验实例ID")
    private String chemicalExamId;
    public String getChemicalExamId() {
        return chemicalExamId;
    }
    public void setChemicalExamId(String chemicalExamId) {
        this.chemicalExamId = chemicalExamId;
    }
    
}

