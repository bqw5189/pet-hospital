package cn.fiona.pet.account.vo;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * uuid 视图对象
 *
 * Created by tom on 16/6/28.
 */
public class UuidVO {
    private String uuid;

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
