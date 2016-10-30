package com.fionapet.business.service;

import com.fionapet.business.entity.AppConfig;
import com.fionapet.business.entity.SerialNumber;
import com.fionapet.business.repository.GestDao;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.commons.lang.time.DateUtils;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.AppConfigDao;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 *  应用配置
* Created by tom on 2016-07-18 11:56:10.
 */
public class AppConfigServiceImpl extends CURDServiceBase<AppConfig> implements AppConfigService {
    /**
     * 名称和编号表信息
     */
    private static final Map<String, NumberInfo> NUMBER_INFO = new HashMap<String, NumberInfo>();
    private static final Map<String, Integer> SEQ = new ConcurrentHashMap<String, Integer>();
    static{
        NUMBER_INFO.put("宠物编号",new NumberInfo("t_pet","pet_code"));
        NUMBER_INFO.put("会员编号",new NumberInfo("t_persons","person_code"));
        NUMBER_INFO.put(NUMBER_KEY_BLBH,new NumberInfo("t_pet","sick_file_code"));
        NUMBER_INFO.put("销售单号",new NumberInfo("t_store_direct_sell","direct_sell_code"));
        NUMBER_INFO.put("寄养编号",new NumberInfo("t_foster_record","foster_no"));
        NUMBER_INFO.put("住院编号",new NumberInfo("t_in_hospital_record","in_hospital_no"));
        NUMBER_INFO.put("结算单号",new NumberInfo("结算单号",true));
        NUMBER_INFO.put("驱虫疫苗组号",new NumberInfo("t_medic_vaccine","vaccine_group_code"));
//        NUMBER_INFO.put("库存条码",new NumberInfo("",""));
        NUMBER_INFO.put("入库单号",new NumberInfo("t_warehouse_inrecord","in_warehouse_code"));
        NUMBER_INFO.put("出库单号",new NumberInfo("t_warehouse_outrecord","out_warehouse_code"));
        NUMBER_INFO.put("退货单号",new NumberInfo("t_warehouse_backrecord","back_warehouse_code"));
        NUMBER_INFO.put("处方流水",new NumberInfo("t_medic_prescription","prescription_code"));
        NUMBER_INFO.put("经销商编号",new NumberInfo("t_dealer","code"));
        NUMBER_INFO.put("商品服务",new NumberInfo("t_item_type","item_code"));
        NUMBER_INFO.put("字典编号",new NumberInfo("t_user_dict_detail","dict_detail_code"));
        NUMBER_INFO.put("角色编号",new NumberInfo("t_role","role_code"));
        NUMBER_INFO.put("个人处方模板",new NumberInfo("t_prescription_template_type","type_no"));
        NUMBER_INFO.put("个人处方",new NumberInfo("t_prescription_template","template_no"));
        NUMBER_INFO.put("仓库编号",new NumberInfo("t_warehouse","code"));
        NUMBER_INFO.put("员工编号",new NumberInfo("t_persons","person_code"));
        NUMBER_INFO.put("服务类型",new NumberInfo("t_item_cate","cate_no"));
        NUMBER_INFO.put("会员等级",new NumberInfo("t_gest_level","level_code"));
        NUMBER_INFO.put("移库编号",new NumberInfo("t_warehouse_moverecord","out_warehouse_code"));
        NUMBER_INFO.put("服务编号",new NumberInfo("t_item_type","item_code"));
//        NUMBER_INFO.put("盘点单编号",new NumberInfo("",""));
        NUMBER_INFO.put("销售退货单号",new NumberInfo("t_return_commodity","rc_code"));

        //挂号
        NUMBER_INFO.put("登记编号",new NumberInfo("t_medic_register_record","register_no", DateFormatUtils.format(System.currentTimeMillis(), "yyyyMMdd"), 4));
        NUMBER_INFO.put("就诊编号",new NumberInfo("t_medic_medictreat_record","medi_treatment_code","BL" + DateFormatUtils.format(System.currentTimeMillis(), "yyyyMMdd"),4));
    }

    /**
     * SQL 通配符
     */
    private static final String SQL_WILDCARDS = "%";

    @Autowired
    private AppConfigDao appConfigDao;
    @Autowired
    private EntityManagerFactory entityManagerFactory;
    @Autowired
    private SerialNumberService serialNumberService;

    @Override
    public DaoBase<AppConfig> getDao() {
        return appConfigDao;
    }

    @Override
    public String genNumberByName(String name) {
        serialNumberService.setCurrentUser(getCurrentUser());

        SerialNumber serialNumber = serialNumberService.getCurrentSerialNumber(name);

        NumberInfo numberInfo = getNumberInfo(name);

        if (null == numberInfo){
            return serialNumber.getSerialNum()+"";
        }

        return numberInfo.prefix + StringUtils.leftPad(serialNumber.getSerialNum() + "", numberInfo.getLength(), "0");
    }


    private NumberInfo getNumberInfo(String name){
        NumberInfo result = NUMBER_INFO.get(name);
        result.setName(name);

        List<AppConfig> numberInfos = appConfigDao.findByConfigNameLike(name + SQL_WILDCARDS);

        for (AppConfig appConfig : numberInfos) {
            if ((name + "前缀").equals(appConfig.getConfigName())) {
                if (result.isHasDate()) {
                    result.setPrefix(appConfig.getConfigValue() + DateFormatUtils.format(System.currentTimeMillis(), "yyyyMMdd"));
                }else{
                    result.setPrefix(appConfig.getConfigValue());
                }
            }
            if ((name + "长度").equals(appConfig.getConfigName())) {
                result.setLength(Integer.parseInt(appConfig.getConfigValue()));
            }
        }

        return result;
    }

    static class NumberInfo{
        private String name;
        private String tableName;
        private String columName;
        private String prefix;
        private int length;
        private boolean hasDate = false;

        public boolean isHasDate() {
            return hasDate;
        }

        public void setHasDate(boolean hasDate) {
            this.hasDate = hasDate;
        }

        public NumberInfo(String tableName, String columName) {
            this.tableName = tableName;
            this.columName = columName;
        }

        public NumberInfo(String tableName, String columName, String prefix, int length) {
            this.name = name;
            this.tableName = tableName;
            this.columName = columName;
            this.prefix = prefix;
            this.length = length;
        }

        public NumberInfo(String name, boolean hasDate) {
            this.name = name;
            this.hasDate = hasDate;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getPrefix() {
            return prefix;
        }

        public void setPrefix(String prefix) {
            this.prefix = prefix;
        }

        public int getLength() {
            return length;
        }

        public void setLength(int length) {
            this.length = length;
        }
    }
}
