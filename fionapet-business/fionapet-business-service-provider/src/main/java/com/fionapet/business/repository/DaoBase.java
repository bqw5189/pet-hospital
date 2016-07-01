/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.fionapet.business.repository;

import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;
@NoRepositoryBean
public interface DaoBase<T> extends PagingAndSortingRepository<T, String> {
    List<T> findAllByOrderByCreateDateAsc();
}
