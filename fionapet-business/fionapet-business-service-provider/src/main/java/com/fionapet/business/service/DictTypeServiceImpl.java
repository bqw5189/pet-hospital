package com.fionapet.business.service;

import com.fionapet.business.entity.DictType;
import com.fionapet.business.entity.DictTypeDetail;
import com.fionapet.business.repository.DictTypeDao;
import com.google.common.collect.ImmutableMap;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *  字典类型
* Created by tom on 2016-07-31 16:42:53.
 */
@Transactional
public class DictTypeServiceImpl extends CURDServiceBase<DictType> implements DictTypeService {
    private static final Logger LOGGER = LoggerFactory.getLogger(DictTypeServiceImpl.class);
    @Autowired
    private DictTypeDao dictTypeDao;

    @Override
    public DaoBase<DictType> getDao() {
        return dictTypeDao;
    }

    @Override
    public Map<String, List<Map<String, String>>> selects(Map<String, String> params) {
        LOGGER.debug("selects params:{}", params);

        Map<String, String> paramKeyToValue = new HashMap<String, String>();
        for (Map.Entry<String, String> param:params.entrySet()){
            paramKeyToValue.put(param.getValue(), param.getKey());
        }

        List<DictType> dictTypes = dictTypeDao.findByDictNameIn(paramKeyToValue.keySet());

        Map<String, List<Map<String, String>>> result = new HashMap<String, List<Map<String, String>>>();
        for (DictType dictType: dictTypes){
            List<Map<String, String>> detals = new ArrayList<Map<String, String>>();

            for (DictTypeDetail dictTypeDetail: dictType.getDetails()){
                detals.add(ImmutableMap.of("code", dictTypeDetail.getDictDetailCode(), "name", dictTypeDetail.getValueNameCn()));
            }

            result.put(paramKeyToValue.get(dictType.getDictName()), detals);
        }
        return result;
    }
}
