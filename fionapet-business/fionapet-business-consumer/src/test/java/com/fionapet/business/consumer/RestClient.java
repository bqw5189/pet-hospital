
package com.fionapet.business.consumer;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 * @author tom
 */
public class RestClient {
    private static final Logger LOGGER = LoggerFactory.getLogger(RestClient.class);

  public static void main(String[] args) {
      final String port = "8818";
      petRaceList("http://localhost:" + port + "/api/v2/pet/races", MediaType.APPLICATION_JSON_TYPE);
  }

  private static void petRaceList(String url, MediaType mediaType) {
      LOGGER.info("Request petRaceList url: {}" , url);

      Client client = ClientBuilder.newClient();
      WebTarget target = client.target(url);
      Response response = target.request().get();

      try {
          if (response.getStatus() != 200) {
              throw new RuntimeException("Failed with HTTP error code : " + response.getStatus());
          }
          LOGGER.info("Successfully got result: {}",response.readEntity(String.class));
      } finally {
          response.close();
          client.close();
      }
  }
}
