/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.fionapet.business.repository;

import com.fionapet.business.entity.PetRace;

public interface PetRaceDao extends DaoBase<PetRace> {
	PetRace findByName(String race);
}
