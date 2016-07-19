package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 费用类型
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_expenses_cate")
@ApiModel("费用类型")
public class ExpensesCate extends CMSEntity {
    
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

