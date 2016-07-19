package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * t_persons_appointment
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_persons_appointment")
@ApiModel("t_persons_appointment")
public class PersonsAppointment extends CMSEntity {
    
    /**
     * requestId
     */
    @ApiModelProperty(value = "requestId", required = false)
    private String requestId;
    public String getRequestId() {
        return requestId;
    }
    public void setRequestId(String requestId) {
        this.requestId = requestId;
    }
    
    /**
     * personsCmAppRequestId
     */
    @ApiModelProperty(value = "personsCmAppRequestId", required = false)
    private String personsCmAppRequestId;
    public String getPersonsCmAppRequestId() {
        return personsCmAppRequestId;
    }
    public void setPersonsCmAppRequestId(String personsCmAppRequestId) {
        this.personsCmAppRequestId = personsCmAppRequestId;
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
     * petAge
     */
    @ApiModelProperty(value = "petAge", required = false)
    private String petAge;
    public String getPetAge() {
        return petAge;
    }
    public void setPetAge(String petAge) {
        this.petAge = petAge;
    }
    
    /**
     * symptom
     */
    @ApiModelProperty(value = "symptom", required = false)
    private String symptom;
    public String getSymptom() {
        return symptom;
    }
    public void setSymptom(String symptom) {
        this.symptom = symptom;
    }
    
    /**
     * wantHelp
     */
    @ApiModelProperty(value = "wantHelp", required = false)
    private String wantHelp;
    public String getWantHelp() {
        return wantHelp;
    }
    public void setWantHelp(String wantHelp) {
        this.wantHelp = wantHelp;
    }
    
}

