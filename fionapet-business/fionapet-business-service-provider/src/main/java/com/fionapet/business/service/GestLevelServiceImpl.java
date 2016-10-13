package com.fionapet.business.service;

import com.fionapet.business.entity.GestLevel;
import org.dubbo.x.entity.StatusEnum;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.GestLevelDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.*;

/**
 *  会员等级管理
* Created by tom on 2016-07-31 16:36:25.
 */
public class GestLevelServiceImpl extends CURDServiceBase<GestLevel> implements GestLevelService {
    private static final Logger LOGGER = LoggerFactory.getLogger(GestLevelServiceImpl.class);
    private static final String LEVEL_KEY_CN = "会员等级";
    private static final String LEVEL_KEY = "gestStyleSet";
    @Autowired
    private GestLevelDao gestLevelDao;

    @Override
    public DaoBase<GestLevel> getDao() {
        return gestLevelDao;
    }


    @Override
    public Map<String, Collection> selects(Map<String, String> params) {
        LOGGER.debug("selects params:{}", params);

        Map<String, String> paramKeyToValue = new HashMap<String, String>();
        for (Map.Entry<String, String> param:params.entrySet()){
            paramKeyToValue.put(param.getValue(), param.getKey());
        }

        List<GestLevel> gestLevels = gestLevelDao.findByStatusDictDetailCode(StatusEnum.OK.toString());

        List<Map<String, Object>> gestLevelsMap = new ArrayList<Map<String, Object>>();

        for (GestLevel gestLevel: gestLevels){
            Map<String, Object> gestLevelMap = new HashMap<String, Object>();

            gestLevelMap.put("valueNameCn", gestLevel.getLevelName());
            gestLevelMap.put("dictDetailCode", gestLevel.getLevelCode());
            gestLevelMap.put("id", gestLevel.getId());

            gestLevelsMap.add(gestLevelMap);
        }

        Map<String, Collection> result = new HashMap<String, Collection>();

        result.put(paramKeyToValue.get(LEVEL_KEY_CN), gestLevelsMap);

        return result;
    }
}
