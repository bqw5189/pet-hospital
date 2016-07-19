
package com.fionapet.business.consumer;


import cn.fiona.pet.account.entity.RestResultEnum;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.PetRace;
import junit.framework.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.ProcessingException;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.HashMap;
import java.util.List;

/**
 * @author baiqw
 */
public class PetRaceRestClient extends RestClientTestCase{
    private static final Logger LOGGER = LoggerFactory.getLogger(PetRaceRestClient.class);
    private static final String TOKEN = "fc5db3b3-4063-4a12-a511-880ba19e4b58";

    @Test(expected = ProcessingException.class)
    public void testList(){
         assertRequest(new Assertable() {
            @Override
            public void assertBlack(RestResult restResult) throws Exception {
                RestResult<List<PetRace>> result = (RestResult<List<PetRace>>)restResult;
                Assert.assertEquals(restResult.getCode(), RestResultEnum.OK.getCode());

                Assert.assertNotNull(result.getData());

                Assert.assertEquals(result.getData().size(), 5);

                LOGGER.info("pet race list:{}", JSON.toJSON(restResult));
            }
        }, TOKEN);
    }


    @Test(expected = ProcessingException.class)
    public void testCreate(){
        final PetRace petRace = new PetRace();
        petRace.setName("爬行科");

        Response response = getBuilder(TOKEN).post(Entity.entity(petRace, MediaType.APPLICATION_JSON));

        assertRequest(new Assertable() {
            @Override
            public void assertBlack(RestResult restResult) throws Exception {
                LOGGER.info("restResult:{}", restResult);
                RestResult<HashMap> result = (RestResult<HashMap>)restResult;
                Assert.assertEquals(restResult.getCode(), RestResultEnum.OK.getCode());

                Assert.assertNotNull(result.getData());

                LOGGER.info("result.getData():{}", result.getData().getClass());

                Assert.assertNotNull(result.getData().get("uuid"));

                Assert.assertEquals(result.getData().get("name"), petRace.getName());

                LOGGER.info("pet race list:{}", JSON.toJSON(restResult));
            }
        }, response);
    }



}
