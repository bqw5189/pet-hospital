package com.fionapet.business.service;

import com.fionapet.business.entity.ItemCate;
import com.fionapet.business.entity.ItemType;
import com.fionapet.business.repository.ItemCateDao;
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
 *  商品服务种类
* Created by tom on 2016-07-31 16:42:52.
 */
@Transactional
public class ItemCateServiceImpl extends CURDServiceBase<ItemCate> implements ItemCateService {
    private static final Logger LOGGER = LoggerFactory.getLogger(ItemCateServiceImpl.class);
    @Autowired
    private ItemCateDao itemCateDao;

    @Override
    public DaoBase<ItemCate> getDao() {
        return itemCateDao;
    }

    @Override
    public Map<String, List<Map<String, String>>> selects(Map<String, String> params) {
        LOGGER.debug("selects params:{}", params);

        Map<String, String> paramKeyToValue = new HashMap<String, String>();
        for (Map.Entry<String, String> param:params.entrySet()){
            paramKeyToValue.put(param.getValue(), param.getKey());
        }

        List<ItemCate> dictTypes = itemCateDao.findByCateNameIn(paramKeyToValue.keySet());

        Map<String, List<Map<String, String>>> result = new HashMap<String, List<Map<String, String>>>();
        for (ItemCate dictType: dictTypes){
            List<Map<String, String>> detals = new ArrayList<Map<String, String>>();

            for (ItemType dictTypeDetail: dictType.getDetails()){
                detals.add(ImmutableMap.of("code", dictTypeDetail.getItemCode(), "name", dictTypeDetail.getItemName()));
            }

            result.put(paramKeyToValue.get(dictType.getCateName()), detals);
        }
        return result;
    }
}
