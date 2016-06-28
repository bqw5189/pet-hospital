package cn.fiona.pet.account.service;

import cn.fiona.pet.account.entity.Menu;
import cn.fiona.pet.account.entity.Role;
import cn.fiona.pet.account.entity.User;
import cn.fiona.pet.account.exception.ApiException;
import cn.fiona.pet.account.exception.NotFoundException;
import cn.fiona.pet.account.facade.LoginVO;
import cn.fiona.pet.account.repository.MenuDao;
import cn.fiona.pet.account.repository.UserDao;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springside.modules.security.utils.Digests;
import org.springside.modules.utils.Encodes;

import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * @author baiqw
 */
public class MenuServiceImpl implements MenuService {
    private static final Logger LOGGER = LoggerFactory.getLogger(MenuServiceImpl.class);

    @Autowired
    private MenuDao menuDao;

    @Autowired
    private UserDao userDao;

    @Override
    public Set<Menu> findByToken(String token) throws ApiException {
        Set<Menu> menus = new HashSet<Menu>();

        User user = userDao.findOne(token);
        Set<Role> roleSet = user.getRoles();

        for (Role role:roleSet){
//            menus.addAll(role.getMenuSet());
        }

        return menus;
    }
}
