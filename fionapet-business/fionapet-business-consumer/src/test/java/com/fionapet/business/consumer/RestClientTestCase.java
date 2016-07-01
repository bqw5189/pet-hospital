
package com.fionapet.business.consumer;


import org.junit.AfterClass;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;

/**
 * @author baiqw
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

}
