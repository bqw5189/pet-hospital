package com.fionapet.business.service;

import com.fionapet.business.entity.MedicVedioExam;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.MedicVedioExamDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  医生影像样例
 * @author baiqw
 */
public class MedicVedioExamServiceImpl extends CURDServiceBase<MedicVedioExam> implements MedicVedioExamService {
    @Autowired
    private MedicVedioExamDao medicVedioExamDao;

    @Override
    public DaoBase<MedicVedioExam> getDao() {
        return medicVedioExamDao;
    }
}
