package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 医生影像样例
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_medic_vedio_exam")
@ApiModel("医生影像样例")
public class MedicVedioExam extends CMSEntity {
    
}

