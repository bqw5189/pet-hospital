package cn.fiona.pet.account.service;

import cn.fiona.pet.account.entity.User;
import cn.fiona.pet.account.exception.ApiException;
import cn.fiona.pet.account.facade.LoginVO;

/**
 * 账号接口
 *
 * @author baiqw
 */
public interface AccountService {
    /**
     * 用户登录
     *
     * @param loginVO
     * @return 登录成功返回 token
     */
    String login(LoginVO loginVO) throws ApiException;

    /**
     * token 验证
     * @param token
     * @return
     * @throws ApiException
     */
    boolean validateToken(String token) throws ApiException;

    /**
     * 根据 token 获取用户信息
     * @param token
     * @return
     */
    User getByToken(String token) throws ApiException;
}
