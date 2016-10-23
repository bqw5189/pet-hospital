package com.fionapet.business.repository;

import com.fionapet.business.entity.Pet;
import org.dubbo.x.repository.DaoBase;

import java.util.List;

/**
 * 宠物
* Created by tom on 2016-07-19 10:31:06.
 **/
public interface PetDao extends DaoBase<Pet> {
    List<Pet> findByGestId(String gestId);
}
