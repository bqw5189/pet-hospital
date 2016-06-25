package cn.fiona.pet.account.entity;

import javax.persistence.*;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * 角色
 *
 * @author bqw
 */
@Entity
@Table(name = "t_role")
public class Role extends IdEntity {
    /**
     * 用户信息
     */
    private Set<User> users = new LinkedHashSet<User>();

    /**
     * 菜单 信息
     */
    private Set<Menu> menuSet = new HashSet<Menu>();


    /**
     * 名称
     */
    private String name;

    /**
     * 码
     */
    private String code;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE}, mappedBy = "roleSet", fetch = FetchType.LAZY)
    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(name = "t_role_menu", joinColumns = {@JoinColumn(name = "role_code", referencedColumnName = "code")}, inverseJoinColumns = {@JoinColumn(name = "menu_code", referencedColumnName = "code")})
    public Set<Menu> getMenuSet() {
        return menuSet;
    }

    public void setMenuSet(Set<Menu> menuSet) {
        this.menuSet = menuSet;
    }


}
