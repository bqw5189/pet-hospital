package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 医生开处方
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_medic_prescription")
@ApiModel("医生开处方")
public class MedicPrescription extends CMSEntity {
    
    /**
     * enterpriseNo
     */
    @ApiModelProperty(value = "enterpriseNo", required = false)
    private String enterpriseNo;
    public String getEnterpriseNo() {
        return enterpriseNo;
    }
    public void setEnterpriseNo(String enterpriseNo) {
        this.enterpriseNo = enterpriseNo;
    }
    
    /**
     * medicRecordCode
     */
    @ApiModelProperty(value = "medicRecordCode", required = false)
    private String medicRecordCode;
    public String getMedicRecordCode() {
        return medicRecordCode;
    }
    public void setMedicRecordCode(String medicRecordCode) {
        this.medicRecordCode = medicRecordCode;
    }
    
    /**
     * medicRecordId
     */
    @ApiModelProperty(value = "medicRecordId", required = false)
    private String medicRecordId;
    public String getMedicRecordId() {
        return medicRecordId;
    }
    public void setMedicRecordId(String medicRecordId) {
        this.medicRecordId = medicRecordId;
    }
    
    /**
     * prescriptionCode
     */
    @ApiModelProperty(value = "prescriptionCode", required = false)
    private String prescriptionCode;
    public String getPrescriptionCode() {
        return prescriptionCode;
    }
    public void setPrescriptionCode(String prescriptionCode) {
        this.prescriptionCode = prescriptionCode;
    }
    
    /**
     * prescriptionCost
     */
    @ApiModelProperty(value = "prescriptionCost", required = false)
    private double prescriptionCost;
    public double getPrescriptionCost() {
        return prescriptionCost;
    }
    public void setPrescriptionCost(double prescriptionCost) {
        this.prescriptionCost = prescriptionCost;
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
     * doctor
     */
    @ApiModelProperty(value = "doctor", required = false)
    private String doctor;
    public String getDoctor() {
        return doctor;
    }
    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }
    
    /**
     * paidStatus
     */
    @ApiModelProperty(value = "paidStatus", required = false)
    private String paidStatus;
    public String getPaidStatus() {
        return paidStatus;
    }
    public void setPaidStatus(String paidStatus) {
        this.paidStatus = paidStatus;
    }
    
    /**
     * paidTime
     */
    @ApiModelProperty(value = "paidTime", required = false)
    private Date paidTime;
    public Date getPaidTime() {
        return paidTime;
    }
    public void setPaidTime(Date paidTime) {
        this.paidTime = paidTime;
    }
    
}

