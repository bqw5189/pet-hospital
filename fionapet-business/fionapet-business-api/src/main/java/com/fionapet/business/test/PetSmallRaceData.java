package com.fionapet.business.test;

import com.fionapet.business.entity.PetSmallRace;

/**
 * Created by tom on 16/7/19.
 */
public class PetSmallRaceData implements IData<PetSmallRace> {
    public PetSmallRace data(){
        PetSmallRace petSmallRace = new PetSmallRace();
        petSmallRace.setId("34ff5c2e-6625-4d6d-ad39-d1745755b3a8");
        return petSmallRace;
    }
}
