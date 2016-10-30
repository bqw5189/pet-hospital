package com.fionapet.business.facade.vo;

import com.fionapet.business.entity.GestPaidRecord;
import com.fionapet.business.entity.SettleAccountsView;

import java.util.List;

/**
 * Created by tom on 16/10/30.
 */
public class PayVO {
    private GestPaidRecord gestPaidRecord;
    private List<SettleAccountsView> settleAccountsViews;

    public GestPaidRecord getGestPaidRecord() {
        return gestPaidRecord;
    }

    public void setGestPaidRecord(GestPaidRecord gestPaidRecord) {
        this.gestPaidRecord = gestPaidRecord;
    }

    public List<SettleAccountsView> getSettleAccountsViews() {
        return settleAccountsViews;
    }

    public void setSettleAccountsViews(List<SettleAccountsView> settleAccountsViews) {
        this.settleAccountsViews = settleAccountsViews;
    }
}
