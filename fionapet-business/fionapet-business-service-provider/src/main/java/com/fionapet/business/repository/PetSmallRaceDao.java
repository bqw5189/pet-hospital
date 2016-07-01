/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.fionapet.business.repository;

import com.fionapet.business.entity.PetSmallRace;

import java.util.List;

public interface PetSmallRaceDao extends DaoBase<PetSmallRace> {
	List<PetSmallRace> findAllByPetRaceUuid(String uuid);
}
