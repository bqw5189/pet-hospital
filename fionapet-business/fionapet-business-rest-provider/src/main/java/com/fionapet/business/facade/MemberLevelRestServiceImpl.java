package com.fionapet.business.facade;

import com.fionapet.business.entity.MemberLevel;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.MemberLevelService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 会员级别
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
 */
public class MemberLevelRestServiceImpl extends RestServiceBase<MemberLevel> implements MemberLevelRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MemberLevelRestServiceImpl.class);

    private MemberLevelService memberLevelService;

    public MemberLevelService getMemberLevelService() {
        return memberLevelService;
    }

    public void setMemberLevelService(MemberLevelService memberLevelService) {
        this.memberLevelService = memberLevelService;
    }

    @Override
    public CURDService<MemberLevel> getService() {
        return memberLevelService;
    }

}
