package com.fionapet.business.service;

import com.fionapet.business.entity.ItemDiscountRate;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.ItemDiscountRateDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  业务类型打折率
 * @author baiqw
 */
public class ItemDiscountRateServiceImpl extends CURDServiceBase<ItemDiscountRate> implements ItemDiscountRateService {
    @Autowired
    private ItemDiscountRateDao itemDiscountRateDao;

    @Override
    public DaoBase<ItemDiscountRate> getDao() {
        return itemDiscountRateDao;
    }
}
