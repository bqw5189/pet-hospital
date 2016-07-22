
package com.fionapet.business.restclient;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.Gest;
import com.fionapet.business.test.DataBuilder;
import com.fionapet.business.test.GestData;
import junit.framework.Assert;
import org.dubbo.x.consumer.Assertable;
import org.dubbo.x.consumer.RestClientTestCase;
import org.dubbo.x.entity.RestResultEnum;
import org.dubbo.x.facade.RestResult;
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
* Created by tom on 2016-07-22 14:21:58.
 */
public class GestRestClient extends RestClientTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(GestRestClient.class);
    private static final String TOKEN = "fc5db3b3-4063-4a12-a511-880ba19e4b58";
    private static final String URL = "http://localhost:8818/api/v2/gests";

    @Test(expected = ProcessingException.class)
    public void testList(){
         assertRequest(new Assertable() {
            @Override
            public void assertBlack(RestResult restResult) throws Exception {
                RestResult<List<Gest>> result = (RestResult<List<Gest>>)restResult;
                Assert.assertEquals(restResult.getCode(), RestResultEnum.OK.getCode());

                Assert.assertNotNull(result.getData());

                Assert.assertEquals(result.getData().size(), 0);

                LOGGER.info("Gest list:{}", JSON.toJSON(restResult));
            }
        }, URL, GestRestClient.TOKEN);
    }


    @Test(expected = ProcessingException.class)
    public void testCreate(){
        final Gest gest = DataBuilder.data(GestData.class);

        Response response = getBuilder(URL, TOKEN).post(Entity.entity(gest, MediaType.APPLICATION_JSON));

        assertRequest(new Assertable() {
            @Override
            public void assertBlack(RestResult restResult) throws Exception {
                LOGGER.info("restResult:{}", restResult);
                RestResult<HashMap> result = (RestResult<HashMap>)restResult;
                Assert.assertEquals(restResult.getCode(), RestResultEnum.OK.getCode());

                Assert.assertNotNull(result.getData());

                LOGGER.info("result.getData():{}", result.getData().getClass());

                Assert.assertNotNull(result.getData().get("id"));

                LOGGER.info("list:{}", JSON.toJSON(restResult));
            }
        }, response);
    }



}
