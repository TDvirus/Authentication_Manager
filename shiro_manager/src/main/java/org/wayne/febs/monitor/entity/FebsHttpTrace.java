package org.wayne.febs.monitor.entity;

import lombok.Data;

import java.io.Serializable;
import java.net.URI;


@Data
public class FebsHttpTrace implements Serializable {

    private static final long serialVersionUID = -5312134876637369096L;

    /**
     * 请求时间
     */
    private String requestTime;
    /**
     * 请求方法
     */
    private String method;
    /**
     * 请求 url
     */
    private URI url;
    /**
     * 响应状态
     */
    private int status;
    /**
     * 耗时
     */
    private Long timeTaken;

}
