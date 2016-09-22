package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.*;

/**
 * 商品和服务类型
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_item_type")
@ApiModel("商品和服务类型")
public class ItemType extends CMSEntity {
    private String cateNo;

    public String getCateNo() {
        return cateNo;
    }

    public void setCateNo(String cateNo) {
        this.cateNo = cateNo;
    }

    /**
     *商品编号
     */
    @ApiModelProperty(value = "itemCode", required = false)
    private String itemCode;
    public String getItemCode() {
        return itemCode;
    }
    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }
    
    /**
     * 商品名称 
     */
    @ApiModelProperty(value = "itemName", required = false)
    private String itemName;
    public String getItemName() {
        return itemName;
    }
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
    
//    /**
//     * 种类业务编号对应t_item_cate表的cate_no 
//     */
//    @ApiModelProperty(value = "cateNo")
//    private String cateNo;
//    public String getCateNo() {
//        return cateNo;
//    }
//    public void setCateNo(String cateNo) {
//        this.cateNo = cateNo;
//    }
    
    /**
     * 销售单位 
     */
    @ApiModelProperty(value = "packageUnit")
    private String packageUnit;
    public String getPackageUnit() {
        return packageUnit;
    }
    public void setPackageUnit(String packageUnit) {
        this.packageUnit = packageUnit;
    }
    
    /**
     * 处方单位
     */
    @ApiModelProperty(value = "recipeUnit")
    private String recipeUnit;
    public String getRecipeUnit() {
        return recipeUnit;
    }
    public void setRecipeUnit(String recipeUnit) {
        this.recipeUnit = recipeUnit;
    }
    
    /**
     * 规格
     */
    @ApiModelProperty(value = "itemStandard")
    private String itemStandard;
    public String getItemStandard() {
        return itemStandard;
    }
    public void setItemStandard(String itemStandard) {
        this.itemStandard = itemStandard;
    }
    
    /**
     * 商品服务种类t_item_cate 表cate_name
     */
    @ApiModelProperty(value = "itemStyle", required = false)
    private String itemStyle;
    public String getItemStyle() {
        return itemStyle;
    }
    public void setItemStyle(String itemStyle) {
        this.itemStyle = itemStyle;
    }
    
    /**
     * 条码
     */
    @ApiModelProperty(value = "barCode", required = false)
    private String barCode;
    public String getBarCode() {
        return barCode;
    }
    public void setBarCode(String barCode) {
        this.barCode = barCode;
    }
    
    /**
     * 业务类型ID  表t_busines_cate 的uuid
     */
    @ApiModelProperty(value = "busiTypeId", required = false)
    private String busiTypeId;
    public String getBusiTypeId() {
        return busiTypeId;
    }
    public void setBusiTypeId(String busiTypeId) {
        this.busiTypeId = busiTypeId;
    }
    
    /**
     * 零散比
     */
    @ApiModelProperty(value = "itemBulk", required = false)
    private Integer itemBulk;
    public Integer getItemBulk() {
        return itemBulk;
    }
    public void setItemBulk(Integer itemBulk) {
        this.itemBulk = itemBulk;
    }
    
    /**
     * 进货价格 
     */
    @ApiModelProperty(value = "inputPrice", required = false)
    private double inputPrice;
    public double getInputPrice() {
        return inputPrice;
    }
    public void setInputPrice(double inputPrice) {
        this.inputPrice = inputPrice;
    }
    
    /**
     * 条码
     */
    @ApiModelProperty(value = "dealerCode", required = false)
    private String dealerCode;
    public String getDealerCode() {
        return dealerCode;
    }
    public void setDealerCode(String dealerCode) {
        this.dealerCode = dealerCode;
    }
    
    /**
     * 条码名称
     */
    @ApiModelProperty(value = "dealerName", required = false)
    private String dealerName;
    public String getDealerName() {
        return dealerName;
    }
    public void setDealerName(String dealerName) {
        this.dealerName = dealerName;
    }
    
    /**
     * 销售价格
     */
    @ApiModelProperty(value = "sellPrice", required = false)
    private double sellPrice;
    public double getSellPrice() {
        return sellPrice;
    }
    public void setSellPrice(double sellPrice) {
        this.sellPrice = sellPrice;
    }
    
    /**
     * VIP是否打折
     */
    @ApiModelProperty(value = "isVipDiscount", required = false)
    private String isVipDiscount;
    public String getIsVipDiscount() {
        return isVipDiscount;
    }
    public void setIsVipDiscount(String isVipDiscount) {
        this.isVipDiscount = isVipDiscount;
    }
    
    /**
     * vip价格
     */
    @ApiModelProperty(value = "vipSellPrice", required = false)
    private double vipSellPrice;
    public double getVipSellPrice() {
        return vipSellPrice;
    }
    public void setVipSellPrice(double vipSellPrice) {
        this.vipSellPrice = vipSellPrice;
    }
    
    /**
     * 是否销售
     */
    @ApiModelProperty(value = "isSell", required = false)
    private String isSell;
    public String getIsSell() {
        return isSell;
    }
    public void setIsSell(String isSell) {
        this.isSell = isSell;
    }
    
    /**
     * 是否记库
     */
    @ApiModelProperty(value = "isCount", required = false)
    private String isCount;
    public String getIsCount() {
        return isCount;
    }
    public void setIsCount(String isCount) {
        this.isCount = isCount;
    }
    
    /**
     * 处方价格
     */
    @ApiModelProperty(value = "recipePrice", required = false)
    private double recipePrice;
    public double getRecipePrice() {
        return recipePrice;
    }
    public void setRecipePrice(double recipePrice) {
        this.recipePrice = recipePrice;
    }
    
    /**
     * 剂型
     */
    @ApiModelProperty(value = "drugForm", required = false)
    private String drugForm;
    public String getDrugForm() {
        return drugForm;
    }
    public void setDrugForm(String drugForm) {
        this.drugForm = drugForm;
    }
    
    /**
     * 库存上限
     */
    @ApiModelProperty(value = "wareUpLimit", required = false)
    private Integer wareUpLimit;
    public Integer getWareUpLimit() {
        return wareUpLimit;
    }
    public void setWareUpLimit(Integer wareUpLimit) {
        this.wareUpLimit = wareUpLimit;
    }
    
    /**
     * 库存下限
     */
    @ApiModelProperty(value = "wareDownLimit", required = false)
    private Integer wareDownLimit;
    public Integer getWareDownLimit() {
        return wareDownLimit;
    }
    public void setWareDownLimit(Integer wareDownLimit) {
        this.wareDownLimit = wareDownLimit;
    }
    
    /**
     * 有效天数
     */
    @ApiModelProperty(value = "safeDay", required = false)
    private Integer safeDay;
    public Integer getSafeDay() {
        return safeDay;
    }
    public void setSafeDay(Integer safeDay) {
        this.safeDay = safeDay;
    }
    
    /**
     * 用法
     */
    @ApiModelProperty(value = "useWay", required = false)
    private String useWay;
    public String getUseWay() {
        return useWay;
    }
    public void setUseWay(String useWay) {
        this.useWay = useWay;
    }
    
    /**
     * 组名
     */
    @ApiModelProperty(value = "groupName", required = false)
    private String groupName;
    public String getGroupName() {
        return groupName;
    }
    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }
    
    /**
     * 备注
     */
    @ApiModelProperty(value = "remark", required = false)
    private String remark;
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    
    /**
     * 拼音码
     */
    @ApiModelProperty(value = "inputCode", required = false)
    private String inputCode;
    public String getInputCode() {
        return inputCode;
    }
    public void setInputCode(String inputCode) {
        this.inputCode = inputCode;
    }
    
    /**
     * isScattered
     */
    @ApiModelProperty(value = "isScattered")
    private double isScattered;
    public double getIsScattered() {
        return isScattered;
    }
    public void setIsScattered(double isScattered) {
        this.isScattered = isScattered;
    }
    
    /**
     * 生产商
     */
    @ApiModelProperty(value = "location", required = false)
    private String location;
    public String getLocation() {
        return location;
    }
    public void setLocation(String location) {
        this.location = location;
    }
    
    /**
     * 是否可兑换
     */
    @ApiModelProperty(value = "isCanExchange", required = false)
    private String isCanExchange;
    public String getIsCanExchange() {
        return isCanExchange;
    }
    public void setIsCanExchange(String isCanExchange) {
        this.isCanExchange = isCanExchange;
    }
    
    /**
     * 兑换积分
     */
    @ApiModelProperty(value = "exchangeRewardPoint", required = false)
    private Integer exchangeRewardPoint;
    public Integer getExchangeRewardPoint() {
        return exchangeRewardPoint;
    }
    public void setExchangeRewardPoint(Integer exchangeRewardPoint) {
        this.exchangeRewardPoint = exchangeRewardPoint;
    }
    
}

