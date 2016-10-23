package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 医生登记记录明细 --  挂号
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_medic_register_record")
@ApiModel("医生登记记录明细")
public class MedicRegisterRecord extends CMSEntity {

    /**
     * 登记编号
     */
    @ApiModelProperty(value = "登记编号", required = false)
    
    @Column(columnDefinition = "登记编号")
    private String registerNo;
    public String getRegisterNo() {
        return registerNo;
    }
    public void setRegisterNo(String registerNo) {
        this.registerNo = registerNo;
    }
    
    /**
     * 登记类型
     */
    @ApiModelProperty(value = "登记类型", required = false)
    
    @Column(columnDefinition = "登记类型")
    private String registerStyle;
    public String getRegisterStyle() {
        return registerStyle;
    }
    public void setRegisterStyle(String registerStyle) {
        this.registerStyle = registerStyle;
    }
    
    /**
     * 类型名称
     */
    @ApiModelProperty(value = "类型名称", required = false)
    
    @Column(columnDefinition = "类型名称")
    private String itemName;
    public String getItemName() {
        return itemName;
    }
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
    
    /**
     * 类型编号
     */
    @ApiModelProperty(value = "类型编号", required = false)
    
    @Column(columnDefinition = "类型编号")
    private String itemCode;
    public String getItemCode() {
        return itemCode;
    }
    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }
    
    /**
     * 登记价格
     */
    @ApiModelProperty(value = "登记价格", required = false)
    
    @Column(columnDefinition = "登记价格")
    private double registerPrice;
    public double getRegisterPrice() {
        return registerPrice;
    }
    public void setRegisterPrice(double registerPrice) {
        this.registerPrice = registerPrice;
    }
    
    /**
     * 皮肤文件编号
     */
    @ApiModelProperty(value = "皮肤文件编号", required = false)
    
    @Column(columnDefinition = "皮肤文件编号")
    private String sickFileCode;
    public String getSickFileCode() {
        return sickFileCode;
    }
    public void setSickFileCode(String sickFileCode) {
        this.sickFileCode = sickFileCode;
    }
    
    /**
     * 宠物主人名称
     */
    @ApiModelProperty(value = "宠物主人名称", required = false)
    
    @Column(columnDefinition = "宠物主人名称")
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
     * 宠物id
     */
    @ApiModelProperty(value = "宠物id", required = false)
    
    @Column(columnDefinition = "宠物id")
    private String petId;
    public String getPetId() {
        return petId;
    }
    public void setPetId(String petId) {
        this.petId = petId;
    }
    
    /**
     * 操作人
     */
    @ApiModelProperty(value = "操作人", required = false)
    
    @Column(columnDefinition = "操作人")
    private String operatorMan;
    public String getOperatorMan() {
        return operatorMan;
    }
    public void setOperatorMan(String operatorMan) {
        this.operatorMan = operatorMan;
    }
    
    /**
     * 医生
     */
    @ApiModelProperty(value = "医生", required = false)
    
    @Column(columnDefinition = "医生")
    private String doctor;
    public String getDoctor() {
        return doctor;
    }
    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }
    
    /**
     * 医生id
     */
    @ApiModelProperty(value = "医生id", required = false)
    
    @Column(columnDefinition = "医生id")
    private String doctorId;
    public String getDoctorId() {
        return doctorId;
    }
    public void setDoctorId(String doctorId) {
        this.doctorId = doctorId;
    }
    
    /**
     * 影像状态
     */
    @ApiModelProperty(value = "影像状态", required = false)

    @Column(columnDefinition = "影像状态")
    private String paidStatus = "SM00040";
    public String getPaidStatus() {
        return paidStatus;
    }
    public void setPaidStatus(String paidStatus) {
        this.paidStatus = paidStatus;
    }

    /**
     * 影像时间
     */
    @ApiModelProperty(value = "影像时间", required = false)

    @Column(columnDefinition = "影像时间")
    private Date paidTime;
    public Date getPaidTime() {
        return paidTime;
    }
    public void setPaidTime(Date paidTime) {
        this.paidTime = paidTime;
    }

    /**
     * 原因
     */
    @ApiModelProperty(value = "原因", required = false)
    
    @Column(columnDefinition = "原因")
    private String pauseReason;
    public String getPauseReason() {
        return pauseReason;
    }
    public void setPauseReason(String pauseReason) {
        this.pauseReason = pauseReason;
    }
    
    /**
     * 助理id
     */
    @ApiModelProperty(value = "助理id", required = false)
    
    @Column(columnDefinition = "助理id")
    private String assistantDoctorId;
    public String getAssistantDoctorId() {
        return assistantDoctorId;
    }
    public void setAssistantDoctorId(String assistantDoctorId) {
        this.assistantDoctorId = assistantDoctorId;
    }
    
    /**
     * 助理名称
     */
    @ApiModelProperty(value = "助理名称", required = false)
    
    @Column(columnDefinition = "助理名称")
    private String assistantDoctorName;
    public String getAssistantDoctorName() {
        return assistantDoctorName;
    }
    public void setAssistantDoctorName(String assistantDoctorName) {
        this.assistantDoctorName = assistantDoctorName;
    }
    
}

