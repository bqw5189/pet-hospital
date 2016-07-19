package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 出库记录
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_warehouse_outrecord")
@ApiModel("出库记录")
public class WarehouseOutrecord extends CMSEntity {
    
    /**
     * 出库编号
     */
    @ApiModelProperty(value = "出库编号", required = false)
    
    @Column(columnDefinition = "出库编号")
    private String outWarehouseCode;
    public String getOutWarehouseCode() {
        return outWarehouseCode;
    }
    public void setOutWarehouseCode(String outWarehouseCode) {
        this.outWarehouseCode = outWarehouseCode;
    }
    
    /**
     * 出库人
     */
    @ApiModelProperty(value = "出库人", required = false)
    
    @Column(columnDefinition = "出库人")
    private String outWarehouseMan;
    public String getOutWarehouseMan() {
        return outWarehouseMan;
    }
    public void setOutWarehouseMan(String outWarehouseMan) {
        this.outWarehouseMan = outWarehouseMan;
    }
    
    /**
     * 出库总价
     */
    @ApiModelProperty(value = "出库总价", required = false)
    
    @Column(columnDefinition = "出库总价")
    private double outWarehouseTotalCost;
    public double getOutWarehouseTotalCost() {
        return outWarehouseTotalCost;
    }
    public void setOutWarehouseTotalCost(double outWarehouseTotalCost) {
        this.outWarehouseTotalCost = outWarehouseTotalCost;
    }
    
    /**
     * 出库
     */
    @ApiModelProperty(value = "出库", required = false)
    
    @Column(columnDefinition = "出库")
    private String outWarehouse;
    public String getOutWarehouse() {
        return outWarehouse;
    }
    public void setOutWarehouse(String outWarehouse) {
        this.outWarehouse = outWarehouse;
    }
    
    /**
     * 原因
     */
    @ApiModelProperty(value = "原因", required = false)
    
    @Column(columnDefinition = "原因")
    private String outReason;
    public String getOutReason() {
        return outReason;
    }
    public void setOutReason(String outReason) {
        this.outReason = outReason;
    }
    
    /**
     * 出库内容
     */
    @ApiModelProperty(value = "出库内容", required = false)
    
    @Column(columnDefinition = "出库内容")
    private String outContent;
    public String getOutContent() {
        return outContent;
    }
    public void setOutContent(String outContent) {
        this.outContent = outContent;
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
     * 出库时间
     */
    @ApiModelProperty(value = "出库时间", required = false)
    
    @Column(columnDefinition = "出库时间")
    private Date outWarehouseDate;
    public Date getOutWarehouseDate() {
        return outWarehouseDate;
    }
    public void setOutWarehouseDate(Date outWarehouseDate) {
        this.outWarehouseDate = outWarehouseDate;
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

