package com.fionapet.business.facade.vo;

/**
 * Created by tom on 16/10/23.
 */
public class BillVO {
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
}
