package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 医生化验实例类型细节表
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_medic_chemical_examtype")
@ApiModel("医生化验实例类型细节表")
public class MedicChemicalExamtype extends CMSEntity {
    
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
     * 类型名称
     */
    @ApiModelProperty(value = "类型名称", required = false)
    
    @Column(columnDefinition = "类型名称")
    private String itemName;
    public String getItemName() {
        return itemName;
    }
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
    
    /**
     * 检查测试名称
     */
    @ApiModelProperty(value = "检查测试名称", required = false)
    
    @Column(columnDefinition = "检查测试名称")
    private String cheTestName;
    public String getCheTestName() {
        return cheTestName;
    }
    public void setCheTestName(String cheTestName) {
        this.cheTestName = cheTestName;
    }
    
    /**
     * 检查测试单元
     */
    @ApiModelProperty(value = "检查测试单元", required = false)
    
    @Column(columnDefinition = "检查测试单元")
    private String cheTestUnit;
    public String getCheTestUnit() {
        return cheTestUnit;
    }
    public void setCheTestUnit(String cheTestUnit) {
        this.cheTestUnit = cheTestUnit;
    }
    
    /**
     * 索引类型
     */
    @ApiModelProperty(value = "索引类型", required = false)
    
    @Column(columnDefinition = "索引类型")
    private String indexType;
    public String getIndexType() {
        return indexType;
    }
    public void setIndexType(String indexType) {
        this.indexType = indexType;
    }
    
    /**
     * 种类编号
     */
    @ApiModelProperty(value = "种类编号", required = false)
    
    @Column(columnDefinition = "种类编号")
    private String cateNo;
    public String getCateNo() {
        return cateNo;
    }
    public void setCateNo(String cateNo) {
        this.cateNo = cateNo;
    }
    
}

