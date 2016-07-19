package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * t_persons_cm_app
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_persons_cm_app")
@ApiModel("t_persons_cm_app")
public class PersonsCmApp extends CMSEntity {
    
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
     * personId
     */
    @ApiModelProperty(value = "personId", required = false)
    private String personId;
    public String getPersonId() {
        return personId;
    }
    public void setPersonId(String personId) {
        this.personId = personId;
    }
    
    /**
     * focusDate
     */
    @ApiModelProperty(value = "focusDate", required = false)
    private String focusDate;
    public String getFocusDate() {
        return focusDate;
    }
    public void setFocusDate(String focusDate) {
        this.focusDate = focusDate;
    }
    
    /**
     * AM
     */
    @ApiModelProperty(value = "am", required = false)
    private String am;

    public String getAm() {
        return am;
    }

    public void setAm(String am) {
        this.am = am;
    }

    /**
     * PM
     */
    @ApiModelProperty(value = "pm", required = false)
    private String pm;

    public String getPm() {
        return pm;
    }

    public void setPm(String pm) {
        this.pm = pm;
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

