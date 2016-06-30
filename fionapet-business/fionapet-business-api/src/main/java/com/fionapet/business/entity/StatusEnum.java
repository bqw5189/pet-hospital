package com.fionapet.business.entity;

/**
 * Created by tom on 16/6/29.
 */
public enum StatusEnum {
    OK("OK"),DELETE("DELETE");

    private String value;

    StatusEnum(String status) {
        this.value = status;
    }

    @Override
    public String toString() {
        return value;
    }
}
