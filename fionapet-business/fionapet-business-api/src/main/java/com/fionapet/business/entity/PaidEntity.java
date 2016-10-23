package com.fionapet.business.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import java.util.Date;

/**
 * Created by tom on 16/6/29.
 */


@MappedSuperclass
public class PaidEntity extends StatusEntity {
    /**
     * 支付状态
     */
    @ApiModelProperty(value = "支付状态", required = false)
    @Column(columnDefinition = "支付状态")
    private String paidStatus = "SM00040";
    final public String getPaidStatus() {
        return paidStatus;
    }
    public void setPaidStatus(String paidStatus) {
        this.paidStatus = paidStatus;
    }

    /**
     * 支付时间
     */
    @ApiModelProperty(value = "支付时间", required = false)
    @Column(columnDefinition = "支付时间")
    private Date paidTime;
    public Date getPaidTime() {
        return paidTime;
    }
    public void setPaidTime(Date paidTime) {
        this.paidTime = paidTime;
    }
}
