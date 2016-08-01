package com.fionapet.business.test;

import com.fionapet.business.entity.CMEntity;
import com.fionapet.business.entity.CMSEntity;
import org.dubbo.x.entity.CUSEntity;
import org.dubbo.x.entity.IdEntity;

/**
 * Created by tom on 16/7/19.
 */
public class DataBuilder {

    public static <R,T extends IData> R data(Class<T> dataClass){
        try {
            if(dataClass.newInstance().data() instanceof CMEntity) {
                CMEntity cmEntity = (CMEntity) dataClass.newInstance().data();
                cmEntity.setCreateUserId("fc5db3b3-4063-4a12-a511-880ba19e4b58");
                cmEntity.setUpdateUserId("fc5db3b3-4063-4a12-a511-880ba19e4b58");
                return (R)cmEntity;
            }else{
                CMSEntity cmsEntity = (CMSEntity) dataClass.newInstance().data();
                cmsEntity.setCreateUserId("fc5db3b3-4063-4a12-a511-880ba19e4b58");
                cmsEntity.setUpdateUserId("fc5db3b3-4063-4a12-a511-880ba19e4b58");
                return (R)cmsEntity;
            }

        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return null;
    }


}
