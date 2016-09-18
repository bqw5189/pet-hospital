package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemCate;
import org.dubbo.x.repository.DaoBase;

import java.util.List;
import java.util.Set;

/**
 * 商品服务种类
* Created by tom on 2016-07-31 16:42:52.
 **/
public interface ItemCateDao extends DaoBase<ItemCate> {
    List<ItemCate> findByCateNameIn(Set<String> name);
}
