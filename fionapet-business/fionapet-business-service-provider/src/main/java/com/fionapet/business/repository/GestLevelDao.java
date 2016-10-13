package com.fionapet.business.repository;

import com.fionapet.business.entity.GestLevel;
import com.fionapet.business.entity.StatusEnum;
import org.dubbo.x.repository.DaoBase;

import java.util.List;

/**
 * 会员等级管理
* Created by tom on 2016-07-31 16:36:25.
 **/
public interface GestLevelDao extends DaoBase<GestLevel> {
    List<GestLevel> findByStatusDictDetailCode(String ok);
}
