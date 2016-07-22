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
    private DictTypeDetail status = new DictTypeDetail();

    public StatusEntity() {
        status.setId("34ff5c2e-6625-4d6d-ad39-d1745755b3a1");
        status.setDictDetailCode("SM00001");
    }

    @ManyToOne(cascade = {CascadeType.MERGE,CascadeType.REFRESH }, optional = true)
    @JoinColumn(name="status", referencedColumnName = "dictDetailCode")
    public DictTypeDetail getStatus() {
        return status;
    }

    public void setStatus(DictTypeDetail status) {
        this.status = status;
    }
}
