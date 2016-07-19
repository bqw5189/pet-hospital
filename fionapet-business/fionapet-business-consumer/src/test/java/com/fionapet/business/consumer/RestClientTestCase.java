
package com.fionapet.business.consumer;


import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import junit.framework.Assert;
import org.junit.AfterClass;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.ProcessingException;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Response;

/**
 * @author tom
 */
public class RestClientTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(RestClientTestCase.class);
    public static final int PORT = 8818;
    public static final String URL = "http://localhost:" + PORT + "/api/v2/pet/races";
    public static final Client CLIENT = ClientBuilder.newClient();

    @AfterClass
    public static void close() {
        CLIENT.close();
    }

    public Invocation.Builder getBuilder(String token) {
        WebTarget target = CLIENT.target(URL);
        return target.request().header(AuthRestService.HEADER_AUTHORIZATION_KEY, token);
    }

    public void  assertRequest(Assertable assertable, String token) {
        LOGGER.info("Request petRaceList url: {}", URL);

        final Response response = getBuilder(token).get();

        assertRequest(assertable, response);
    }

    public void  assertRequest(Assertable assertable, Response response) {
        Assert.assertEquals(response.getStatus(), 200);

        try {
            RestResult restResult = response.readEntity(RestResult.class);
            assertable.assertBlack(restResult);
        }catch (Exception e){
            e.printStackTrace();
        } finally {
            response.close();
            Assert.assertEquals(response.getStatus(), 200);
            throw new ProcessingException("测试结束");
        }
    }

}
