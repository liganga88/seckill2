package org.seckill.exception;

/**
 * ��ɱҵ������쳣
 * Created by Administrator on 2017/3/6.
 */
public class SeckillException extends RuntimeException {
    public SeckillException(String message) {
        super(message);
    }

    public SeckillException(String message, Throwable cause) {
        super(message, cause);
    }
}
