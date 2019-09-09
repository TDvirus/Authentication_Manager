package org.wayne.febs.common.exception;

/**
 * 限流异常
 */
public class LimitAccessException extends Exception {

    private static final long serialVersionUID = -2217408692268645521L;

    public LimitAccessException(String message) {
        super(message);
    }
}
