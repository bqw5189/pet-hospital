package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.HashSet;
import java.util.Set;

/**
 * 应用字典大类
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_user_dict")
@ApiModel("应用字典大类")
public class UserDict extends CMSEntity {
    /**
     * dictName
     */
    @ApiModelProperty(value = "dictName", required = false)
    private String dictName;
    public String getDictName() {
        return dictName;
    }
    public void setDictName(String dictName) {
        this.dictName = dictName;
    }
    
    /**
     * canEdit
     */
    @ApiModelProperty(value = "canEdit", required = false)
    private String canEdit;
    public String getCanEdit() {
        return canEdit;
    }
    public void setCanEdit(String canEdit) {
        this.canEdit = canEdit;
    }
    
    /**
     * canView
     */
    @ApiModelProperty(value = "canView", required = false)
    private String canView;
    public String getCanView() {
        return canView;
    }
    public void setCanView(String canView) {
        this.canView = canView;
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
    
}

