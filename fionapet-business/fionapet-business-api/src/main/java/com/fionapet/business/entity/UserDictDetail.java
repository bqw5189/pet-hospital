package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.*;

/**
 * 数据字典 字典明细项
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_user_dict_detail")
@ApiModel("数据字典 字典明细项")
public class UserDictDetail extends CMSEntity {
    private UserDict userDict;

    @ManyToOne(cascade = {CascadeType.MERGE,CascadeType.REFRESH }, optional = true)
    @JoinColumn(name="dict_type_id")
    public UserDict getUserDict() {
        return userDict;
    }

    public void setUserDict(UserDict userDict) {
        this.userDict = userDict;
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
    @ApiModelProperty(value = "valueNameEN", required = false)
    private String valueNameEn;

    public String getValueNameEn() {
        return valueNameEn;
    }

    public void setValueNameEn(String valueNameEn) {
        this.valueNameEn = valueNameEn;
    }

    /**
     * sort
     */
    @ApiModelProperty(value = "sort", required = false)
    private Integer sort;
    public Integer getSort() {
        return sort;
    }
    public void setSort(Integer sort) {
        this.sort = sort;
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

