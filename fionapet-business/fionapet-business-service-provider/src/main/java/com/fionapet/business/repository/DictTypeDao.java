package com.fionapet.business.repository;

import com.fionapet.business.entity.DictType;
import org.dubbo.x.repository.DaoBase;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
 * 字典类型
* Created by tom on 2016-07-31 16:42:53.
 **/
public interface DictTypeDao extends DaoBase<DictType> {
    List<DictType> findByDictNameIn(Collection<String> names);
}
