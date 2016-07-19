package com.fionapet.business.repository;

import com.fionapet.business.entity.PetSmallRace;
import org.dubbo.x.repository.DaoBase;

/**
 * 宠物品种
* Created by tom on 2016-07-19 13:15:47.
 **/
public interface PetSmallRaceDao extends DaoBase<PetSmallRace> {
    PetSmallRace findByType(String type);
}
