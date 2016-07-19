package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 字典类型
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_dict_type")
@ApiModel("字典类型")
public class DictType extends CMSEntity {
    
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
    
}

