package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 检查处理单据
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_check_process_sheet")
@ApiModel("检查处理单据")
public class CheckProcessSheet extends CMSEntity {
    
}

