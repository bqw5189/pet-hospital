package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;

/**
 *  商品服务种类
 *
 * Created by bailj on 16/6/29.
 */
@Entity
@Table(name = "t_item_cate")
@ApiModel("商品服务种类")
public class ItemCate extends CMSEntity{
    /**
     * 名称
     */
    @ApiModelProperty(value = "种类编号",required = true)
    @NotNull
    private String cateNo;

    @ApiModelProperty(value = "父类ID")
    private String parentId;

    @ApiModelProperty(value = "种类名称",required = true)
    @NotNull
    private String cateName;

    @ApiModelProperty(value = "业务类型ID")
    private String busiTypeId;

    @ApiModelProperty(value = "零售预期毛利",required = true)
    private Double singleProfit;

    public String getCateNo() {
        return cateNo;
    }

    public void setCateNo(String cateNo) {
        this.cateNo = cateNo;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getCateName() {
        return cateName;
    }

    public void setCateName(String cateName) {
        this.cateName = cateName;
    }

    public String getBusiTypeId() {
        return busiTypeId;
    }

    public void setBusiTypeId(String busiTypeId) {
        this.busiTypeId = busiTypeId;
    }

    public Double getSingleProfit() {
        return singleProfit;
    }

    public void setSingleProfit(Double singleProfit) {
        this.singleProfit = singleProfit;
    }
}
