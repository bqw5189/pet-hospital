package cn.fiona.pet.account.service;

import cn.fiona.pet.account.entity.Role;
import cn.fiona.pet.account.entity.User;
import cn.fiona.pet.account.exception.ApiException;
import cn.fiona.pet.account.exception.NotFoundException;
import cn.fiona.pet.account.facade.LoginVO;
import cn.fiona.pet.account.repository.RoleDao;
import cn.fiona.pet.account.repository.UserDao;
import com.fionapet.business.service.PersonsService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.security.utils.Digests;
import org.springside.modules.utils.Encodes;

import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author baiqw
 */
@Transactional
public class AccountServiceImpl implements AccountService {
    @Autowired
    private UserDao userDao;

    @Autowired
    private RoleDao roleDao;

    private Logger logger = LoggerFactory.getLogger(AccountServiceImpl.class);

    private PersonsService personsService;

    @Override
    public String login(LoginVO loginVO) throws ApiException {
        User user = userDao.findByLoginName(loginVO.getName());

        if (null == loginVO){
            throw new InvalidParameterException("输入数据为空!");
        }

        if (null == user) {

            String token = personsService.login(loginVO);
            if (null != token){
                return  token;
            }

            throw new NotFoundException(String.format("[%s]用户未找到!", loginVO.getName()));
        }

        String password = loginVO.getPassword();

        if (StringUtils.isBlank(password)){
            throw new InvalidParameterException("密码不能为空!");
        }

        if (!passwordValidation(password, user)){
            throw new InvalidParameterException("密码错误!");
        }

        String token = user.getId();

        return token;
    }

    @Override
    public boolean validateToken(String token) throws ApiException {
        if (StringUtils.isBlank(token)){
            throw new ApiException("token is null!");
        }

        User user = userDao.findOne(token);
        if (null == user){
            return personsService.validateToken(token);
//            throw new ApiException(String.format("%s not exists!", token));
        }

        return true;
    }

    @Override
    @Transactional
    public User getByToken(String token) throws ApiException {
        User user = userDao.findOne(token);

        if (null == user){
            user = personsService.getByToken(token);
            if (null == user) {
                throw new ApiException(String.format("%s not exists!", token));
            }
        }

        User userVO = new User();
        userVO.setId(user.getId());
        userVO.setName(user.getName());
        userVO.setLoginName(user.getLoginName());

        return userVO;
    }

    @Override
    public List<User> listByRoleCode(String code) {
        Role role = roleDao.findByCode(code);
        List<User> users = new ArrayList<User>();
        users.addAll(role.getUsers());
        return users;
    }

    private boolean passwordValidation(String password, User user){

        byte[] salt = Encodes.decodeHex(user.getSalt());

        byte[] hashPassword = Digests.sha1(password.getBytes(), salt, 1024);

        return user.getPassword().equals(Encodes.encodeHex(hashPassword));
    }


    public PersonsService getPersonsService() {
        return personsService;
    }

    public void setPersonsService(PersonsService personsService) {
        this.personsService = personsService;
    }
}
