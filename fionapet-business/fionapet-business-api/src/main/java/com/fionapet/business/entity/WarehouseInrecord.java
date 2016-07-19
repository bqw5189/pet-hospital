package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 进库记录
 * <p>
* Created by tom on 2016-07-18 11:47:04.
 */
@Entity
@Table(name = "t_warehouse_inrecord")
@ApiModel("进库记录")
public class WarehouseInrecord extends CMSEntity {
    
    /**
     * 入库编号
     */
    @ApiModelProperty(value = "入库编号", required = false)
    
    @Column(columnDefinition = "入库编号")
    private String inWarehouseCode;
    public String getInWarehouseCode() {
        return inWarehouseCode;
    }
    public void setInWarehouseCode(String inWarehouseCode) {
        this.inWarehouseCode = inWarehouseCode;
    }
    
    /**
     * 入库人
     */
    @ApiModelProperty(value = "入库人", required = false)
    
    @Column(columnDefinition = "入库人")
    private String inWarehouseMan;
    public String getInWarehouseMan() {
        return inWarehouseMan;
    }
    public void setInWarehouseMan(String inWarehouseMan) {
        this.inWarehouseMan = inWarehouseMan;
    }
    
    /**
     * 入库总价
     */
    @ApiModelProperty(value = "入库总价", required = false)
    
    @Column(columnDefinition = "入库总价")
    private double inWarehouseTotalCost;
    public double getInWarehouseTotalCost() {
        return inWarehouseTotalCost;
    }
    public void setInWarehouseTotalCost(double inWarehouseTotalCost) {
        this.inWarehouseTotalCost = inWarehouseTotalCost;
    }
    
    /**
     * 仓库
     */
    @ApiModelProperty(value = "仓库", required = false)
    
    @Column(columnDefinition = "仓库")
    private String inWarehouse;
    public String getInWarehouse() {
        return inWarehouse;
    }
    public void setInWarehouse(String inWarehouse) {
        this.inWarehouse = inWarehouse;
    }
    
    /**
     * 原因
     */
    @ApiModelProperty(value = "原因", required = false)
    
    @Column(columnDefinition = "原因")
    private String inReason;
    public String getInReason() {
        return inReason;
    }
    public void setInReason(String inReason) {
        this.inReason = inReason;
    }
    
    /**
     * 入库内容
     */
    @ApiModelProperty(value = "入库内容", required = false)
    
    @Column(columnDefinition = "入库内容")
    private String inContent;
    public String getInContent() {
        return inContent;
    }
    public void setInContent(String inContent) {
        this.inContent = inContent;
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
     * 入库时间
     */
    @ApiModelProperty(value = "入库时间", required = false)
    
    @Column(columnDefinition = "入库时间")
    private Date inWarehouseDate;
    public Date getInWarehouseDate() {
        return inWarehouseDate;
    }
    public void setInWarehouseDate(Date inWarehouseDate) {
        this.inWarehouseDate = inWarehouseDate;
    }
    
    /**
     * 到仓库名称
     */
    @ApiModelProperty(value = "到仓库名称", required = false)
    
    @Column(columnDefinition = "到仓库名称")
    private String ToWarehouseName;
    public String getToWarehouseName() {
        return ToWarehouseName;
    }
    public void setToWarehouseName(String ToWarehouseName) {
        this.ToWarehouseName = ToWarehouseName;
    }
    
    /**
     * 到仓库编号
     */
    @ApiModelProperty(value = "到仓库编号", required = false)
    
    @Column(columnDefinition = "到仓库编号")
    private String ToWarehouseCode;
    public String getToWarehouseCode() {
        return ToWarehouseCode;
    }
    public void setToWarehouseCode(String ToWarehouseCode) {
        this.ToWarehouseCode = ToWarehouseCode;
    }
    
    /**
     * 经销商名称
     */
    @ApiModelProperty(value = "经销商名称", required = false)
    
    @Column(columnDefinition = "经销商名称")
    private String DealerName;
    public String getDealerName() {
        return DealerName;
    }
    public void setDealerName(String DealerName) {
        this.DealerName = DealerName;
    }
    
    /**
     * 经销商编号
     */
    @ApiModelProperty(value = "经销商编号", required = false)
    
    @Column(columnDefinition = "经销商编号")
    private String DealerCode;
    public String getDealerCode() {
        return DealerCode;
    }
    public void setDealerCode(String DealerCode) {
        this.DealerCode = DealerCode;
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

