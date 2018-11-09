-- 支付数据
select * from t_gest_paid_record where create_date>='2018-02-01' and create_date<'2018-03-01' order by operate_content desc;
select * from t_gest_paid_record where create_date>='2018-03-01' and create_date<'2018-04-01' order by operate_content desc;

-- 订单数据
select * from t_finance_settle_accounts where id='ff80808160e7fa930161acca9b793bdd';
select * from t_finance_settle_accounts_detail where settle_accounts_detail_id in (select id from t_finance_settle_accounts where settle_code='JS2018021914135');

-- 处方方子 ff80808160e7fa930161acc8054a3bcc		SM00051		ff80808160e7fa930161acc805563bcd
select * from t_medic_prescription
ff80808160e7fa930161acc8054a3bcc		SM00051		ff80808160e7fa930161acc805563bcd


-- 诊疗信息
select * from t_medic_medictreat_record where create_date>='2018-02-01' and create_date<'2018-03-01'


select mmr.* from t_medic_prescription mp, t_medic_medictreat_record mmr
where mp.medic_record_code=mmr.medi_treatment_code
and mmr.create_date>='2018-02-01'
and mmr.create_date<'2018-03-01'
and mp.prescription_cost > 300
and mmr.diagnosed not like '%去势%'
and mmr.rheme not like '%去势%'
and mmr.diagnosed not like '%绝育%'
and mmr.rheme not like '%绝育%'
and mmr.rheme not like '%寄养%'
and mmr.diagnosed not like '%免%'
and mmr.rheme not like '%疫%'
and mmr.diagnosed not like '%火化%'
and mmr.diagnosed not like '%细小%'
and mmr.diagnosed not like '%猫瘟%'
and mmr.rheme not like '%新购%'
and mmr.rheme not like '%老年%'

order by mp.prescription_cost desc

select sum(mp.prescription_cost) from t_medic_prescription mp, t_medic_medictreat_record mmr
where mp.medic_record_code=mmr.medi_treatment_code
and mmr.create_date>='2018-02-01'
and mmr.create_date<'2018-03-01'
and mp.prescription_cost > 300
and mmr.diagnosed not like '%去势%'
and mmr.rheme not like '%去势%'
and mmr.diagnosed not like '%绝育%'
and mmr.rheme not like '%绝育%'
and mmr.rheme not like '%寄养%'
and mmr.diagnosed not like '%免%'
and mmr.rheme not like '%疫%'
and mmr.diagnosed not like '%火化%'
and mmr.diagnosed not like '%细小%'
and mmr.diagnosed not like '%猫瘟%'
and mmr.rheme not like '%新购%'
and mmr.rheme not like '%老年%'