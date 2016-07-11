package com.fionapet.business.service;

import com.fionapet.business.entity.Images;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.ImagesDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  图片信息
 * @author baiqw
 */
public class ImagesServiceImpl extends CURDServiceBase<Images> implements ImagesService {
    @Autowired
    private ImagesDao imagesDao;

    @Override
    public DaoBase<Images> getDao() {
        return imagesDao;
    }
}
