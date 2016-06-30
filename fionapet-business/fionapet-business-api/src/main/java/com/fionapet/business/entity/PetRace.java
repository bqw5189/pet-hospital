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

//    protected String uuid;
//
//    @Id
//    @GeneratedValue(generator = "system-uuid")
//    @GenericGenerator(name = "system-uuid", strategy = "uuid")
//    @Column(name = "uuid", length = 36)
//    public String getUuid() {
//        return uuid;
//    }
//
//    public void setUuid(String uuid) {
//        this.uuid = uuid;
//    }
//
//    /**
//     * 创建人
//     */
//    private User createUser;
//    /**
//     * 创建日期
//     */
//    private Date createDate;
//    /**
//     * 修改人
//     */
//    private User modifyUser;
//    /**
//     * 修改日期
//     */
//    private Date modifyDate;
//    /**
//     * 状态 1 删除 0 未删除
//     */
//    private StatusEnum status = StatusEnum.OK;
//
//    @JsonIgnore
//    public User getCreateUser() {
//        return createUser;
//    }
//
//    public void setCreateUser(User createUser) {
//        this.createUser = createUser;
//    }
//
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+08:00")
//    public Date getCreateDate() {
//        return createDate;
//    }
//
//    public void setCreateDate(Date createDate) {
//        this.createDate = createDate;
//    }
//
//    @JsonIgnore
//    public User getModifyUser() {
//        return modifyUser;
//    }
//
//    public void setModifyUser(User modifyUser) {
//        this.modifyUser = modifyUser;
//    }
//
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+08:00")
//    public Date getModifyDate() {
//        return modifyDate;
//    }
//
//    public void setModifyDate(Date modifyDate) {
//        this.modifyDate = modifyDate;
//    }
//
//    @Enumerated(EnumType.STRING)
//    public StatusEnum getStatus() {
//        return status;
//    }
//
//    public void setStatus(StatusEnum status) {
//        this.status = status;
//    }
}
