/*
 * Copyright 1999-2011 Alibaba Group.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.fionapet.business.consumer;


import com.fionapet.business.entity.PetRace;
import com.fionapet.business.service.PetRaceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * @author baiqw
 */
public class DemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(DemoAction.class);

    private PetRaceService petRaceService;

    public PetRaceService getPetRaceService() {
        return petRaceService;
    }

    public void setPetRaceService(PetRaceService petRaceService) {
        this.petRaceService = petRaceService;
    }

    public void start() throws Exception {

        List<PetRace> petRaceList = petRaceService.listAll();


        LOGGER.info("SUCESS: petRaceList: {}" ,petRaceList);
    }

}
