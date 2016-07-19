package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 处方模版明细
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_prescription_template")
@ApiModel("处方模版明细")
public class PrescriptionTemplate extends CMSEntity {
    
    /**
     * typeId
     */
    @ApiModelProperty(value = "typeId", required = false)
    private String typeId;
    public String getTypeId() {
        return typeId;
    }
    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }
    
    /**
     * typeNo
     */
    @ApiModelProperty(value = "typeNo", required = false)
    private String typeNo;
    public String getTypeNo() {
        return typeNo;
    }
    public void setTypeNo(String typeNo) {
        this.typeNo = typeNo;
    }
    
    /**
     * templateNo
     */
    @ApiModelProperty(value = "templateNo", required = false)
    private String templateNo;
    public String getTemplateNo() {
        return templateNo;
    }
    public void setTemplateNo(String templateNo) {
        this.templateNo = templateNo;
    }
    
    /**
     * templateName
     */
    @ApiModelProperty(value = "templateName", required = false)
    private String templateName;
    public String getTemplateName() {
        return templateName;
    }
    public void setTemplateName(String templateName) {
        this.templateName = templateName;
    }
    
    /**
     * barCode
     */
    @ApiModelProperty(value = "barCode", required = false)
    private String barCode;
    public String getBarCode() {
        return barCode;
    }
    public void setBarCode(String barCode) {
        this.barCode = barCode;
    }
    
    /**
     * gestId
     */
    @ApiModelProperty(value = "gestId", required = false)
    private String gestId;
    public String getGestId() {
        return gestId;
    }
    public void setGestId(String gestId) {
        this.gestId = gestId;
    }
    
}

