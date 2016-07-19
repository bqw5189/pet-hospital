package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 序列号
 * <p>
* Created by tom on 2016-07-18 11:47:03.
 */
@Entity
@Table(name = "t_reward_point_log")
@ApiModel("序列号")
public class RewardPointLog extends CMSEntity {
    
    /**
     * 宠物主人ID
     */
    @ApiModelProperty(value = "宠物主人ID", required = false)
    
    @Column(columnDefinition = "宠物主人ID")
    private String gestId;
    public String getGestId() {
        return gestId;
    }
    public void setGestId(String gestId) {
        this.gestId = gestId;
    }
    
    /**
     * settleId
     */
    @ApiModelProperty(value = "settleId", required = false)
    
    @Column(columnDefinition = "settleId")
    private String settleId;
    public String getSettleId() {
        return settleId;
    }
    public void setSettleId(String settleId) {
        this.settleId = settleId;
    }
    
    /**
     * detailId
     */
    @ApiModelProperty(value = "detailId", required = false)
    
    @Column(columnDefinition = "detailId")
    private String detailId;
    public String getDetailId() {
        return detailId;
    }
    public void setDetailId(String detailId) {
        this.detailId = detailId;
    }
    
    /**
     * itemCode
     */
    @ApiModelProperty(value = "itemCode", required = false)
    
    @Column(columnDefinition = "itemCode")
    private String itemCode;
    public String getItemCode() {
        return itemCode;
    }
    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }
    
    /**
     * sellPrice
     */
    @ApiModelProperty(value = "sellPrice", required = false)
    
    @Column(columnDefinition = "sellPrice")
    private String sellPrice;
    public String getSellPrice() {
        return sellPrice;
    }
    public void setSellPrice(String sellPrice) {
        this.sellPrice = sellPrice;
    }
    
    /**
     * infactPrice
     */
    @ApiModelProperty(value = "infactPrice", required = false)
    
    @Column(columnDefinition = "infactPrice")
    private double infactPrice;
    public double getInfactPrice() {
        return infactPrice;
    }
    public void setInfactPrice(double infactPrice) {
        this.infactPrice = infactPrice;
    }
    
    /**
     * discountMoney
     */
    @ApiModelProperty(value = "discountMoney", required = false)
    
    @Column(columnDefinition = "discountMoney")
    private double discountMoney;
    public double getDiscountMoney() {
        return discountMoney;
    }
    public void setDiscountMoney(double discountMoney) {
        this.discountMoney = discountMoney;
    }
    
    /**
     * itemNum
     */
    @ApiModelProperty(value = "itemNum", required = false)
    
    @Column(columnDefinition = "itemNum")
    private Integer itemNum;
    public Integer getItemNum() {
        return itemNum;
    }
    public void setItemNum(Integer itemNum) {
        this.itemNum = itemNum;
    }
    
    /**
     * sumOriginalMoney
     */
    @ApiModelProperty(value = "sumOriginalMoney", required = false)
    
    @Column(columnDefinition = "sumOriginalMoney")
    private double sumOriginalMoney;
    public double getSumOriginalMoney() {
        return sumOriginalMoney;
    }
    public void setSumOriginalMoney(double sumOriginalMoney) {
        this.sumOriginalMoney = sumOriginalMoney;
    }
    
    /**
     * totalCost
     */
    @ApiModelProperty(value = "totalCost", required = false)
    
    @Column(columnDefinition = "totalCost")
    private double totalCost;
    public double getTotalCost() {
        return totalCost;
    }
    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }
    
    /**
     * sumDiscountMoney
     */
    @ApiModelProperty(value = "sumDiscountMoney", required = false)
    
    @Column(columnDefinition = "sumDiscountMoney")
    private double sumDiscountMoney;
    public double getSumDiscountMoney() {
        return sumDiscountMoney;
    }
    public void setSumDiscountMoney(double sumDiscountMoney) {
        this.sumDiscountMoney = sumDiscountMoney;
    }
    
    /**
     * exchangePointPrice
     */
    @ApiModelProperty(value = "exchangePointPrice", required = false)
    
    @Column(columnDefinition = "exchangePointPrice")
    private Integer exchangePointPrice;
    public Integer getExchangePointPrice() {
        return exchangePointPrice;
    }
    public void setExchangePointPrice(Integer exchangePointPrice) {
        this.exchangePointPrice = exchangePointPrice;
    }
    
    /**
     * exchangePointTotal
     */
    @ApiModelProperty(value = "exchangePointTotal", required = false)
    
    @Column(columnDefinition = "exchangePointTotal")
    private Integer exchangePointTotal;
    public Integer getExchangePointTotal() {
        return exchangePointTotal;
    }
    public void setExchangePointTotal(Integer exchangePointTotal) {
        this.exchangePointTotal = exchangePointTotal;
    }
    
    /**
     * sign
     */
    @ApiModelProperty(value = "sign", required = false)
    
    @Column(columnDefinition = "sign")
    private Integer sign;
    public Integer getSign() {
        return sign;
    }
    public void setSign(Integer sign) {
        this.sign = sign;
    }
    
    /**
     * uniqueSign
     */
    @ApiModelProperty(value = "uniqueSign", required = false)
    
    @Column(columnDefinition = "uniqueSign")
    private String uniqueSign;
    public String getUniqueSign() {
        return uniqueSign;
    }
    public void setUniqueSign(String uniqueSign) {
        this.uniqueSign = uniqueSign;
    }
    
}

