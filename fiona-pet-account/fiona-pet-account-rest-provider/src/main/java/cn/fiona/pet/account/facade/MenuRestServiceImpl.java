package cn.fiona.pet.account.facade;

import cn.fiona.pet.account.entity.Menu;
import cn.fiona.pet.account.entity.RestResultEnum;
import cn.fiona.pet.account.exception.ApiException;
import cn.fiona.pet.account.service.AccountService;
import cn.fiona.pet.account.service.MenuService;
import cn.fiona.pet.account.vo.MenuVO;
import io.swagger.annotations.ApiParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.HeaderParam;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static cn.fiona.pet.account.service.MenuService.MENU_ROOT;

/**
 * 用户菜单数据
 *
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
 */
public class MenuRestServiceImpl implements MenuRestService {

  private static final Logger LOGGER = LoggerFactory.getLogger(MenuRestServiceImpl.class);

  private MenuService menuService;

    public MenuService getMenuService() {
        return menuService;
    }

    public void setMenuService(MenuService menuService) {
        this.menuService = menuService;
    }

    @Override
    public RestResult<List<MenuVO>> menus(String token) throws ApiException{
        Set<Menu> menuSet = menuService.findByToken(token);

        List<MenuVO> menus = new ArrayList<MenuVO>();

        findChild(menuSet, menus, new HashSet<Menu>(), MENU_ROOT);

        return RestResult.OK(menus);
    }

    private void findChild(Set<Menu> menuSet, List<MenuVO> menuVOList, Set<Menu> hasFind, String uuid) {
        for (Menu menu : menuSet) {
            if (hasFind.contains(menu)) {
                continue;
            }

            Menu parentMenu = menu.getParentMenu();

            if (parentMenu == null || uuid.equals(parentMenu.getUuid())) {
                MenuVO menuVO = toVO(menu);

                menuVOList.add(menuVO);

                hasFind.add(menu);
            }
        }

        for (MenuVO menuVO : menuVOList) {
            findChild(menuSet, menuVO.getSubMenu(), hasFind, menuVO.getUuid());
        }
    }

    private MenuVO toVO(Menu menu) {
        MenuVO menuVO = new MenuVO();
        menuVO.setUuid(menu.getUuid());
        menuVO.setName(menu.getName());
        menuVO.setCode(menu.getCode());
        menuVO.setLeaf(menu.getLeaf());
        return menuVO;
    }
}
