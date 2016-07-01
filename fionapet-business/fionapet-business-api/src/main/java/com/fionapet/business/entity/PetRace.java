package com.fionapet.business.entity;

import cn.fiona.pet.account.entity.User;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 *  宠物 种类
 *
 * Created by tom on 16/6/29.
 */
@Entity
@Table(name = "t_pet_race")
@ApiModel("宠物种类:犬科,猫科...")
public class PetRace extends CMSEntity{
    /**
     * 名称
     */
    @ApiModelProperty("名称")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
