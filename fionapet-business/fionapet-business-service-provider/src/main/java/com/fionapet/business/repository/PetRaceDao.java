/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.fionapet.business.repository;

import com.fionapet.business.entity.PetRace;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface PetRaceDao extends PagingAndSortingRepository<PetRace, String> {
	List<PetRace> findAllByOrderByCreateDateAsc();

	PetRace findByName(String race);
}
