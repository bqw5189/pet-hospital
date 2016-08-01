
package com.fionapet.business.restclient;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.PageSearch;
import com.fionapet.business.entity.Pet;
import com.fionapet.business.test.DataBuilder;
import com.fionapet.business.test.PetData;
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
* Created by tom on 2016-07-19 10:31:06.
 */
public class PetRestClient extends RestClientTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(PetRestClient.class);
    private static final String TOKEN = "fc5db3b3-4063-4a12-a511-880ba19e4b58";
    private static final String URL = "http://localhost:8818/api/v2/pets";

    @Test(expected = ProcessingException.class)
    public void testList(){
         assertRequest(new Assertable() {
            @Override
            public void assertBlack(RestResult restResult) throws Exception {
                RestResult<List<Pet>> result = (RestResult<List<Pet>>)restResult;
                Assert.assertEquals(restResult.getCode(), RestResultEnum.OK.getCode());

                Assert.assertNotNull(result.getData());

                Assert.assertEquals(result.getData().size(), 1);

                LOGGER.info("Pet list:{}", JSON.toJSON(restResult));
            }
        }, URL, PetRestClient.TOKEN);
    }

    @Test(expected = ProcessingException.class)
    public void testPage(){
        final PageSearch pageSearch = new PageSearch();

        LOGGER.info("pageSearch:{}", pageSearch);

        Response response = getBuilder(URL + "/page", TOKEN).post(Entity.entity(pageSearch, MediaType.APPLICATION_JSON));

        assertRequest(new Assertable() {
            @Override
            public void assertBlack(RestResult restResult) throws Exception {
                LOGGER.info("restResult:{}", restResult);
                RestResult<HashMap> result = (RestResult<HashMap>)restResult;
                Assert.assertEquals(restResult.getCode(), RestResultEnum.OK.getCode());

                Assert.assertNotNull(result.getData());

                LOGGER.info("page:{}", JSON.toJSON(restResult));
            }
        }, response);
    }

    @Test(expected = ProcessingException.class)
    public void testCreateUpdate(){
        final Pet pet = DataBuilder.data(PetData.class);

        LOGGER.info("create pet:{}", pet);

        Response response = getBuilder(URL, TOKEN).post(Entity.entity(pet, MediaType.APPLICATION_JSON));

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

                pet.setPetName("哈士奇2");
                pet.setId(result.getData().get("id")+"");

                Response response = getBuilder(URL, TOKEN).post(Entity.entity(pet, MediaType.APPLICATION_JSON));

                assertRequest(new Assertable() {
                    @Override
                    public void assertBlack(RestResult restResult) throws Exception {
                        LOGGER.info("restResult:{}", restResult);
                        RestResult<HashMap> result = (RestResult<HashMap>)restResult;
                        Assert.assertEquals(restResult.getCode(), RestResultEnum.OK.getCode());

                        Assert.assertNotNull(result.getData());

                        LOGGER.info("result.getData():{}", result.getData().getClass());

                        Assert.assertEquals(result.getData().get("petName"), "哈士奇2");

                        LOGGER.info("list:{}", JSON.toJSON(restResult));
                    }
                }, response);

            }
        }, response);


    }



}
