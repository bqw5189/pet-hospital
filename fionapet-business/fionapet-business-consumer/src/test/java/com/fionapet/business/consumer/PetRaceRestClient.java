
package com.fionapet.business.consumer;


import cn.fiona.pet.account.entity.RestResultEnum;
import cn.fiona.pet.account.facade.RestResult;
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
        Response response = target.request().get();

        try {
            if (response.getStatus() != 200) {
                throw new RuntimeException("Failed with HTTP error code : " + response.getStatus());
            }

            RestResult<List<PetRace>> restResult = response.readEntity(RestResult.class);

            Assert.assertEquals(restResult.getCode(), RestResultEnum.OK.getCode());

            Assert.assertNotNull(restResult.getData());

            Assert.assertEquals(restResult.getData().size(), 5);

        } finally {
            response.close();
            throw new ProcessingException("测试结束");
        }
    }



}
