package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 宠物字典类型明细
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_dict_type_detail")
@ApiModel("宠物字典类型明细")
public class DictTypeDetail extends CMSEntity {
    
    /**
     * dictTypeId
     */
    @ApiModelProperty(value = "dictTypeId", required = false)
    private String dictTypeId;
    public String getDictTypeId() {
        return dictTypeId;
    }
    public void setDictTypeId(String dictTypeId) {
        this.dictTypeId = dictTypeId;
    }
    
    /**
     * dictDetailCode
     */
    @ApiModelProperty(value = "dictDetailCode", required = false)
    private String dictDetailCode;
    public String getDictDetailCode() {
        return dictDetailCode;
    }
    public void setDictDetailCode(String dictDetailCode) {
        this.dictDetailCode = dictDetailCode;
    }
    
    /**
     * valueNameCN
     */
    @ApiModelProperty(value = "valueNameCN", required = false)
    private String valueNameCn;

    public String getValueNameCn() {
        return valueNameCn;
    }

    public void setValueNameCn(String valueNameCn) {
        this.valueNameCn = valueNameCn;
    }

    /**
     * valueNameEN
     */
    @ApiModelProperty(value = "valueNameEn", required = false)
    private String valueNameEn;

    public String getValueNameEn() {
        return valueNameEn;
    }

    public void setValueNameEn(String valueNameEn) {
        this.valueNameEn = valueNameEn;
    }

    /**
     * comments
     */
    @ApiModelProperty(value = "comments", required = false)
    private String comments;
    public String getComments() {
        return comments;
    }
    public void setComments(String comments) {
        this.comments = comments;
    }
    
}

