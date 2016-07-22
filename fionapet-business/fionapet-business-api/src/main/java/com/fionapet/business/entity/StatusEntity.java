package com.fionapet.business.entity;

import org.dubbo.x.entity.*;

import javax.persistence.*;

/**
 * Created by tom on 16/7/22.
 */

@MappedSuperclass
public class StatusEntity extends IdEntity {
    /**
     * 状态
     */
    private DictTypeDetail status;

    @ManyToOne(cascade = {CascadeType.MERGE,CascadeType.REFRESH }, optional = true)
    @JoinColumn(name="status", referencedColumnName = "dictDetailCode")
    public DictTypeDetail getStatus() {
        return status;
    }

    public void setStatus(DictTypeDetail status) {
        this.status = status;
    }
}
