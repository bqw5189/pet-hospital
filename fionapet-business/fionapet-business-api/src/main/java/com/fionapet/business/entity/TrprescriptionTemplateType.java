package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 处方模版类型
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_trprescription_template_type")
@ApiModel("处方模版类型")
public class TrprescriptionTemplateType extends CMSEntity {
    
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
     * parentId
     */
    @ApiModelProperty(value = "parentId", required = false)
    private String parentId;
    public String getParentId() {
        return parentId;
    }
    public void setParentId(String parentId) {
        this.parentId = parentId;
    }
    
    /**
     * typeName
     */
    @ApiModelProperty(value = "typeName", required = false)
    private String typeName;
    public String getTypeName() {
        return typeName;
    }
    public void setTypeName(String typeName) {
        this.typeName = typeName;
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

