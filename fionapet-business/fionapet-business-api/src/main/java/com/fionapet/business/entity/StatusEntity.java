package com.fionapet.business.entity;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.dubbo.x.entity.*;

import javax.persistence.*;

/**
 * Created by tom on 16/7/22.
 */

@MappedSuperclass

public class StatusEntity extends IdEntity {
    public static DictTypeDetail DEFAULT(){
        DictTypeDetail status = new DictTypeDetail();
        status.setId("68479670-5787-11e6-9b57-ec4aad85924d");
        status.setDictDetailCode("SM00001");
        status.setCreateUserId("fc5db3b3-4063-4a12-a511-880ba19e4b58");
        status.setUpdateUserId("fc5db3b3-4063-4a12-a511-880ba19e4b58");
        return status;
    }
    /**
     * 状态
     */
//    @JsonIgnore
    private DictTypeDetail status = new DictTypeDetail();

    public StatusEntity() {
        status.setId("68479670-5787-11e6-9b57-ec4aad85924d");
        status.setDictDetailCode("SM00001");
        status.setCreateUserId("fc5db3b3-4063-4a12-a511-880ba19e4b58");
        status.setUpdateUserId("fc5db3b3-4063-4a12-a511-880ba19e4b58");
    }



    @OneToOne(cascade = {CascadeType.REFRESH }, fetch = FetchType.EAGER)
    @JoinColumn(name="status", referencedColumnName = "dictDetailCode")
    public DictTypeDetail getStatus() {
        return status;
    }

    public void setStatus(DictTypeDetail status) {
        this.status = status;
    }
}
