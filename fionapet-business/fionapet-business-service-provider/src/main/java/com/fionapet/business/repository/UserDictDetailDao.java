package com.fionapet.business.repository;

import com.fionapet.business.entity.UserDictDetail;
import org.dubbo.x.repository.DaoBase;

/**
 * 用户字典
 * Created by tom on 16/7/19.
 */
public interface UserDictDetailDao extends DaoBase<UserDictDetail> {
    UserDictDetail findByDictDetailCode(String code);
}
