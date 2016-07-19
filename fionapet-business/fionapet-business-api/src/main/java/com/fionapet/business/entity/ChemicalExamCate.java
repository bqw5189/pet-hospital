package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 化验样例类型
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_chemical_exam_cate")
@ApiModel("化验样例类型")
public class ChemicalExamCate extends CMSEntity {
    
    /**
     * cateNo
     */
    @ApiModelProperty(value = "cateNo", required = false)
    private String cateNo;
    public String getCateNo() {
        return cateNo;
    }
    public void setCateNo(String cateNo) {
        this.cateNo = cateNo;
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
     * cateName
     */
    @ApiModelProperty(value = "cateName", required = false)
    private String cateName;
    public String getCateName() {
        return cateName;
    }
    public void setCateName(String cateName) {
        this.cateName = cateName;
    }
    
    /**
     * source
     */
    @ApiModelProperty(value = "source", required = false)
    private String source;
    public String getSource() {
        return source;
    }
    public void setSource(String source) {
        this.source = source;
    }
    
    /**
     * sourceChangedReason
     */
    @ApiModelProperty(value = "sourceChangedReason", required = false)
    private String sourceChangedReason;
    public String getSourceChangedReason() {
        return sourceChangedReason;
    }
    public void setSourceChangedReason(String sourceChangedReason) {
        this.sourceChangedReason = sourceChangedReason;
    }
    
    /**
     * remark
     */
    @ApiModelProperty(value = "remark", required = false)
    private String remark;
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    
}

