-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for v_gest_pet_register  会员宠物挂号视图
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
drop view if exists v_gest_pet_register;
create view v_gest_pet_register as
select g.id gest_id,g.gest_code, g.gest_name,g.mobile_phone,g.gest_style,
  p.id pet_id, p.pet_name, p.sick_file_code,it.is_count, it.is_vip_discount,
  reg.register_no, reg.item_code,reg.item_name, reg.register_price, it.is_sell,
  reg.id relation_id, reg.operator_man, reg.doctor,
  reg.doctor_id, reg.status, reg.paid_status register_paid_status,reg.paid_time,
  reg.pause_reason, reg.create_user_id, reg.create_date, reg.update_date,reg.update_user_id,
  reg.assistant_doctor_id, reg.assistant_doctor_name
from t_gest g
INNER JOIN t_pet p on g.id = p.gest_id
INNER JOIN t_medic_register_record reg on p.id = reg.pet_id
INNER JOIN t_item_type it on reg.item_code = it.item_code

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for v_settle_accounts_view  待支付视图
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
drop view if exists v_settle_accounts_view;
create view v_settle_accounts_view as
--   select uuid() id, sds.gest_id, sdsd.item_code, sdsd.item_name, sdsd.sell_price item_cost,
--     sdsd.item_num, sdsd.busi_type_id, '直接销售' business_type, sds.id relation_id,
--     it.is_vip_discount, sdsd.sell_unit item_unit, sdsd.id relation_detail_id
--   from  t_store_direct_sell sds
--     INNER JOIN t_store_direct_sell_detail sdsd on sds.id = sdsd.direct_sell_id
--     LEFT JOIN t_gest g on sds.gest_id=g.id
--     LEFT JOIN t_item_type it on sdsd.item_code = it.item_code
--   where sdsd.paid_status <> 'SM00051' or sdsd.paid_status is null
--
--   UNION ALL

  select uuid() id,gpr.gest_id, gpr.item_code,gpr.item_name,gpr.register_price item_cost,
    1 item_num, 10 busi_type_id,'挂号费用' business_type, gpr.relation_id, gpr.is_vip_discount, '次' item_unit,
    gpr.relation_id relation_detail_id
  from v_gest_pet_register gpr
    LEFT JOIN t_item_type it on gpr.item_code=it.item_code
  where gpr.register_paid_status is null or gpr.register_paid_status <> 'SM00051'

  UNION ALL

  select uuid() id,p.gest_id, mpd.item_code,mpd.item_name,mpd.item_cost,mpd.item_num,
    it.busi_type_id, '处置处方' business_type, mp.id relation_id,
    it.is_vip_discount, mpd.recipe_unit item_unit,mpd.id relation_detail_id
  from t_medic_prescription_detail mpd
    INNER JOIN t_medic_prescription mp on mp.id = mpd.prescription_id
    INNER JOIN t_medic_medictreat_record mmt on mp.medic_record_id = mmt.id
    LEFT JOIN t_pet p on mmt.pet_id = p.id
    LEFT JOIN t_gest g on p.gest_id = g.id
    LEFT JOIN t_item_type it on mpd.item_code = it.item_code
  WHERE mpd.paid_status is null or mpd.paid_status <> 'SM00051'
;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for v_gest_bill  会员待支付
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
drop view if exists v_gest_bill;
create view v_gest_bill as
select uuid() id, gs.gest_id, g.gest_code gest_no, gest_name,g.mobile_phone phone, gs.total from t_gest g
INNER JOIN (select gest_id, sum(item_cost * item_num) total from v_settle_accounts_view
  group by gest_id) gs
  on g.id = gs.gest_id
;



