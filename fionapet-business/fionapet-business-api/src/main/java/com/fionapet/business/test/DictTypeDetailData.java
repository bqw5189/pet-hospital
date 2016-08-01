package com.fionapet.business.test;

import com.fionapet.business.entity.DictTypeDetail;

/**
 * Created by tom on 16/7/22.
 */
public class DictTypeDetailData implements IData<DictTypeDetail>{
    @Override
    public DictTypeDetail data() {
        DictTypeDetail dictTypeDetail = new DictTypeDetail();

        dictTypeDetail.setId("684d2f2c-5787-11e6-9b57-ec4aad85924d");

        dictTypeDetail.setDictDetailCode("SM00055");
        dictTypeDetail.setValueNameCn("散客");
        dictTypeDetail.setCreateUserId(TOKEN);
        dictTypeDetail.setUpdateUserId(TOKEN);

        return dictTypeDetail;
    }
}
