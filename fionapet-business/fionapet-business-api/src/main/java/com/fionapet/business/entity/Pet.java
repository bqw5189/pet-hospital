package com.fionapet.business.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.*;
import java.util.Date;

/**
 * 宠物
 * <p>
 * Created by tom on 2016-07-19 10:31:06.
 */
@Entity
@Table(name = "t_pet")
@ApiModel("宠物")
public class Pet extends CMSEntity {

    /**
     * 宠物编号
     */
    @ApiModelProperty(value = "宠物编号", required = false)
    @Column(columnDefinition = "宠物编号")
    private String petCode;

    public String getPetCode() {
        return petCode;
    }

    public void setPetCode(String petCode) {
        this.petCode = petCode;
    }

    /**
     * 主人ID
     */
    @ApiModelProperty(value = "主人ID", required = false)
    @Column(columnDefinition = "主人ID")
    private String gestId;

    public String getGestId() {
        return gestId;
    }

    public void setGestId(String gestId) {
        this.gestId = gestId;
    }

    /**
     * 主人编号
     */
    @ApiModelProperty(value = "主人编号", required = false)
    @Column(columnDefinition = "主人编号")
    private String gestCode;

    public String getGestCode() {
        return gestCode;
    }

    public void setGestCode(String gestCode) {
        this.gestCode = gestCode;
    }

    /**
     * 主人名称
     */
    @ApiModelProperty(value = "主人名称", required = false)
    @Column(columnDefinition = "主人名称")
    private String gestName;

    public String getGestName() {
        return gestName;
    }

    public void setGestName(String gestName) {
        this.gestName = gestName;
    }

    /**
     * 宠物名称
     */
    @ApiModelProperty(value = "宠物名称", required = false)
    @Column(columnDefinition = "宠物名称")
    private String petName;

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    /**
     * 宠物性别
     */
    @ApiModelProperty(value = "宠物性别", required = false)
    @Column(columnDefinition = "宠物性别")
    private UserDictDetail petSex;

    @ManyToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name = "pet_sex", referencedColumnName = "dictDetailCode")
    public UserDictDetail getPetSex() {
        return petSex;
    }

    public void setPetSex(UserDictDetail petSex) {
        this.petSex = petSex;
    }

    /**
     * 宠物生日
     */
    @ApiModelProperty(value = "宠物生日", required = false)
    @Column(columnDefinition = "宠物生日")
    private Date petBirthday;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+08:00")
    public Date getPetBirthday() {
        return petBirthday;
    }

    public void setPetBirthday(Date petBirthday) {
        this.petBirthday = petBirthday;
    }

    /**
     * 宠物年龄
     */
    @ApiModelProperty(value = "宠物年龄", required = false)
    @Column(columnDefinition = "宠物年龄")
    private int age;

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    /**
     * 宠物皮肤颜色
     */
    @ApiModelProperty(value = "宠物皮肤颜色", required = false)
    @Column(columnDefinition = "宠物皮肤颜色")
    private UserDictDetail petSkinColor;

    @ManyToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name = "pet_skin_color", referencedColumnName = "dictDetailCode")
    public UserDictDetail getPetSkinColor() {
        return petSkinColor;
    }

    public void setPetSkinColor(UserDictDetail petSkinColor) {
        this.petSkinColor = petSkinColor;
    }

    /**
     * 宠物品种
     */
    @ApiModelProperty(value = "宠物品种", required = false)
    @Column(columnDefinition = "宠物品种")
    private PetSmallRace petRace;

    @ManyToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name = "pet_race")
    public PetSmallRace getPetRace() {
        return petRace;
    }

    public void setPetRace(PetSmallRace petRace) {
        this.petRace = petRace;
    }

    /**
     * 宠物饲养
     */
    @ApiModelProperty(value = "绝育状态", required = false)
    @Column(columnDefinition = "绝育状态")
    private String petBreed;

    public String getPetBreed() {
        return petBreed;
    }

    public void setPetBreed(String petBreed) {
        this.petBreed = petBreed;
    }

    /**
     * 宠物重量
     */
    @ApiModelProperty(value = "宠物重量", required = false)
    @Column(columnDefinition = "宠物重量")
    private float petWeight;

    public float getPetWeight() {
        return petWeight;
    }

    public void setPetWeight(float petWeight) {
        this.petWeight = petWeight;
    }

    /**
     * 宠物高度
     */
    @ApiModelProperty(value = "宠物高度", required = false)
    @Column(columnDefinition = "宠物高度")
    private int petHeight;

    public int getPetHeight() {
        return petHeight;
    }

    public void setPetHeight(int petHeight) {
        this.petHeight = petHeight;
    }

    /**
     * 宠物宽度
     */
    @ApiModelProperty(value = "宠物宽度", required = false)
    @Column(columnDefinition = "宠物宽度")
    private int petSwidth;

    public int getPetSwidth() {
        return petSwidth;
    }

    public void setPetSwidth(int petSwidth) {
        this.petSwidth = petSwidth;
    }

    /**
     * 宠物长度
     */
    @ApiModelProperty(value = "宠物长度", required = false)
    @Column(columnDefinition = "宠物长度")
    private int petBodyLong;

    public int getPetBodyLong() {
        return petBodyLong;
    }

    public void setPetBodyLong(int petBodyLong) {
        this.petBodyLong = petBodyLong;
    }

    /**
     * 病例编号
     */
    @ApiModelProperty(value = "病例编号", required = true)
    @Column(columnDefinition = "病例编号")
    private String sickFileCode;

    public String getSickFileCode() {
        return sickFileCode;
    }

    public void setSickFileCode(String sickFileCode) {
        this.sickFileCode = sickFileCode;
    }

    /**
     * 宠物生日状态
     */
    @ApiModelProperty(value = "宠物生日状态", required = false)
    @Column(columnDefinition = "宠物生日状态")
    private String birthStatus;

    public String getBirthStatus() {
        return birthStatus;
    }

    public void setBirthStatus(String birthStatus) {
        this.birthStatus = birthStatus;
    }

    /**
     * 宠物头像
     */
    @ApiModelProperty(value = "宠物头像", required = false)
    @Column(columnDefinition = "宠物头像")
    private String petHead;

    public String getPetHead() {
        return petHead;
    }

    public void setPetHead(String petHead) {
        this.petHead = petHead;
    }

    /**
     * 宠物头像id
     */
    @ApiModelProperty(value = "宠物头像id", required = false)
    @Column(columnDefinition = "宠物头像id")
    private String petHeadId;

    public String getPetHeadId() {
        return petHeadId;
    }

    public void setPetHeadId(String petHeadId) {
        this.petHeadId = petHeadId;
    }

    /**
     * 宠物id
     */
    @ApiModelProperty(value = "宠物牌号", required = false)
    @Column(columnDefinition = "宠物牌号")
    private String dogBandId;

    public String getDogBandId() {
        return dogBandId;
    }

    public void setDogBandId(String dogBandId) {
        this.dogBandId = dogBandId;
    }

    /**
     * 医生类型名称
     */
    @ApiModelProperty(value = "医生类型名称", required = false)
    @Column(columnDefinition = "医生类型名称")
    private String mdicTypeName;

    public String getMdicTypeName() {
        return mdicTypeName;
    }

    public void setMdicTypeName(String mdicTypeName) {
        this.mdicTypeName = mdicTypeName;
    }

    /**
     * 说明
     */
    @ApiModelProperty(value = "说明", required = false)
    @Column(columnDefinition = "说明")
    private String remark;

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}

