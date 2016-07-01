package com.fionapet.business.service;

import java.util.List;

/**
 * 服务接口
 * @author baiqw
 */
public interface CURDService<T> {
    /**
     * 列表
     *
     * @return
     */
    List<T> listAll();

    /**
     * 详情
     *
     * @return
     */
    T detail(String uuid);

    /**
     * 创建更行
     * @param entity
     * @return
     */
    T createOrUpdte(T entity);

    /**
     * 删除
     * @param uuid
     */
    void delete(String uuid);

    /**
     * 获取token
     *
     * @return
     */
    String getToken();

    /**
     * 设置token
     *
     * @param token
     */
    void setToken(String token);
}
