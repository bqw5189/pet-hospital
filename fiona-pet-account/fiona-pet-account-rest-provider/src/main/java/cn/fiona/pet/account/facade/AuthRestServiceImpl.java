package cn.fiona.pet.account.facade;

import cn.fiona.pet.account.entity.Account;
import cn.fiona.pet.account.exception.ApiException;
import cn.fiona.pet.account.exception.NotFoundException;
import cn.fiona.pet.account.service.AccountService;
import io.swagger.annotations.ApiParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 身份认证
 *
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
 */
public class AuthRestServiceImpl implements AuthRestService {

  private static final Logger logger = LoggerFactory.getLogger(AuthRestServiceImpl.class);

  private AccountService accountService;

  public AccountService getAccountService() {
      return accountService;
  }

  public void setAccountService(AccountService accountService) {
      this.accountService = accountService;
  }
    @Override
    public RestResult<String> login(@ApiParam(value = "登录信息", required = true) LoginVO loginVO) {
        RestResult<String> restResult = RestResult.NOT_FOND();

        try {
            String token = accountService.login(loginVO);

            restResult = RestResult.OK(token);
        }catch (ApiException apiE){
            restResult = RestResult.REST_RESULT(apiE);
        }catch (Exception e){
            logger.warn("{}", e);
            restResult = RestResult.ERROR(e.getMessage());
        }

        return restResult;
    }
}