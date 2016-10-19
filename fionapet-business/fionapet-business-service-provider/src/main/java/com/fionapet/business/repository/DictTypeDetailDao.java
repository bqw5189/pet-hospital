package com.fionapet.business.repository;

import com.fionapet.business.entity.DictTypeDetail;
import org.dubbo.x.repository.DaoBase;

import java.util.Collection;
import java.util.List;

/**
 * 字典类型明细
* Created by tom on 2016-07-31 16:42:53.
 **/
public interface DictTypeDetailDao extends DaoBase<DictTypeDetail> {
    List<DictTypeDetail> findByDictTypeId(String id);

    DictTypeDetail findByDictDetailCode(String sm00042);
}
