package org.seckill.dto;

/**
 * Created by Administrator on 2017/3/31.
 */
//��װjson
public class SeckillResult<T> {
    private boolean success;
    private T data;
    private String error;
}
