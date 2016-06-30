
package com.fionapet.business;

import com.alibaba.dubbo.common.serialize.support.SerializationOptimizer;
import com.fionapet.business.entity.PetRace;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

/**
 * This class must be accessible from both the provider and consumer
 *
 * @author
 */
public class SerializationOptimizerImpl implements SerializationOptimizer {

    public Collection<Class> getSerializableClasses() {
        List<Class> classes = new LinkedList<Class>();
        classes.add(PetRace.class);
        return classes;
    }
}
