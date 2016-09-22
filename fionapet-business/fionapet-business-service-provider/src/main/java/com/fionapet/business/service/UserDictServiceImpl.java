package com.fionapet.business.service;

import com.fionapet.business.entity.UserDict;
import com.fionapet.business.repository.UserDictDao;
import com.fionapet.business.repository.UserDictDetailDao;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *  用户字典
* Created by tom on 2016-07-31 16:36:24.
 */
@Transactional
public class UserDictServiceImpl extends CURDServiceBase<UserDict> implements UserDictService {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserDictServiceImpl.class);
    @Autowired
    private UserDictDao userDictDao;
    @Autowired
    private UserDictDetailDao userDictDetailDao;

    @Override
    public DaoBase<UserDict> getDao() {
        return userDictDao;
    }

    @Override
    public Map<String, Collection> selects(Map<String, String> params) {
        LOGGER.debug("selects params:{}", params);

        Map<String, String> paramKeyToValue = new HashMap<String, String>();
        for (Map.Entry<String, String> param:params.entrySet()){
            paramKeyToValue.put(param.getValue(), param.getKey());
        }

        List<UserDict> dictTypes = userDictDao.findByDictNameIn(paramKeyToValue.keySet());

        Map<String, Collection> result = new HashMap<String, Collection>();
        for (UserDict dictType: dictTypes){
            result.put(paramKeyToValue.get(dictType.getDictName()), userDictDetailDao.findByDictTypeId(dictType.getId()));
        }
        return result;
    }
}
