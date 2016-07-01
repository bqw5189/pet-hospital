package com.fionapet.business.aop;

import cn.fiona.pet.account.exception.ApiException;
import cn.fiona.pet.account.exception.AuthorizationException;
import cn.fiona.pet.account.service.AccountService;
import com.fionapet.business.facade.RestServiceBase;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 身份认证 切面
 * Created by tom on 16/6/28.
 */
@Aspect
public class AuthInterceptor {
    private final static Logger LOGGER = LoggerFactory.getLogger(AuthInterceptor.class);
    @Autowired
    private AccountService accountService;

    @Pointcut("execution(* com.fionapet.business.facade.*.*(..))")
    private void anyMethod(){}//定义一个切入点

    @Around("anyMethod()")
    public Object process(ProceedingJoinPoint point) throws Throwable {

        Object[] args = point.getArgs();
        if (args != null && args.length > 0 && args[0].getClass() == String.class) {
            RestServiceBase restServiceBase = (RestServiceBase) point.getTarget();
            restServiceBase.getService().setToken(point.getArgs()[0]+"");
        }

        return point.proceed(args);
    }

    @Before(value = "anyMethod() && args(token,..)", argNames = "token")
    public void doAccessCheck(String token) throws AuthorizationException {
        LOGGER.debug("check token:{}", token);

        try {
            boolean validateToken = accountService.validateToken(token);

            if (!validateToken){
                throw new AuthorizationException("token 验证失败!");
            }
        } catch (ApiException e) {
            LOGGER.warn("Request filter invoked:Token validate fail!");
            throw new AuthorizationException("token 验证失败!");
        }
    }
}
