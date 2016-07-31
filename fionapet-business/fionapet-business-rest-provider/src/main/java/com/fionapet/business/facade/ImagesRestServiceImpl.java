package com.fionapet.business.facade;

import com.fionapet.business.entity.Images;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ImagesService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 图片信息
* Created by tom on 2016-07-31 16:42:53.
 */
public class ImagesRestServiceImpl extends RestServiceBase<Images> implements ImagesRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ImagesRestServiceImpl.class);

    private ImagesService imagesService;

    public ImagesService getImagesService() {
        return imagesService;
    }

    public void setImagesService(ImagesService imagesService) {
        this.imagesService = imagesService;
    }

    @Override
    public CURDService<Images> getService() {
        return imagesService;
    }

}
