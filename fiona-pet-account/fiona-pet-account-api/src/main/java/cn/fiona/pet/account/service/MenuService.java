package cn.fiona.pet.account.service;

import cn.fiona.pet.account.entity.Menu;

import java.util.List;

/**
 * 菜单服务
 *
 * Created by tom on 16/6/27.
 */
public interface MenuService {
    /**
     * 获取用户菜单数据
     *
     * @param userId 用户id
     * @return
     */
    List<Menu> menus(String userId);
}
