package org.wayne.febs.common.exception;

/**
 * FEBS系统内部异常
 */
public class FebsException extends Exception {

    private static final long serialVersionUID = -6601146936784427112L;

    public FebsException(String message) {
        super(message);
    }
}
