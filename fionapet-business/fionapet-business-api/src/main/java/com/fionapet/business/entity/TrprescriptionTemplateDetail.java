package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 处方模版明细
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_trprescription_template_detail")
@ApiModel("处方模版明细")
public class TrprescriptionTemplateDetail extends CMSEntity {
    
    /**
     * templateId
     */
    @ApiModelProperty(value = "templateId", required = false)
    private String templateId;
    public String getTemplateId() {
        return templateId;
    }
    public void setTemplateId(String templateId) {
        this.templateId = templateId;
    }
    
    /**
     * templateNo
     */
    @ApiModelProperty(value = "templateNo", required = false)
    private String templateNo;
    public String getTemplateNo() {
        return templateNo;
    }
    public void setTemplateNo(String templateNo) {
        this.templateNo = templateNo;
    }
    
    /**
     * itemCode
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
     * itemName
     */
    @ApiModelProperty(value = "itemName", required = false)
    private String itemName;
    public String getItemName() {
        return itemName;
    }
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
    
    /**
     * itemNum
     */
    @ApiModelProperty(value = "itemNum", required = false)
    private String itemNum;
    public String getItemNum() {
        return itemNum;
    }
    public void setItemNum(String itemNum) {
        this.itemNum = itemNum;
    }
    
    /**
     * sellPrice
     */
    @ApiModelProperty(value = "sellPrice", required = false)
    private String sellPrice;
    public String getSellPrice() {
        return sellPrice;
    }
    public void setSellPrice(String sellPrice) {
        this.sellPrice = sellPrice;
    }
    
    /**
     * recipeUnit
     */
    @ApiModelProperty(value = "recipeUnit", required = false)
    private String recipeUnit;
    public String getRecipeUnit() {
        return recipeUnit;
    }
    public void setRecipeUnit(String recipeUnit) {
        this.recipeUnit = recipeUnit;
    }
    
    /**
     * useWay
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
     * gestId
     */
    @ApiModelProperty(value = "gestId", required = false)
    private String gestId;
    public String getGestId() {
        return gestId;
    }
    public void setGestId(String gestId) {
        this.gestId = gestId;
    }
    
    /**
     * itemStyle
     */
    @ApiModelProperty(value = "itemStyle", required = false)
    private String itemStyle;
    public String getItemStyle() {
        return itemStyle;
    }
    public void setItemStyle(String itemStyle) {
        this.itemStyle = itemStyle;
    }
    
}

