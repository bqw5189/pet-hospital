package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 化验单明细
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_medic_chemicalexam")
@ApiModel("化验单明细")
public class MedicChemicalexam extends CMSEntity {
    
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
     * chemicalExamCode
     */
    @ApiModelProperty(value = "chemicalExamCode", required = false)
    private String chemicalExamCode;
    public String getChemicalExamCode() {
        return chemicalExamCode;
    }
    public void setChemicalExamCode(String chemicalExamCode) {
        this.chemicalExamCode = chemicalExamCode;
    }
    
    /**
     * chemicalExamCost
     */
    @ApiModelProperty(value = "chemicalExamCost", required = false)
    private double chemicalExamCost;
    public double getChemicalExamCost() {
        return chemicalExamCost;
    }
    public void setChemicalExamCost(double chemicalExamCost) {
        this.chemicalExamCost = chemicalExamCost;
    }
    
    /**
     * cheTestName
     */
    @ApiModelProperty(value = "cheTestName", required = false)
    private String cheTestName;
    public String getCheTestName() {
        return cheTestName;
    }
    public void setCheTestName(String cheTestName) {
        this.cheTestName = cheTestName;
    }
    
    /**
     * cheTestUnit
     */
    @ApiModelProperty(value = "cheTestUnit", required = false)
    private String cheTestUnit;
    public String getCheTestUnit() {
        return cheTestUnit;
    }
    public void setCheTestUnit(String cheTestUnit) {
        this.cheTestUnit = cheTestUnit;
    }
    
    /**
     * chemicalResult
     */
    @ApiModelProperty(value = "chemicalResult", required = false)
    private String chemicalResult;
    public String getChemicalResult() {
        return chemicalResult;
    }
    public void setChemicalResult(String chemicalResult) {
        this.chemicalResult = chemicalResult;
    }
    
    /**
     * itemCode
     */
    @ApiModelProperty(value = "itemCode", required = false)
    private String itemCode;
    public String getItemCode() {
        return itemCode;
    }
    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
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
     * examTime
     */
    @ApiModelProperty(value = "examTime", required = false)
    private Date examTime;
    public Date getExamTime() {
        return examTime;
    }
    public void setExamTime(Date examTime) {
        this.examTime = examTime;
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

