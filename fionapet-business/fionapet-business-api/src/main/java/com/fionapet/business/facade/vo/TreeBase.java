package com.fionapet.business.facade.vo;

import com.fionapet.business.entity.CMSEntity;

import javax.persistence.Transient;

/**
 * 树结构
 * Created by tom on 16/8/29.
 */
public abstract class TreeBase<T extends CMSEntity> implements Treeable {
    private T parentObject;

    public T getParentObject() {
        return parentObject;
    }

    public void setParentObject(T parentObject) {
        this.parentObject = parentObject;
    }

    @Transient
    public String getParent(){
        return this.getParentObject().getId();
    }

    public void setParent(String parent){
        this.getParentObject().setId(parent);
    }

    @Transient
    public abstract String getText();

    public abstract void setText(String text);
}
