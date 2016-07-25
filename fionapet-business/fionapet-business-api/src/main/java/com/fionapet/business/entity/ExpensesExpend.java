package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 付出费用表
 * <p>
* Created by tom on 2016-07-25 09:32:34.
 */
@Entity
@Table(name = "t_expenses_expend")
@ApiModel("付出费用表")
public class ExpensesExpend extends CMSEntity {
    
    /**
     * 种类编号
     */
    @ApiModelProperty(value = "种类编号", required = false)
    
    @Column(columnDefinition = "种类编号")
    private String CateNo;
    public String getCateNo() {
        return CateNo;
    }
    public void setCateNo(String CateNo) {
        this.CateNo = CateNo;
    }
    
    /**
     * 种类名称
     */
    @ApiModelProperty(value = "种类名称", required = false)
    
    @Column(columnDefinition = "种类名称")
    private String CateName;
    public String getCateName() {
        return CateName;
    }
    public void setCateName(String CateName) {
        this.CateName = CateName;
    }
    
    /**
     * 日期
     */
    @ApiModelProperty(value = "日期", required = false)
    
    @Column(columnDefinition = "日期")
    private Date InputDate;
    public Date getInputDate() {
        return InputDate;
    }
    public void setInputDate(Date InputDate) {
        this.InputDate = InputDate;
    }
    
    /**
     * 账号
     */
    @ApiModelProperty(value = "账号", required = false)
    
    @Column(columnDefinition = "账号")
    private double Amount;
    public double getAmount() {
        return Amount;
    }
    public void setAmount(double Amount) {
        this.Amount = Amount;
    }
    
    /**
     * 说明
     */
    @ApiModelProperty(value = "说明", required = false)
    
    @Column(columnDefinition = "说明")
    private String Describe;
    public String getDescribe() {
        return Describe;
    }
    public void setDescribe(String Describe) {
        this.Describe = Describe;
    }
    
}

