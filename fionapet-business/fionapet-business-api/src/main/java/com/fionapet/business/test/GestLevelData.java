package com.fionapet.business.test;

import com.fionapet.business.entity.GestLevel;

/**
 * Created by tom on 16/7/22.
 */
public class GestLevelData implements IData<GestLevel>{
    @Override
    public GestLevel data() {
        GestLevel gestLevel = new GestLevel();

        gestLevel.setId("09ddd0e0-4fdf-11e6-b714-5d28aef3b5b0");
        gestLevel.setLevelCode("HYDJ000000001");
        gestLevel.setLevelName("普通会员");
        gestLevel.setDiscountRate("100.00");

        return gestLevel;
    }
}
