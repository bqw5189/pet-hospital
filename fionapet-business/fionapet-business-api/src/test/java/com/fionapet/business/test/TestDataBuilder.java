package com.fionapet.business.test;

import org.junit.Assert;
import org.junit.Test;

/**
 * Created by tom on 16/7/19.
 */
public class TestDataBuilder {
    @Test
    public void testData(){
        Assert.assertNotNull(DataBuilder.data(PetData.class));
    }
}
