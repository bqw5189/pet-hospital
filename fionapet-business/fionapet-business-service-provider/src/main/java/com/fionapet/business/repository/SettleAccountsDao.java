package com.fionapet.business.repository;

import com.fionapet.business.entity.SettleAccountsView;
import org.dubbo.x.repository.DaoBase;

import java.util.List;

/**
 * 待支付
* Created by tom on 2016-07-25 09:32:34.
 **/
public interface SettleAccountsDao extends DaoBase<SettleAccountsView> {

    List<SettleAccountsView> findByGestId(String gestId);
}
