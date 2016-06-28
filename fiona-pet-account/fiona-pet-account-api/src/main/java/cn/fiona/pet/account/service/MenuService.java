package cn.fiona.pet.account.service;

import cn.fiona.pet.account.entity.Menu;
import cn.fiona.pet.account.exception.ApiException;

import java.util.Set;

/**
 * 菜单服务
 * <p>
 * Created by tom on 16/6/27.
 */
public interface MenuService {
    /**
     * 根菜单编码
     */
    public static final String MENU_ROOT = "M00000";

    /**
     * 获取根据token获取菜单数据
     *
     * @param token
     * @return
     */
    Set<Menu> findByToken(String token) throws ApiException;
}
