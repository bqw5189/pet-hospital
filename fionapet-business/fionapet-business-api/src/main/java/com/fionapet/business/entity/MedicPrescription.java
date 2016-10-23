package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 医生处方
 * <p>
* Created by tom on 2016-07-18 15:37:42.
 */
@Entity
@Table(name = "t_medic_prescription")
@ApiModel("医生处方")
public class MedicPrescription extends CMSEntity {
    /**
     * 处方编号
     */
    @ApiModelProperty(value = "处方编号", required = false)
    
    @Column(columnDefinition = "处方编号")
    private String medicRecordCode;
    public String getMedicRecordCode() {
        return medicRecordCode;
    }
    public void setMedicRecordCode(String medicRecordCode) {
        this.medicRecordCode = medicRecordCode;
    }
    
    /**
     * 处方ID
     */
    @ApiModelProperty(value = "处方ID", required = false)
    
    @Column(columnDefinition = "处方ID")
    private String medicRecordId;
    public String getMedicRecordId() {
        return medicRecordId;
    }
    public void setMedicRecordId(String medicRecordId) {
        this.medicRecordId = medicRecordId;
    }
    
    /**
     * 类别名称
     */
    @ApiModelProperty(value = "类别名称", required = false)
    
    @Column(columnDefinition = "类别名称")
    private String prescriptionCode;
    public String getPrescriptionCode() {
        return prescriptionCode;
    }
    public void setPrescriptionCode(String prescriptionCode) {
        this.prescriptionCode = prescriptionCode;
    }
    
    /**
     * 类别编号
     */
    @ApiModelProperty(value = "类别编号", required = false)
    
    @Column(columnDefinition = "类别编号")
    private double prescriptionCost;
    public double getPrescriptionCost() {
        return prescriptionCost;
    }
    public void setPrescriptionCost(double prescriptionCost) {
        this.prescriptionCost = prescriptionCost;
    }
    
    /**
     * 养育人名称
     */
    @ApiModelProperty(value = "养育人名称", required = false)
    
    @Column(columnDefinition = "养育人名称")
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
     * 病例编号
     */
    @ApiModelProperty(value = "病例编号", required = false)
    
    @Column(columnDefinition = "病例编号")
    private String sickFileCode;
    public String getSickFileCode() {
        return sickFileCode;
    }
    public void setSickFileCode(String sickFileCode) {
        this.sickFileCode = sickFileCode;
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
     * 影像状态
     */
    @ApiModelProperty(value = "影像状态", required = false)

    @Column(columnDefinition = "影像状态")
    private String paidStatus;
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

}

