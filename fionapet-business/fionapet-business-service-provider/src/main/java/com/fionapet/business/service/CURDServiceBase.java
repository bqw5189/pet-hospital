package com.fionapet.business.service;

import com.fionapet.business.entity.*;
import com.fionapet.business.repository.DaoBase;
import com.google.common.collect.Lists;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
//import org.springside.modules.persistence.DynamicSpecifications;
//import org.springside.modules.persistence.SearchFilter;
//import org.springside.modules.utils.Collections3;

import javax.persistence.criteria.*;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author baiqw
 */
public abstract class CURDServiceBase<T extends CMSEntity> implements CURDService<T> {
    private final static Logger LOGGER = LoggerFactory.getLogger(CURDServiceBase.class);
    private String token;

    @Override
    public String getToken() {
        return token;
    }

    @Override
    public void setToken(String token) {
        this.token = token;
    }

    @Override
    public List<T> listAll() {
        return getDao().findAllBy();
    }

    @Override
    public Page<T> page(PageSearch pageSearch) {
        Sort sort = new Sort(Sort.Direction.fromString("desc"), "createDate");

        if (pageSearch.getSort()!=null){
            sort = new Sort(Sort.Direction.fromString(pageSearch.getSort().getDirection()), pageSearch.getSort().getFieldName());
        }

        LOGGER.debug("pageSearch:{}", pageSearch);

        Pageable pageable = new PageRequest(pageSearch.getPageNumber()-1, pageSearch.getPageSize(), sort);

        Specification<T> spec = bySearchFilter(pageSearch.getFilters());

        Page<T> page = this.getDao().findAll(spec, pageable);

        LOGGER.debug("page:{}", page);

        return page;
    }

    public Specification<T> bySearchFilter(final List<SearchFilter> filters) {
        return new Specification<T>() {
            @Override
            public Predicate toPredicate(Root<T> root, CriteriaQuery<?> query, CriteriaBuilder builder) {
                if (CollectionUtils.isNotEmpty(filters)) {

                    List<Predicate> predicates = Lists.newArrayList();
                    for (SearchFilter filter : filters) {
                        // nested path translate, 如Task的名为"user.name"的filedName, 转换为Task.user.name属性
                        String[] names = StringUtils.split(filter.fieldName, ".");
                        Path expression = root.get(names[0]);
                        for (int i = 1; i < names.length; i++) {
                            expression = expression.get(names[i]);
                        }

                        // logic operator
                        switch (filter.operator) {
                            case EQ:
                                predicates.add(builder.equal(expression, filter.value));
                                break;
                            case LIKE:
                                predicates.add(builder.like(expression, "%" + filter.value + "%"));
                                break;
                            case GT:
                                predicates.add(builder.greaterThan(expression, (Comparable) filter.value));
                                break;
                            case LT:
                                predicates.add(builder.lessThan(expression, (Comparable) filter.value));
                                break;
                            case GTE:
                                predicates.add(builder.greaterThanOrEqualTo(expression, (Comparable) filter.value));
                                break;
                            case LTE:
                                predicates.add(builder.lessThanOrEqualTo(expression, (Comparable) filter.value));
                                break;
                        }
                    }

                    // 将所有条件用 and 联合起来
                    if (!predicates.isEmpty()) {
                        return builder.and(predicates.toArray(new Predicate[predicates.size()]));
                    }
                }

                return builder.conjunction();
            }
        };
    }

    @Override
    public T createOrUpdte(T entity) {
        if (StringUtils.isEmpty(entity.getCreateUserId())){
            entity.setCreateUserId(getToken());
        }

        entity.setUpdateUserId(getToken());

        getDao().save(entity);

        entity = getDao().findOne(entity.getUuid());

        return entity;
    }

    @Override
    public void delete(String uuid) {
        getDao().delete(uuid);
    }

    @Override
    public T detail(String uuid) {
        return getDao().findOne(uuid);
    }

    public abstract DaoBase<T> getDao();
}
