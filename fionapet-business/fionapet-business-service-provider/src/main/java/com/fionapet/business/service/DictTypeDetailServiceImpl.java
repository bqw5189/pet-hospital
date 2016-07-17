package com.fionapet.business.service;

import com.fionapet.business.entity.DictTypeDetail;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.DictTypeDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  宠物字典类型明细
 * @author baiqw
 */
public class DictTypeDetailServiceImpl extends CURDServiceBase<DictTypeDetail> implements DictTypeDetailService {
    @Autowired
    private DictTypeDetailDao dictTypeDetailDao;

    @Override
    public DaoBase<DictTypeDetail> getDao() {
        return dictTypeDetailDao;
    }
}
