package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * 宠物 种类
 * <p>
 * Created by tom on 16/6/29.
 */
@Entity
@Table(name = "t_pet_race")
@ApiModel("宠物种类:犬科,猫科...")
public class PetRace extends CMSEntity {
    /**
     * 名称
     */
    @ApiModelProperty(value = "名称", required = true)
    @NotNull
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
