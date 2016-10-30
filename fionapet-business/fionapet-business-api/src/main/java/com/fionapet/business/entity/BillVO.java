package com.fionapet.business.entity;

import org.apache.commons.lang3.time.DateFormatUtils;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * Created by tom on 16/10/23.
 */
@Entity
@Table(name = "v_gest_bill")
public class BillVO {

    @Id
    private String id;
    /**
     * 会员Id
     */
    private String gestId;
    /**
     * 会员编号
     */
    private String gestNo;
    /**
     * 会员名称
     */
    private String gestName;
    /**
     * 会员电话
     */
    private String phone;
    /**
     * 支付金额
     */
    private double total;
    /**
     * 最后支付时间
     */
    @Transient
    private String lastPayDate;

    public String getGestNo() {
        return gestNo;
    }

    public void setGestNo(String gestNo) {
        this.gestNo = gestNo;
    }

    public String getGestName() {
        return gestName;
    }

    public void setGestName(String gestName) {
        this.gestName = gestName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }


    public String getLastPayDate() {
        return lastPayDate;
    }

    public void setLastPayDate(String lastPayDate) {
        this.lastPayDate = lastPayDate;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getGestId() {
        return gestId;
    }

    public void setGestId(String gestId) {
        this.gestId = gestId;
    }

    @Override
    public String toString() {
        return "BillVO{" +
                "gestId='" + gestId + '\'' +
                ", gestNo='" + gestNo + '\'' +
                ", gestName='" + gestName + '\'' +
                ", phone='" + phone + '\'' +
                ", total=" + total +
                ", lastPayDate='" + lastPayDate + '\'' +
                '}';
    }
}
