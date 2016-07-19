package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * 会员级别
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_member_level")
@ApiModel("会员级别")
public class MemberLevel extends CMSEntity {
    
    /**
     * 名称
     */
    @ApiModelProperty(value = "名称", required = false)@NotNull
    private String name;
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    
    /**
     * 信誉状态
     */
    @ApiModelProperty(value = "信誉状态", required = false)
    private Boolean isCredit;
    public Boolean getIsCredit() {
        return isCredit;
    }
    public void setIsCredit(Boolean isCredit) {
        this.isCredit = isCredit;
    }
    
    /**
     * 是否打折
     */
    @ApiModelProperty(value = "是否打折", required = false)
    private Boolean isDiscount;
    public Boolean getIsDiscount() {
        return isDiscount;
    }
    public void setIsDiscount(Boolean isDiscount) {
        this.isDiscount = isDiscount;
    }
    
    /**
     * 打折比率
     */
    @ApiModelProperty(value = "打折比率", required = false)
    private float discountRate;

    public float getDiscountRate() {
        return discountRate;
    }

    public void setDiscountRate(float discountRate) {
        this.discountRate = discountRate;
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

