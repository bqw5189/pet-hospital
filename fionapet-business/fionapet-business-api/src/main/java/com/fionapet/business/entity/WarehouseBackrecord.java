package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 退回记录
 * <p>
* Created by tom on 2016-07-18 11:47:03.
 */
@Entity
@Table(name = "t_warehouse_backrecord")
@ApiModel("退回记录")
public class WarehouseBackrecord extends CMSEntity {
    
    /**
     * 退回仓库编号
     */
    @ApiModelProperty(value = "退回仓库编号", required = false)
    
    @Column(columnDefinition = "退回仓库编号")
    private String backWarehouseCode;
    public String getBackWarehouseCode() {
        return backWarehouseCode;
    }
    public void setBackWarehouseCode(String backWarehouseCode) {
        this.backWarehouseCode = backWarehouseCode;
    }
    
    /**
     * 退回仓库人
     */
    @ApiModelProperty(value = "退回仓库人", required = false)
    
    @Column(columnDefinition = "退回仓库人")
    private String backWarehouseMan;
    public String getBackWarehouseMan() {
        return backWarehouseMan;
    }
    public void setBackWarehouseMan(String backWarehouseMan) {
        this.backWarehouseMan = backWarehouseMan;
    }
    
    /**
     * 退回仓库总价
     */
    @ApiModelProperty(value = "退回仓库总价", required = false)
    
    @Column(columnDefinition = "退回仓库总价")
    private double backWarehouseTotalCost;
    public double getBackWarehouseTotalCost() {
        return backWarehouseTotalCost;
    }
    public void setBackWarehouseTotalCost(double backWarehouseTotalCost) {
        this.backWarehouseTotalCost = backWarehouseTotalCost;
    }
    
    /**
     * 退回仓库
     */
    @ApiModelProperty(value = "退回仓库", required = false)
    
    @Column(columnDefinition = "退回仓库")
    private String backWarehouse;
    public String getBackWarehouse() {
        return backWarehouse;
    }
    public void setBackWarehouse(String backWarehouse) {
        this.backWarehouse = backWarehouse;
    }
    
    /**
     * 原因
     */
    @ApiModelProperty(value = "原因", required = false)
    
    @Column(columnDefinition = "原因")
    private String backReason;
    public String getBackReason() {
        return backReason;
    }
    public void setBackReason(String backReason) {
        this.backReason = backReason;
    }
    
    /**
     * 退回内容
     */
    @ApiModelProperty(value = "退回内容", required = false)
    
    @Column(columnDefinition = "退回内容")
    private String backContent;
    public String getBackContent() {
        return backContent;
    }
    public void setBackContent(String backContent) {
        this.backContent = backContent;
    }
    
    /**
     * 总数量
     */
    @ApiModelProperty(value = "总数量", required = false)
    
    @Column(columnDefinition = "总数量")
    private Integer totalCount;
    public Integer getTotalCount() {
        return totalCount;
    }
    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }
    
    /**
     * 仓库ID
     */
    @ApiModelProperty(value = "仓库ID", required = false)
    
    @Column(columnDefinition = "仓库ID")
    private String warehouseId;
    public String getWarehouseId() {
        return warehouseId;
    }
    public void setWarehouseId(String warehouseId) {
        this.warehouseId = warehouseId;
    }
    
    /**
     * 核对时间
     */
    @ApiModelProperty(value = "核对时间", required = false)
    
    @Column(columnDefinition = "核对时间")
    private Date checkDate;
    public Date getCheckDate() {
        return checkDate;
    }
    public void setCheckDate(Date checkDate) {
        this.checkDate = checkDate;
    }
    
    /**
     * 核对人
     */
    @ApiModelProperty(value = "核对人", required = false)
    
    @Column(columnDefinition = "核对人")
    private String checkMan;
    public String getCheckMan() {
        return checkMan;
    }
    public void setCheckMan(String checkMan) {
        this.checkMan = checkMan;
    }
    
    /**
     * 退回时间
     */
    @ApiModelProperty(value = "退回时间", required = false)
    
    @Column(columnDefinition = "退回时间")
    private Date backWarehouseDate;
    public Date getBackWarehouseDate() {
        return backWarehouseDate;
    }
    public void setBackWarehouseDate(Date backWarehouseDate) {
        this.backWarehouseDate = backWarehouseDate;
    }
    
    /**
     * 到仓库名称
     */
    @ApiModelProperty(value = "到仓库名称", required = false)
    
    @Column(columnDefinition = "到仓库名称")
    private String toWarehouseName;
    public String getToWarehouseName() {
        return toWarehouseName;
    }
    public void setToWarehouseName(String toWarehouseName) {
        this.toWarehouseName = toWarehouseName;
    }
    
    /**
     * 到仓库编号
     */
    @ApiModelProperty(value = "到仓库编号", required = false)
    
    @Column(columnDefinition = "到仓库编号")
    private String toWarehouseCode;
    public String getToWarehouseCode() {
        return toWarehouseCode;
    }
    public void setToWarehouseCode(String toWarehouseCode) {
        this.toWarehouseCode = toWarehouseCode;
    }
    
    /**
     * 经销商名称
     */
    @ApiModelProperty(value = "经销商名称", required = false)
    
    @Column(columnDefinition = "经销商名称")
    private String dealerName;
    public String getDealerName() {
        return dealerName;
    }
    public void setDealerName(String dealerName) {
        this.dealerName = dealerName;
    }
    
    /**
     * 经销商编号
     */
    @ApiModelProperty(value = "经销商编号", required = false)
    
    @Column(columnDefinition = "经销商编号")
    private String dealerCode;
    public String getDealerCode() {
        return dealerCode;
    }
    public void setDealerCode(String dealerCode) {
        this.dealerCode = dealerCode;
    }
    
    /**
     * 备注
     */
    @ApiModelProperty(value = "备注", required = false)
    
    @Column(columnDefinition = "备注")
    private String remark;
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    
}

