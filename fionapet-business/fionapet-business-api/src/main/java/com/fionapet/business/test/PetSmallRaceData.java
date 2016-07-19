package com.fionapet.business.test;

import com.fionapet.business.entity.PetSmallRace;

/**
 * Created by tom on 16/7/19.
 */
public class PetSmallRaceData implements IData<PetSmallRace> {
    public PetSmallRace data(){
        PetSmallRace petSmallRace = new PetSmallRace();
        petSmallRace.setId("1aa38af8-efd0-4fbb-8c78-d12d17cc9624");
        petSmallRace.setType("哈士奇");
        return petSmallRace;
    }
}
