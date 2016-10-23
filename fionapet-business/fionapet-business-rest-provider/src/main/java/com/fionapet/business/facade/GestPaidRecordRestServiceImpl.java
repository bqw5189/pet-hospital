package com.fionapet.business.facade;

import com.fionapet.business.entity.GestPaidRecord;
import com.fionapet.business.facade.vo.BillItemVO;
import com.fionapet.business.facade.vo.BillVO;
import io.swagger.annotations.ApiParam;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.GestPaidRecordService;
import org.dubbo.x.util.ConstantVariable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.HeaderParam;
import java.util.List;
import java.util.Map;

/**
 * 顾客影像记录表
* Created by tom on 2016-07-25 09:32:34.
 */
public class GestPaidRecordRestServiceImpl extends RestServiceBase<GestPaidRecord> implements GestPaidRecordRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(GestPaidRecordRestServiceImpl.class);

    private GestPaidRecordService gestPaidRecordService;

    public GestPaidRecordService getGestPaidRecordService() {
        return gestPaidRecordService;
    }

    public void setGestPaidRecordService(GestPaidRecordService gestPaidRecordService) {
        this.gestPaidRecordService = gestPaidRecordService;
    }

    @Override
    public CURDService<GestPaidRecord> getService() {
        return gestPaidRecordService;
    }

    @Override
    public RestResult<List<BillVO>> billList(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token) {
        return RestResult.OK(gestPaidRecordService.billList());
    }

    @Override
    public RestResult<Map<String, List<BillItemVO>>> billDetail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("会员id") String gestId) {
        return RestResult.OK(gestPaidRecordService.billDetail(gestId));
    }
}
