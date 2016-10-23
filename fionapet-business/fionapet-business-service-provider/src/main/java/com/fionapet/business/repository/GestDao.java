package com.fionapet.business.repository;

import com.fionapet.business.entity.Gest;
import org.dubbo.x.repository.DaoBase;

import java.util.List;

/**
 * 会员
* Created by tom on 2016-07-22 14:21:59.
 **/
public interface GestDao extends DaoBase<Gest> {
    List<Gest> findByPaidStatusNot(String sm00051);
}
