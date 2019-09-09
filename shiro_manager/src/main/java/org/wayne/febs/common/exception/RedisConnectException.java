package org.wayne.febs.common.exception;

/**
 * Redis连接异常
 */
public class RedisConnectException extends Exception {

    private static final long serialVersionUID = 6642641992003123463L;

    public RedisConnectException(String message) {
        super(message);
    }
}
