/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.fionapet.business.repository;

import com.fionapet.business.entity.BusinesCate;

import java.util.List;

/**
 * 业务类型DAO
 */
public interface BusinesCateDao extends DaoBase<BusinesCate> {
    BusinesCate findByCateName(String cateName);
}
