package com.fionapet.business.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 图片信息
 * <p>
 * Created by tom on 16/7/2.
 */
@Entity
@Table(name = "t_images")
@ApiModel("图片信息")
public class Images extends CMSEntity {
    
    /**
     * petCode
     */
    @ApiModelProperty(value = "petCode", required = false)
    private String petCode;
    public String getPetCode() {
        return petCode;
    }
    public void setPetCode(String petCode) {
        this.petCode = petCode;
    }
    
    /**
     * petId
     */
    @ApiModelProperty(value = "petId", required = false)
    private String petId;
    public String getPetId() {
        return petId;
    }
    public void setPetId(String petId) {
        this.petId = petId;
    }
    
    /**
     * imageName
     */
    @ApiModelProperty(value = "imageName", required = false)
    private String imageName;
    public String getImageName() {
        return imageName;
    }
    public void setImageName(String imageName) {
        this.imageName = imageName;
    }
    
    /**
     * imageUrl
     */
    @ApiModelProperty(value = "imageUrl", required = false)
    private String imageUrl;
    public String getImageUrl() {
        return imageUrl;
    }
    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
    
    /**
     * imageDescipt
     */
    @ApiModelProperty(value = "imageDescipt", required = false)
    private String imageDescipt;
    public String getImageDescipt() {
        return imageDescipt;
    }
    public void setImageDescipt(String imageDescipt) {
        this.imageDescipt = imageDescipt;
    }
    
    /**
     * imageStyle
     */
    @ApiModelProperty(value = "imageStyle", required = false)
    private String imageStyle;
    public String getImageStyle() {
        return imageStyle;
    }
    public void setImageStyle(String imageStyle) {
        this.imageStyle = imageStyle;
    }
    
}

