#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.service;

import ${package}.entity.Account;

/**
 * @author baiqw
 */
public interface AccountService {
    Account signIn(Account account);
}
