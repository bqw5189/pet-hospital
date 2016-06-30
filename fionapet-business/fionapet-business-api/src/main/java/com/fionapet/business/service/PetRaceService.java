package com.fionapet.business.service;

import com.fionapet.business.entity.PetRace;

import java.util.List;

/**
 * 宠物 种类
 * @author baiqw
 */
public interface PetRaceService {
    /**
     * 种类列表
     *
     * @return
     */
    List<PetRace> listAll();
}
