package com.fionapet.business.service;

import com.fionapet.business.entity.MemberLevel;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.MemberLevelDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  会员级别
 * @author baiqw
 */
public class MemberLevelServiceImpl extends CURDServiceBase<MemberLevel> implements MemberLevelService {
    @Autowired
    private MemberLevelDao memberLevelDao;

    @Override
    public DaoBase<MemberLevel> getDao() {
        return memberLevelDao;
    }
}
