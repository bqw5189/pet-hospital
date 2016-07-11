package com.fionapet.business.facade;

import com.fionapet.business.entity.Images;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.ImagesService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 图片信息
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
