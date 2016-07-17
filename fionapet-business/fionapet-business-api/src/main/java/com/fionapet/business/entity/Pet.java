package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 宠物
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_pet")
@ApiModel("宠物")
public class Pet extends CMSEntity {
    
    /**
     * petCode
     */
    @ApiModelProperty(value = "petCode", required = false)
    private String petCode;
    public String getPetCode() {
        return petCode;
    }
    public void setPetCode(String petCode) {
        this.petCode = petCode;
    }
    
    /**
     * gestId
     */
    @ApiModelProperty(value = "gestId", required = false)
    private String gestId;
    public String getGestId() {
        return gestId;
    }
    public void setGestId(String gestId) {
        this.gestId = gestId;
    }
    
    /**
     * gestCode
     */
    @ApiModelProperty(value = "gestCode", required = false)
    private String gestCode;
    public String getGestCode() {
        return gestCode;
    }
    public void setGestCode(String gestCode) {
        this.gestCode = gestCode;
    }
    
    /**
     * gestName
     */
    @ApiModelProperty(value = "gestName", required = false)
    private String gestName;
    public String getGestName() {
        return gestName;
    }
    public void setGestName(String gestName) {
        this.gestName = gestName;
    }
    
    /**
     * petName
     */
    @ApiModelProperty(value = "petName", required = false)
    private String petName;
    public String getPetName() {
        return petName;
    }
    public void setPetName(String petName) {
        this.petName = petName;
    }
    
    /**
     * petSex
     */
    @ApiModelProperty(value = "petSex", required = false)
    private String petSex;
    public String getPetSex() {
        return petSex;
    }
    public void setPetSex(String petSex) {
        this.petSex = petSex;
    }
    
    /**
     * petBirthday
     */
    @ApiModelProperty(value = "petBirthday", required = false)
    private String petBirthday;
    public String getPetBirthday() {
        return petBirthday;
    }
    public void setPetBirthday(String petBirthday) {
        this.petBirthday = petBirthday;
    }
    
    /**
     * age
     */
    @ApiModelProperty(value = "age", required = false)
    private String age;
    public String getAge() {
        return age;
    }
    public void setAge(String age) {
        this.age = age;
    }
    
    /**
     * petSkinColor
     */
    @ApiModelProperty(value = "petSkinColor", required = false)
    private String petSkinColor;
    public String getPetSkinColor() {
        return petSkinColor;
    }
    public void setPetSkinColor(String petSkinColor) {
        this.petSkinColor = petSkinColor;
    }
    
    /**
     * petRace
     */
    @ApiModelProperty(value = "petRace", required = false)
    private String petRace;
    public String getPetRace() {
        return petRace;
    }
    public void setPetRace(String petRace) {
        this.petRace = petRace;
    }
    
    /**
     * petBreed
     */
    @ApiModelProperty(value = "petBreed", required = false)
    private String petBreed;
    public String getPetBreed() {
        return petBreed;
    }
    public void setPetBreed(String petBreed) {
        this.petBreed = petBreed;
    }
    
    /**
     * petWeight
     */
    @ApiModelProperty(value = "petWeight", required = false)
    private String petWeight;
    public String getPetWeight() {
        return petWeight;
    }
    public void setPetWeight(String petWeight) {
        this.petWeight = petWeight;
    }
    
    /**
     * petHeight
     */
    @ApiModelProperty(value = "petHeight", required = false)
    private String petHeight;
    public String getPetHeight() {
        return petHeight;
    }
    public void setPetHeight(String petHeight) {
        this.petHeight = petHeight;
    }
    
    /**
     * petSwidth
     */
    @ApiModelProperty(value = "petSwidth", required = false)
    private String petSwidth;
    public String getPetSwidth() {
        return petSwidth;
    }
    public void setPetSwidth(String petSwidth) {
        this.petSwidth = petSwidth;
    }
    
    /**
     * petBodyLong
     */
    @ApiModelProperty(value = "petBodyLong", required = false)
    private String petBodyLong;
    public String getPetBodyLong() {
        return petBodyLong;
    }
    public void setPetBodyLong(String petBodyLong) {
        this.petBodyLong = petBodyLong;
    }
    
    /**
     * sickFileCode
     */
    @ApiModelProperty(value = "sickFileCode", required = false)
    private String sickFileCode;
    public String getSickFileCode() {
        return sickFileCode;
    }
    public void setSickFileCode(String sickFileCode) {
        this.sickFileCode = sickFileCode;
    }
    
    /**
     * birthStatus
     */
    @ApiModelProperty(value = "birthStatus", required = false)
    private String birthStatus;
    public String getBirthStatus() {
        return birthStatus;
    }
    public void setBirthStatus(String birthStatus) {
        this.birthStatus = birthStatus;
    }
    
    /**
     * petHead
     */
    @ApiModelProperty(value = "petHead", required = false)
    private String petHead;
    public String getPetHead() {
        return petHead;
    }
    public void setPetHead(String petHead) {
        this.petHead = petHead;
    }
    
    /**
     * petHeadId
     */
    @ApiModelProperty(value = "petHeadId", required = false)
    private String petHeadId;
    public String getPetHeadId() {
        return petHeadId;
    }
    public void setPetHeadId(String petHeadId) {
        this.petHeadId = petHeadId;
    }
    
    /**
     * dogBandId
     */
    @ApiModelProperty(value = "dogBandId", required = false)
    private String dogBandId;
    public String getDogBandId() {
        return dogBandId;
    }
    public void setDogBandId(String dogBandId) {
        this.dogBandId = dogBandId;
    }
    
    /**
     * mdicTypeName
     */
    @ApiModelProperty(value = "mdicTypeName", required = false)
    private String mdicTypeName;
    public String getMdicTypeName() {
        return mdicTypeName;
    }
    public void setMdicTypeName(String mdicTypeName) {
        this.mdicTypeName = mdicTypeName;
    }
    
    /**
     * remark
     */
    @ApiModelProperty(value = "remark", required = false)
    private String remark;
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    
}

