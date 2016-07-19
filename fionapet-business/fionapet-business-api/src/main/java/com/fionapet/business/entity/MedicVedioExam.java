package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;

import javax.persistence.Entity;
import javax.persistence.Table;

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

