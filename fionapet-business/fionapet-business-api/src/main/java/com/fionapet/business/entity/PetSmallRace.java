package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *  宠物 类型
 *
 * Created by tom on 16/6/29.
 */
@Entity
@Table(name = "t_pet_small_race")
@ApiModel("宠物类型:吉娃娃,博美犬...")
public class PetSmallRace extends CMSEntity{
    /**
     * 类型
     */
    @ApiModelProperty(value = "类型",required = true)
    @NotNull
    private String type;

    private PetRace petRace;

    @ManyToOne
    @JoinColumn(name = "pet_race_id")
    public PetRace getPetRace() {
        return petRace;
    }

    public void setPetRace(PetRace petRace) {
        this.petRace = petRace;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
