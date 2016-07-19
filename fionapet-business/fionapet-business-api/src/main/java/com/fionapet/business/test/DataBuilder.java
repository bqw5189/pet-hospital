package com.fionapet.business.test;

/**
 * Created by tom on 16/7/19.
 */
public class DataBuilder {
    public static <R,T extends IData> R data(Class<T> dataClass){
        try {
            return (R) dataClass.newInstance().data();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return null;
    }


}
