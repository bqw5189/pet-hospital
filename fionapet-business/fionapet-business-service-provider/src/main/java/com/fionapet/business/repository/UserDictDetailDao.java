package com.fionapet.business.repository;

import com.fionapet.business.entity.UserDictDetail;
import org.dubbo.x.repository.DaoBase;

import java.util.Collection;
import java.util.List;

/**
 * 用户字典
 * Created by tom on 16/7/19.
 */
public interface UserDictDetailDao extends DaoBase<UserDictDetail> {
    List<UserDictDetail> findByDictTypeId(String id);

    List<UserDictDetail> findByValueNameCn(String name);
}
