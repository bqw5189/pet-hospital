package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

/**
 * 仓库存货清单
 * <p>
* Created by tom on 2016-07-18 11:47:03.
 */
@Entity
@Table(name = "t_warehouse_inventory")
@ApiModel("仓库存货清单")
public class WarehouseInventory extends CMSEntity {
    
    /**
     * 存货清单编号
     */
    @ApiModelProperty(value = "存货清单编号", required = false)
    @Column(columnDefinition = "存货清单编号")
    private String inventoryCode;

    /**
     * 存货清单人员
     */
    @ApiModelProperty(value = "存货清单人员", required = false)
    @Column(columnDefinition = "存货清单人员")
    private String inventoryMan;

    /**
     * 存货清单时间
     */
    @ApiModelProperty(value = "存货清单时间", required = false)
    @Column(columnDefinition = "存货清单时间")
    private Date inventoryDate;

    
    /**
     * 清单仓库
     */
    @ApiModelProperty(value = "清单仓库", required = false)
    @Column(columnDefinition = "清单仓库")
    private String inventoryWare;
    
    /**
     * 仓库ID
     */
    @ApiModelProperty(value = "仓库ID", required = false)
    @Column(columnDefinition = "仓库ID")
    private String warehouseId;
    
    /**
     * 存货清单内容
     */
    @ApiModelProperty(value = "存货清单内容", required = false)
    @Column(columnDefinition = "存货清单内容")
    private String inventoryContent;
    
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

    public String getInventoryCode() {
        return inventoryCode;
    }

    public void setInventoryCode(String inventoryCode) {
        this.inventoryCode = inventoryCode;
    }

    public String getInventoryMan() {
        return inventoryMan;
    }

    public void setInventoryMan(String inventoryMan) {
        this.inventoryMan = inventoryMan;
    }

    public Date getInventoryDate() {
        return inventoryDate;
    }

    public void setInventoryDate(Date inventoryDate) {
        this.inventoryDate = inventoryDate;
    }

    public String getInventoryWare() {
        return inventoryWare;
    }

    public void setInventoryWare(String inventoryWare) {
        this.inventoryWare = inventoryWare;
    }

    public String getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(String warehouseId) {
        this.warehouseId = warehouseId;
    }

    public String getInventoryContent() {
        return inventoryContent;
    }

    public void setInventoryContent(String inventoryContent) {
        this.inventoryContent = inventoryContent;
    }
}

