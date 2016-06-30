package com.fionapet.business.service;

import com.fionapet.business.entity.PetRace;
import com.fionapet.business.repository.PetRaceDao;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @author baiqw
 */
public class PetRaceServiceImpl implements PetRaceService {
    @Autowired
    private PetRaceDao petRaceDao;

    @Override
    public List<PetRace> listAll() {
        return petRaceDao.findAllByOrderByCreateDateAsc();
    }
}
