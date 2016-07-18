-- t_dealer --
insert into t_dealer (id, code,name, create_user_id, update_user_id,company_type) values(uuid(),'JXS0000000001', '北京龙科生物制药有限公司','fc5db3b3-4063-4a12-a511-880ba19e4b58','fc5db3b3-4063-4a12-a511-880ba19e4b58','DEALER');
insert into t_dealer (id, code,name, create_user_id, update_user_id,company_type) values(uuid(),'JXS0000000002', '湖南丹维生物科技有限公司','fc5db3b3-4063-4a12-a511-880ba19e4b58','fc5db3b3-4063-4a12-a511-880ba19e4b58','DEALER');
insert into t_dealer (id, code,name, create_user_id, update_user_id,company_type) values(uuid(),'JXS0000000003', '美国瑞普斯生物药品集团有限公司','fc5db3b3-4063-4a12-a511-880ba19e4b58','fc5db3b3-4063-4a12-a511-880ba19e4b58','DEALER');
insert into t_dealer (id, code,name, create_user_id, update_user_id,company_type) values(uuid(),'JXS0000000004', '五湖','fc5db3b3-4063-4a12-a511-880ba19e4b58','fc5db3b3-4063-4a12-a511-880ba19e4b58','DEALER');
insert into t_dealer (id, code,name, create_user_id, update_user_id,company_type) values(uuid(),'JXS0000000005', '宠儿香','fc5db3b3-4063-4a12-a511-880ba19e4b58','fc5db3b3-4063-4a12-a511-880ba19e4b58','DEALER');
-- t_dealer --
-- t_member_level --
insert into t_member_level (id, name,is_credit,is_discount,discount_rate, create_user_id, update_user_id) values(uuid(), '普通会员',FALSE ,FALSE ,100, 'fc5db3b3-4063-4a12-a511-880ba19e4b58','fc5db3b3-4063-4a12-a511-880ba19e4b58');
insert into t_member_level (id, name,is_credit,is_discount,discount_rate, create_user_id, update_user_id) values(uuid(), '银卡会员',FALSE ,TRUE ,95, 'fc5db3b3-4063-4a12-a511-880ba19e4b58','fc5db3b3-4063-4a12-a511-880ba19e4b58');
insert into t_member_level (id, name,is_credit,is_discount,discount_rate, create_user_id, update_user_id) values(uuid(), '金卡会员',FALSE ,TRUE ,92, 'fc5db3b3-4063-4a12-a511-880ba19e4b58','fc5db3b3-4063-4a12-a511-880ba19e4b58');
-- t_member_level --
