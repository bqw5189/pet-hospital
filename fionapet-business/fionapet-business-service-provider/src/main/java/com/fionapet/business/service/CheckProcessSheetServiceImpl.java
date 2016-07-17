package com.fionapet.business.service;

import com.fionapet.business.entity.CheckProcessSheet;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.CheckProcessSheetDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  检查处理单据
 * @author baiqw
 */
public class CheckProcessSheetServiceImpl extends CURDServiceBase<CheckProcessSheet> implements CheckProcessSheetService {
    @Autowired
    private CheckProcessSheetDao checkProcessSheetDao;

    @Override
    public DaoBase<CheckProcessSheet> getDao() {
        return checkProcessSheetDao;
    }
}
