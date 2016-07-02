/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.fionapet.business.repository;

import com.fionapet.business.entity.Warehouse;

public interface WarehouseDao extends DaoBase<Warehouse> {
    Warehouse findByName(String name);
}
