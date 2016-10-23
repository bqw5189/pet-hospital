package com.fionapet.business.facade.vo;

/**
 * Created by tom on 16/10/23.
 */
public class BillItemVO {
    private String id;
    private String name;
    /**
     * 原价
     */
    private Double oldPrice;
    /**
     * 实价
     */
    private Double price;
    /**
     * 折扣 优惠
     */
    private Float discount = 0f;

    /**
     * 数量
     */
    private int count;

    /**
     * 单位
     */
    private String unit;

    /**
     * 小计
     */
    private Double total;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(Double oldPrice) {
        this.oldPrice = oldPrice;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Float getDiscount() {
        return discount;
    }

    public void setDiscount(Float discount) {
        this.discount = discount;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Double getTotal() {
        if (null != price) {
            total = price * count;
        }
        return total;
    }

}
