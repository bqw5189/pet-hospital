package com.fionapet.business.test;

import com.fionapet.business.entity.UserDictDetail;

/**
 * Created by tom on 16/7/19.
 */
public class UserDictDetailData implements IData<UserDictDetail> {
    public UserDictDetail data(){
        UserDictDetail data = new UserDictDetail();
        data.setDictDetailCode("DM00003");
        return data;
    }
}
