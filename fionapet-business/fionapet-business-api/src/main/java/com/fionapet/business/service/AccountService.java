package com.fionapet.business.service;

import com.fionapet.business.entity.Account;
import com.fionapet.business.facade.RestResult;

/**
 * @author baiqw
 */
public interface AccountService {
    Account signIn(Account account);
}
