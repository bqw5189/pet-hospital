package com.fl.pet.account.service;

import com.fl.pet.account.entity.Account;
import com.fl.pet.account.facade.RestResult;

/**
 * @author baiqw
 */
public interface AccountService {
    Account signIn(Account account);
}
