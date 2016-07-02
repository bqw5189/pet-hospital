package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *  业务类型
 *
 * Created by bailj on 16/6/29.
 */
@Entity
@Table(name = "t_busines_cate")
@ApiModel("业务类型")
public class BusinesCate extends CMSEntity{
    /**
     * 类型名称
     */
    @ApiModelProperty(value = "类型名称",required = true)
    @NotNull
    private String cateName;

    public String getCateName() {
        return cateName;
    }

    public void setCateName(String cateName) {
        this.cateName = cateName;
    }
}
