package com.fionapet.business.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fionapet.business.facade.vo.TreeBase;
import com.fionapet.business.facade.vo.Treeable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;

/**
 * 化验样例类型
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_chemical_exam_cate")
@ApiModel("化验样例类型")
public class ChemicalExamCate extends CMSEntity implements Treeable{
    
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
    @ApiModelProperty(value = "parentObject", required = false)
    private ChemicalExamCate parentObject;

    @ManyToOne(cascade = CascadeType.DETACH,fetch = FetchType.LAZY)
    @JoinColumn(name = "parent_id", referencedColumnName = "cateNo")
    @NotFound(action = NotFoundAction.IGNORE)
    public ChemicalExamCate getParentObject() {
        return parentObject;
    }

    public void setParentObject(ChemicalExamCate parentObject) {
        this.parentObject = parentObject;
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


    @Override
    @Transient
    public String getParent() {
        if (this.getParentObject() != null) {
            return this.getParentObject().getCateNo();
        }else{
            return "";
        }
    }

    @Override
    public void setParent(String parent) {
        if (this.getParentObject() != null) {
            this.getParentObject().setCateNo(parent);
        }
    }

    @Override
    @Transient
    public String getText() {
        return this.getCateName();
    }

    @Override
    public void setText(String text) {
        this.setCateName(text);

    }
}

