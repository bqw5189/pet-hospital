/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemCate;

import java.util.List;

/**
 * 商品服务种类DAO
 */
public interface ItemCateDao extends DaoBase<ItemCate> {
    ItemCate findByCateName(String cateName);

    List<ItemCate> findByParentId(String parentId);
}
