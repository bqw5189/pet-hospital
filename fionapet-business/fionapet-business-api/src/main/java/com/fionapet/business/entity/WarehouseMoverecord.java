package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 移库记录
 * <p>
* Created by tom on 2016-07-18 11:47:03.
 */
@Entity
@Table(name = "t_warehouse_moverecord")
@ApiModel("移库记录")
public class WarehouseMoverecord extends CMSEntity {
    
    /**
     * 移库编号
     */
    @ApiModelProperty(value = "移库编号", required = false)
    
    @Column(columnDefinition = "移库编号")
    private String outWarehouseCode;
    public String getOutWarehouseCode() {
        return outWarehouseCode;
    }
    public void setOutWarehouseCode(String outWarehouseCode) {
        this.outWarehouseCode = outWarehouseCode;
    }
    
    /**
     * 移库人
     */
    @ApiModelProperty(value = "移库人", required = false)
    
    @Column(columnDefinition = "移库人")
    private String outWarehouseMan;
    public String getOutWarehouseMan() {
        return outWarehouseMan;
    }
    public void setOutWarehouseMan(String outWarehouseMan) {
        this.outWarehouseMan = outWarehouseMan;
    }
    
    /**
     * 移库时间
     */
    @ApiModelProperty(value = "移库时间", required = false)
    
    @Column(columnDefinition = "移库时间")
    private Date MoveWarehouseDate;
    public Date getMoveWarehouseDate() {
        return MoveWarehouseDate;
    }
    public void setMoveWarehouseDate(Date MoveWarehouseDate) {
        this.MoveWarehouseDate = MoveWarehouseDate;
    }
    
    /**
     * 原仓库名称
     */
    @ApiModelProperty(value = "原仓库名称", required = false)
    
    @Column(columnDefinition = "原仓库名称")
    private String fromWarehouse;
    public String getFromWarehouse() {
        return fromWarehouse;
    }
    public void setFromWarehouse(String fromWarehouse) {
        this.fromWarehouse = fromWarehouse;
    }
    
    /**
     * 目标仓库名称
     */
    @ApiModelProperty(value = "目标仓库名称", required = false)
    
    @Column(columnDefinition = "目标仓库名称")
    private String toWarehouse;
    public String getToWarehouse() {
        return toWarehouse;
    }
    public void setToWarehouse(String toWarehouse) {
        this.toWarehouse = toWarehouse;
    }
    
    /**
     * 原仓库ID
     */
    @ApiModelProperty(value = "原仓库ID", required = false)
    
    @Column(columnDefinition = "原仓库ID")
    private String fromWarehouseId;
    public String getFromWarehouseId() {
        return fromWarehouseId;
    }
    public void setFromWarehouseId(String fromWarehouseId) {
        this.fromWarehouseId = fromWarehouseId;
    }
    
    /**
     * 目标仓库ID
     */
    @ApiModelProperty(value = "目标仓库ID", required = false)
    
    @Column(columnDefinition = "目标仓库ID")
    private String toWarehouseId;
    public String getToWarehouseId() {
        return toWarehouseId;
    }
    public void setToWarehouseId(String toWarehouseId) {
        this.toWarehouseId = toWarehouseId;
    }
    
    /**
     * 进库总价
     */
    @ApiModelProperty(value = "进库总价", required = false)
    
    @Column(columnDefinition = "进库总价")
    private double inWarehouseTotalCost;
    public double getInWarehouseTotalCost() {
        return inWarehouseTotalCost;
    }
    public void setInWarehouseTotalCost(double inWarehouseTotalCost) {
        this.inWarehouseTotalCost = inWarehouseTotalCost;
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
     * 移库内容
     */
    @ApiModelProperty(value = "移库内容", required = false)
    
    @Column(columnDefinition = "移库内容")
    private String moveContent;
    public String getMoveContent() {
        return moveContent;
    }
    public void setMoveContent(String moveContent) {
        this.moveContent = moveContent;
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

