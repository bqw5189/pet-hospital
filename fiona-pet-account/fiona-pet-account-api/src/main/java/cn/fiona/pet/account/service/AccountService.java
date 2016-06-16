package cn.fiona.pet.account.service;

import cn.fiona.pet.account.entity.Account;
import cn.fiona.pet.account.facade.RestResult;

/**
 * @author baiqw
 */
public interface AccountService {
    Account signIn(Account account);
}
