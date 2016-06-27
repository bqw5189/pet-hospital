package cn.fiona.pet.account.service;

import cn.fiona.pet.account.entity.User;
import cn.fiona.pet.account.exception.ApiException;
import cn.fiona.pet.account.exception.NotFoundException;
import cn.fiona.pet.account.facade.LoginVO;
import cn.fiona.pet.account.repository.UserDao;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springside.modules.security.utils.Digests;
import org.springside.modules.utils.Encodes;

import java.security.InvalidParameterException;

/**
 * @author baiqw
 */
public class AccountServiceImpl implements AccountService {
    @Autowired
    private UserDao userDao;

    private Logger logger = LoggerFactory.getLogger(AccountServiceImpl.class);

    @Override
    public String login(LoginVO loginVO) throws ApiException {
        User user = userDao.findByLoginName(loginVO.getName());

        if (null == loginVO){
            throw new InvalidParameterException("输入数据为空!");
        }

        if (null == user) {
            throw new NotFoundException(String.format("[%s]用户未找到!", loginVO.getName()));
        }

        String password = loginVO.getPassword();

        if (StringUtils.isBlank(password)){
            throw new InvalidParameterException("密码不能为空!");
        }

        if (!passwordValidation(password, user)){
            throw new InvalidParameterException("密码错误!");
        }

        String token = user.getUuid();

        return token;
    }

    private boolean passwordValidation(String password, User user){

        byte[] salt = Encodes.decodeHex(user.getSalt());

        byte[] hashPassword = Digests.sha1(password.getBytes(), salt, 1024);

        return user.getPassword().equals(Encodes.encodeHex(hashPassword));
    }


}
