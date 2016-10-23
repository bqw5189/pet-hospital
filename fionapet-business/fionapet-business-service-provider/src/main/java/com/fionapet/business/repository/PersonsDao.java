package com.fionapet.business.repository;

import com.fionapet.business.entity.Persons;
import org.dubbo.x.repository.DaoBase;

import java.util.List;

/**
 * 员工信息
* Created by tom on 2016-07-31 16:42:52.
 **/
public interface PersonsDao extends DaoBase<Persons> {
    Persons findByPersonName(String name);

    List<Persons> findByRoleId(String code);
}
