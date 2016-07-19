package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 化验单明细
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_medic_chemical_exam_detail")
@ApiModel("化验单明细")
public class MedicChemicalExamDetail extends CMSEntity {
    
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
     * examTypeId
     */
    @ApiModelProperty(value = "examTypeId", required = false)
    private String examTypeId;
    public String getExamTypeId() {
        return examTypeId;
    }
    public void setExamTypeId(String examTypeId) {
        this.examTypeId = examTypeId;
    }
    
    /**
     * chemicalExamId
     */
    @ApiModelProperty(value = "chemicalExamId", required = false)
    private String chemicalExamId;
    public String getChemicalExamId() {
        return chemicalExamId;
    }
    public void setChemicalExamId(String chemicalExamId) {
        this.chemicalExamId = chemicalExamId;
    }
    
    /**
     * chemicalExamName
     */
    @ApiModelProperty(value = "chemicalExamName", required = false)
    private String chemicalExamName;
    public String getChemicalExamName() {
        return chemicalExamName;
    }
    public void setChemicalExamName(String chemicalExamName) {
        this.chemicalExamName = chemicalExamName;
    }
    
    /**
     * examName
     */
    @ApiModelProperty(value = "examName", required = false)
    private String examName;
    public String getExamName() {
        return examName;
    }
    public void setExamName(String examName) {
        this.examName = examName;
    }
    
    /**
     * examValue
     */
    @ApiModelProperty(value = "examValue", required = false)
    private double examValue;
    public double getExamValue() {
        return examValue;
    }
    public void setExamValue(double examValue) {
        this.examValue = examValue;
    }
    
    /**
     * examUpLimit
     */
    @ApiModelProperty(value = "examUpLimit", required = false)
    private double examUpLimit;
    public double getExamUpLimit() {
        return examUpLimit;
    }
    public void setExamUpLimit(double examUpLimit) {
        this.examUpLimit = examUpLimit;
    }
    
    /**
     * examDownLimit
     */
    @ApiModelProperty(value = "examDownLimit", required = false)
    private double examDownLimit;
    public double getExamDownLimit() {
        return examDownLimit;
    }
    public void setExamDownLimit(double examDownLimit) {
        this.examDownLimit = examDownLimit;
    }
    
    /**
     * cheTestWord
     */
    @ApiModelProperty(value = "cheTestWord", required = false)
    private String cheTestWord;
    public String getCheTestWord() {
        return cheTestWord;
    }
    public void setCheTestWord(String cheTestWord) {
        this.cheTestWord = cheTestWord;
    }
    
    /**
     * examPiece
     */
    @ApiModelProperty(value = "examPiece", required = false)
    private String examPiece;
    public String getExamPiece() {
        return examPiece;
    }
    public void setExamPiece(String examPiece) {
        this.examPiece = examPiece;
    }
    
    /**
     * examAge
     */
    @ApiModelProperty(value = "examAge", required = false)
    private String examAge;
    public String getExamAge() {
        return examAge;
    }
    public void setExamAge(String examAge) {
        this.examAge = examAge;
    }
    
    /**
     * examSign
     */
    @ApiModelProperty(value = "examSign", required = false)
    private String examSign;
    public String getExamSign() {
        return examSign;
    }
    public void setExamSign(String examSign) {
        this.examSign = examSign;
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
    
}

