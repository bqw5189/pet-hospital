package com.fionapet.business.test;

import com.fionapet.business.entity.DictTypeDetail;

/**
 * Created by tom on 16/7/22.
 */
public class DictTypeDetailData implements IData<DictTypeDetail>{
    @Override
    public DictTypeDetail data() {
        DictTypeDetail dictTypeDetail = new DictTypeDetail();

        dictTypeDetail.setDictDetailCode("SM00055");
        dictTypeDetail.setValueNameCn("散客");

        return dictTypeDetail;
    }
}
