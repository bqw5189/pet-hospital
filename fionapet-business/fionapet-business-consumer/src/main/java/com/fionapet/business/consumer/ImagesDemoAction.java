package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.Images;
import com.fionapet.business.service.ImagesService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:53.
 */
public class ImagesDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ImagesDemoAction.class);
    private ImagesService imagesService;

    public ImagesService getImagesService() {
        return imagesService;
    }

    public void setImagesService(ImagesService imagesService) {
        this.imagesService = imagesService;
    }

    public void start() throws Exception {
        List<Images> imagess = imagesService.listAll();
        assert(imagess != null);
        assert(imagess.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(imagess));
    }
}
