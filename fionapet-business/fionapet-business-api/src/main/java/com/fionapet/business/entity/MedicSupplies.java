package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 医生供应量表
 * <p>
* Created by tom on 2016-07-18 11:47:03.
 */
@Entity
@Table(name = "t_medic_supplies")
@ApiModel("医生供应量表")
public class MedicSupplies extends CMSEntity {
    
    /**
     * 医生记录编号
     */
    @ApiModelProperty(value = "医生记录编号", required = false)
    
    @Column(columnDefinition = "医生记录编号")
    private String medicRecordCode;
    public String getMedicRecordCode() {
        return medicRecordCode;
    }
    public void setMedicRecordCode(String medicRecordCode) {
        this.medicRecordCode = medicRecordCode;
    }
    
    /**
     * 医生记录ID
     */
    @ApiModelProperty(value = "医生记录ID", required = false)
    
    @Column(columnDefinition = "医生记录ID")
    private String medicRecordId;
    public String getMedicRecordId() {
        return medicRecordId;
    }
    public void setMedicRecordId(String medicRecordId) {
        this.medicRecordId = medicRecordId;
    }
    
    /**
     * 实例ID
     */
    @ApiModelProperty(value = "实例ID", required = false)
    
    @Column(columnDefinition = "实例ID")
    private String examId;
    public String getExamId() {
        return examId;
    }
    public void setExamId(String examId) {
        this.examId = examId;
    }
    
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
     * 类型数量
     */
    @ApiModelProperty(value = "类型数量", required = false)
    
    @Column(columnDefinition = "类型数量")
    private Integer itemNum;
    public Integer getItemNum() {
        return itemNum;
    }
    public void setItemNum(Integer itemNum) {
        this.itemNum = itemNum;
    }
    
    /**
     * 规格
     */
    @ApiModelProperty(value = "规格", required = false)
    
    @Column(columnDefinition = "规格")
    private String itemStandard;
    public String getItemStandard() {
        return itemStandard;
    }
    public void setItemStandard(String itemStandard) {
        this.itemStandard = itemStandard;
    }
    
    /**
     * 数量
     */
    @ApiModelProperty(value = "数量", required = false)
    
    @Column(columnDefinition = "数量")
    private String isCount;
    public String getIsCount() {
        return isCount;
    }
    public void setIsCount(String isCount) {
        this.isCount = isCount;
    }
    
    /**
     * 单位
     */
    @ApiModelProperty(value = "单位", required = false)
    
    @Column(columnDefinition = "单位")
    private String unit;
    public String getUnit() {
        return unit;
    }
    public void setUnit(String unit) {
        this.unit = unit;
    }
    
    /**
     * 影像状态
     */
    @ApiModelProperty(value = "影像状态", required = false)
    
    @Column(columnDefinition = "影像状态")
    private String paidStatus;
    public String getPaidStatus() {
        return paidStatus;
    }
    public void setPaidStatus(String paidStatus) {
        this.paidStatus = paidStatus;
    }
    
    /**
     * 影像时间
     */
    @ApiModelProperty(value = "影像时间", required = false)
    
    @Column(columnDefinition = "影像时间")
    private Date paidTime;
    public Date getPaidTime() {
        return paidTime;
    }
    public void setPaidTime(Date paidTime) {
        this.paidTime = paidTime;
    }
    
    /**
     * 标示
     */
    @ApiModelProperty(value = "标示", required = false)
    
    @Column(columnDefinition = "标示")
    private String sign;
    public String getSign() {
        return sign;
    }
    public void setSign(String sign) {
        this.sign = sign;
    }
    
}

