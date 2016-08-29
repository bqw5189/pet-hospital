package com.fionapet.business.facade.vo;

import javax.persistence.Transient;

/**
 * 树结构
 * Created by tom on 16/8/29.
 */
public interface Treeable {
    @Transient
    String getParent();

    void setParent(String parent);

    @Transient
    String getText();

    void setText(String text);
}
