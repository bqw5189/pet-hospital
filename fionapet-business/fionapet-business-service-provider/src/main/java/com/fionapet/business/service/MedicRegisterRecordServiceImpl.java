package com.fionapet.business.service;

import com.fionapet.business.entity.DictTypeDetail;
import com.fionapet.business.entity.MedicRegisterRecord;
import com.fionapet.business.facade.vo.BillItemVO;
import com.fionapet.business.repository.DictTypeDetailDao;
import org.dubbo.x.entity.PageSearch;
import org.dubbo.x.entity.SearchFilter;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicRegisterRecordDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import java.util.ArrayList;
import java.util.List;

/**
 *  医生登记记录明细
* Created by tom on 2016-07-18 11:56:10.
 */
public class MedicRegisterRecordServiceImpl extends CURDServiceBase<MedicRegisterRecord> implements MedicRegisterRecordService {
    @Autowired
    private MedicRegisterRecordDao medicRegisterRecordDao;
    @Autowired
    private DictTypeDetailDao dictTypeDetailDao;

    @Override
    public DaoBase<MedicRegisterRecord> getDao() {
        return medicRegisterRecordDao;
    }


    @Override
    public Page<MedicRegisterRecord> page(PageSearch pageSearch) {
        SearchFilter searchFilter = new SearchFilter();

        searchFilter.setFieldName("createUserId");
        searchFilter.setOperator(SearchFilter.Operator.EQ.toString());
        searchFilter.setValue(getCurrentUser().getId());

        pageSearch.getFilters().add(searchFilter);

        searchFilter = new SearchFilter();

        searchFilter.setFieldName("status.dictDetailCode");
        searchFilter.setOperator(SearchFilter.Operator.EQ.toString());
        searchFilter.setValue("SM00037");

        pageSearch.getFilters().add(searchFilter);

        return super.page(pageSearch);
    }

    @Override
    public MedicRegisterRecord createOrUpdte(MedicRegisterRecord entity) {
        if (entity.getId() == null){
            DictTypeDetail dictTypeDetail = dictTypeDetailDao.findByDictDetailCode("SM00034");
            entity.setStatus(dictTypeDetail);
        }

        return super.createOrUpdte(entity);
    }

    @Override
    public List<BillItemVO> billDetail(String id) {
        List<BillItemVO> result = new ArrayList<BillItemVO>();

        List<MedicRegisterRecord> medicRegisterRecords = medicRegisterRecordDao.findByPetIdAndPaidStatusNot(id, "SM00051");

        for (MedicRegisterRecord medicRegisterRecord: medicRegisterRecords){
            BillItemVO billItemVO = new BillItemVO();

            billItemVO.setId(medicRegisterRecord.getId());
            billItemVO.setCount(1);
            billItemVO.setOldPrice(medicRegisterRecord.getRegisterPrice());
            billItemVO.setPrice(medicRegisterRecord.getRegisterPrice());

            result.add(billItemVO);
        }

        return result;
    }
}
