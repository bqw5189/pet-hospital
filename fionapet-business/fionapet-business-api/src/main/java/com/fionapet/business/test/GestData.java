package com.fionapet.business.test;

import com.fionapet.business.entity.DictTypeDetail;
import com.fionapet.business.entity.Gest;
import com.fionapet.business.entity.GestLevel;
import com.fionapet.business.entity.UserDictDetail;

/**
 * Created by tom on 16/7/22.
 */
public class GestData implements IData<Gest>{
    @Override
    public Gest data() {
        Gest gest = new Gest();
        gest.setGestName("小新");

        UserDictDetail userDictDetail = DataBuilder.data(UserDictDetailData.class);

        gest.setGestSex(userDictDetail);

        GestLevel gestLevel = DataBuilder.data(GestLevelData.class);
        gest.setGestStyle(gestLevel);

        DictTypeDetail dictTypeDetail = DataBuilder.data(DictTypeDetailData.class);
        gest.setIsVip(dictTypeDetail);

        return gest;
    }
}
