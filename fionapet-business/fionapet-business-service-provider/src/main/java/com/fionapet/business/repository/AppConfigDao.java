package com.fionapet.business.repository;

import com.fionapet.business.entity.AppConfig;
import org.dubbo.x.repository.DaoBase;
import org.springframework.data.jpa.repository.Query;

import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import java.util.List;

/**
 * 应用配置
* Created by tom on 2016-07-18 11:56:10.
 **/
public interface AppConfigDao extends DaoBase<AppConfig> {
    List<AppConfig> findByConfigNameLike(String name);
}
