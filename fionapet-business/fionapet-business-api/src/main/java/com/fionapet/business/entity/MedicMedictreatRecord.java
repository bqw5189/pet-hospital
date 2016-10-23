package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 医生处理记录-就诊记录
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_medic_medictreat_record")
@ApiModel("医生处理记录")
public class MedicMedictreatRecord extends CMSEntity {
    
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
     * 医生对待编号
     */
    @ApiModelProperty(value = "医生对待编号", required = false)
    
    @Column(columnDefinition = "医生对待编号")
    private String mediTreatmentCode;
    public String getMediTreatmentCode() {
        return mediTreatmentCode;
    }
    public void setMediTreatmentCode(String mediTreatmentCode) {
        this.mediTreatmentCode = mediTreatmentCode;
    }
    
    /**
     * 注册编号
     */
    @ApiModelProperty(value = "注册编号", required = false)
    
    @Column(columnDefinition = "注册编号")
    private String registerNo;
    public String getRegisterNo() {
        return registerNo;
    }
    public void setRegisterNo(String registerNo) {
        this.registerNo = registerNo;
    }
    
    /**
     * 温度
     */
    @ApiModelProperty(value = "温度", required = false)
    
    @Column(columnDefinition = "温度")
    private String temperature;
    public String getTemperature() {
        return temperature;
    }
    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }
    
    /**
     * 心跳
     */
    @ApiModelProperty(value = "心跳", required = false)
    
    @Column(columnDefinition = "心跳")
    private String heartbeat;
    public String getHeartbeat() {
        return heartbeat;
    }
    public void setHeartbeat(String heartbeat) {
        this.heartbeat = heartbeat;
    }
    
    /**
     * 气息
     */
    @ApiModelProperty(value = "气息", required = false)
    
    @Column(columnDefinition = "气息")
    private String breath;
    public String getBreath() {
        return breath;
    }
    public void setBreath(String breath) {
        this.breath = breath;
    }
    
    /**
     * 血压
     */
    @ApiModelProperty(value = "血压", required = false)
    
    @Column(columnDefinition = "血压")
    private String bloodPressure;
    public String getBloodPressure() {
        return bloodPressure;
    }
    public void setBloodPressure(String bloodPressure) {
        this.bloodPressure = bloodPressure;
    }
    
    /**
     * 条理
     */
    @ApiModelProperty(value = "条理", required = false)
    
    @Column(columnDefinition = "条理")
    private String rheme;
    public String getRheme() {
        return rheme;
    }
    public void setRheme(String rheme) {
        this.rheme = rheme;
    }
    
    /**
     * 经过产看的情况
     */
    @ApiModelProperty(value = "经过产看的情况", required = false)
    
    @Column(columnDefinition = "经过产看的情况")
    private String examination;
    public String getExamination() {
        return examination;
    }
    public void setExamination(String examination) {
        this.examination = examination;
    }
    
    /**
     * 诊断
     */
    @ApiModelProperty(value = "诊断", required = false)
    
    @Column(columnDefinition = "诊断")
    private String diagnosed;
    public String getDiagnosed() {
        return diagnosed;
    }
    public void setDiagnosed(String diagnosed) {
        this.diagnosed = diagnosed;
    }
    
    /**
     * 医生意见
     */
    @ApiModelProperty(value = "医生意见", required = false)
    
    @Column(columnDefinition = "医生意见")
    private String doctorAdvice;
    public String getDoctorAdvice() {
        return doctorAdvice;
    }
    public void setDoctorAdvice(String doctorAdvice) {
        this.doctorAdvice = doctorAdvice;
    }
    
    /**
     * 影像地位
     */
    @ApiModelProperty(value = "影像地位", required = false)
    
    @Column(columnDefinition = "影像地位")
    private String paidStatus;
    public String getPaidStatus() {
        return paidStatus;
    }
    public void setPaidStatus(String paidStatus) {
        this.paidStatus = paidStatus;
    }
    
    /**
     * 宠物主人名字
     */
    @ApiModelProperty(value = "宠物主人名字", required = false)
    
    @Column(columnDefinition = "宠物主人名字")
    private String gestName;
    public String getGestName() {
        return gestName;
    }
    public void setGestName(String gestName) {
        this.gestName = gestName;
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
    
    /**
     * 助理ID
     */
    @ApiModelProperty(value = "助理ID", required = false)
    
    @Column(columnDefinition = "助理ID")
    private String assistantDoctorId;
    public String getAssistantDoctorId() {
        return assistantDoctorId;
    }
    public void setAssistantDoctorId(String assistantDoctorId) {
        this.assistantDoctorId = assistantDoctorId;
    }
    
}

