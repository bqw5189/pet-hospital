package com.fionapet.business.test;

import com.fionapet.business.entity.CMSEntity;
import org.dubbo.x.entity.CUSEntity;

/**
 * Created by tom on 16/7/19.
 */
public class DataBuilder {
    public static <R,T extends IData> R data(Class<T> dataClass){
        try {
            CMSEntity entity = (CMSEntity) dataClass.newInstance().data();
            entity.setCreateUserId("fc5db3b3-4063-4a12-a511-880ba19e4b58");
            entity.setUpdateUserId("fc5db3b3-4063-4a12-a511-880ba19e4b58");
            return (R)entity;
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return null;
    }


}
