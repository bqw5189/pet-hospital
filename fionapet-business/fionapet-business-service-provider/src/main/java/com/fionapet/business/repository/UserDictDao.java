package com.fionapet.business.repository;

import com.fionapet.business.entity.UserDict;
import org.dubbo.x.repository.DaoBase;

import java.util.List;
import java.util.Set;

/**
 * 用户字典
* Created by tom on 2016-07-31 16:36:24.
 **/
public interface UserDictDao extends DaoBase<UserDict> {
    List<UserDict> findByDictNameIn(Set<String> names);
}
