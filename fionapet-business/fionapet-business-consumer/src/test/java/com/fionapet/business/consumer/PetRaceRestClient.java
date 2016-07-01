
package com.fionapet.business.consumer;


import cn.fiona.pet.account.entity.RestResultEnum;
import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.PetRace;
import junit.framework.Assert;
import org.junit.AfterClass;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.ProcessingException;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

/**
 * @author baiqw
 */
public class PetRaceRestClient extends RestClientTestCase{
    private static final Logger LOGGER = LoggerFactory.getLogger(PetRaceRestClient.class);

    @Test(expected = ProcessingException.class)
    public void testList(){
        LOGGER.info("Request petRaceList url: {}" , URL);
        WebTarget target = CLIENT.target(URL);
        Response response = target.request().header(AuthRestService.HEADER_AUTHORIZATION_KEY, "fc5db3b3-4063-4a12-a511-880ba19e4b58").get();

        try {
            Assert.assertEquals(response.getStatus(), 200);

            RestResult<List<PetRace>> restResult = response.readEntity(RestResult.class);

            Assert.assertEquals(restResult.getCode(), RestResultEnum.OK.getCode());

            Assert.assertNotNull(restResult.getData());

            Assert.assertEquals(restResult.getData().size(), 5);

            LOGGER.info("pet race list:{}", JSON.toJSON(restResult));

        } finally {
            response.close();
            Assert.assertEquals(response.getStatus(), 200);
            throw new ProcessingException("测试结束");
        }
    }



}
