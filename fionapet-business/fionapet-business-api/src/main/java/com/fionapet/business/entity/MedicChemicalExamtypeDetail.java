package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 医生化验实例类型细节表
 * <p>
* Created by tom on 2016-07-18 11:47:03.
 */
@Entity
@Table(name = "t_medic_chemical_examtype_detail")
@ApiModel("医生化验实例类型细节表")
public class MedicChemicalExamtypeDetail extends CMSEntity {
    
    /**
     * 实验类型ID
     */
    @ApiModelProperty(value = "实验类型ID", required = false)
    
    @Column(columnDefinition = "实验类型ID")
    private String cheTestTypdId;
    public String getCheTestTypdId() {
        return cheTestTypdId;
    }
    public void setCheTestTypdId(String cheTestTypdId) {
        this.cheTestTypdId = cheTestTypdId;
    }
    
    /**
     * 宠物竞赛名称
     */
    @ApiModelProperty(value = "宠物竞赛名称", required = false)
    
    @Column(columnDefinition = "宠物竞赛名称")
    private String petRaceName;
    public String getPetRaceName() {
        return petRaceName;
    }
    public void setPetRaceName(String petRaceName) {
        this.petRaceName = petRaceName;
    }
    
    /**
     * 宠物起始年龄月
     */
    @ApiModelProperty(value = "宠物起始年龄月", required = false)
    
    @Column(columnDefinition = "宠物起始年龄月")
    private Integer petAgeMothFrom;
    public Integer getPetAgeMothFrom() {
        return petAgeMothFrom;
    }
    public void setPetAgeMothFrom(Integer petAgeMothFrom) {
        this.petAgeMothFrom = petAgeMothFrom;
    }
    
    /**
     * 宠物结束年龄月
     */
    @ApiModelProperty(value = "宠物结束年龄月", required = false)
    
    @Column(columnDefinition = "宠物结束年龄月")
    private Integer petAgeMothTo;
    public Integer getPetAgeMothTo() {
        return petAgeMothTo;
    }
    public void setPetAgeMothTo(Integer petAgeMothTo) {
        this.petAgeMothTo = petAgeMothTo;
    }
    
    /**
     * 引用上届值
     */
    @ApiModelProperty(value = "引用上届值", required = false)
    
    @Column(columnDefinition = "引用上届值")
    private double referenceValueUp;
    public double getReferenceValueUp() {
        return referenceValueUp;
    }
    public void setReferenceValueUp(double referenceValueUp) {
        this.referenceValueUp = referenceValueUp;
    }
    
    /**
     * 引用下届值
     */
    @ApiModelProperty(value = "引用下届值", required = false)
    
    @Column(columnDefinition = "引用下届值")
    private double referenceValueDonw;
    public double getReferenceValueDonw() {
        return referenceValueDonw;
    }
    public void setReferenceValueDonw(double referenceValueDonw) {
        this.referenceValueDonw = referenceValueDonw;
    }
    
    /**
     * 宠物年龄词汇
     */
    @ApiModelProperty(value = "宠物年龄词汇", required = false)
    
    @Column(columnDefinition = "宠物年龄词汇")
    private String petAgeWord;
    public String getPetAgeWord() {
        return petAgeWord;
    }
    public void setPetAgeWord(String petAgeWord) {
        this.petAgeWord = petAgeWord;
    }
    
    /**
     * 结论
     */
    @ApiModelProperty(value = "结论", required = false)
    
    @Column(columnDefinition = "结论")
    private String result;
    public String getResult() {
        return result;
    }
    public void setResult(String result) {
        this.result = result;
    }
    
}

