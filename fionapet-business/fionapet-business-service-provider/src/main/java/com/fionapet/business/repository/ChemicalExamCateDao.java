package com.fionapet.business.repository;

import com.fionapet.business.entity.ChemicalExamCate;
import org.dubbo.x.repository.DaoBase;

import java.util.List;

/**
 * 化验样例类型
* Created by tom on 2016-07-31 16:42:53.
 **/
public interface ChemicalExamCateDao extends DaoBase<ChemicalExamCate> {
    List<ChemicalExamCate> findByParentObjectCateNo(String cateNo);

    List<ChemicalExamCate> findByParentObjectCateNoIsNull();
}
