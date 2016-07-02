package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *  仓库
 *
 * Created by bailj on 16/6/29.
 */
@Entity
@Table(name = "t_warehouse")
@ApiModel("仓库")
public class Warehouse extends CMSEntity{
    /**
     * 名称
     */
    @ApiModelProperty(value = "仓库编号",required = true)
    @NotNull
    private String code;

    @ApiModelProperty(value = "仓库名称",required = true)
    @NotNull
    private String name;

    @ApiModelProperty(value = "备注")
    private String remark;

    @ApiModelProperty(value = "是否是药库",required = true)
    @NotNull
    private Boolean drugStore;

    @ApiModelProperty(value = "是否是药库",required = true)
    @NotNull
    private Boolean sellStore;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Boolean getDrugStore() {
        return drugStore;
    }

    public void setDrugStore(Boolean drugStore) {
        this.drugStore = drugStore;
    }

    public Boolean getSellStore() {
        return sellStore;
    }

    public void setSellStore(Boolean sellStore) {
        this.sellStore = sellStore;
    }
}
