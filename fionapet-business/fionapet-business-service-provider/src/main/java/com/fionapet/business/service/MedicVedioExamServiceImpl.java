package com.fionapet.business.service;

import com.fionapet.business.entity.MedicVedioExam;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicVedioExamDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  医生影像样例
* Created by tom on 2016-07-31 16:36:25.
 */
public class MedicVedioExamServiceImpl extends CURDServiceBase<MedicVedioExam> implements MedicVedioExamService {
    @Autowired
    private MedicVedioExamDao medicVedioExamDao;

    @Override
    public DaoBase<MedicVedioExam> getDao() {
        return medicVedioExamDao;
    }
}
