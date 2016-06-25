package cn.fiona.pet.account.facade;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiResponse;

import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

/**
 * DTO to customize the returned message
 *
 * @author lishen
 */
@XmlRootElement
@ApiModel("返回结果")
public class RestResult<T> implements Serializable {
    public static final int OK = 0;
    public static final String M_OK = "成功";

    public static RestResult OK(Object data){
        RestResult restResult = new RestResult();
        restResult.setErrorMessage(M_OK);
        restResult.setErrorCode(OK);
        restResult.setData(data);
        return restResult;
    }

    @ApiModelProperty("错误码:0 无错误信息;404 未找到资源 500 服务器错误")
    private int errorCode;
    @ApiModelProperty("错误信息")
    private String errorMessage;
    @ApiModelProperty("数据信息")
    private T data;

    public int getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(int errorCode) {
        this.errorCode = errorCode;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
