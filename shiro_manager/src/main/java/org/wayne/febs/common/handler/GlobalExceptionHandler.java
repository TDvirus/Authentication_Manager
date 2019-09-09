package org.wayne.febs.common.handler;

import lombok.extern.slf4j.Slf4j;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.wayne.febs.common.entity.FebsResponse;
import org.wayne.febs.common.exception.FebsException;

@Slf4j
@RestControllerAdvice
@Order(value = Ordered.HIGHEST_PRECEDENCE)
public class GlobalExceptionHandler {

    @ExceptionHandler(value = Exception.class)
    public FebsResponse handleException(Exception e) {
        log.error("系统内部异常，异常信息", e);
        return new FebsResponse().code(500);
    }

    @ExceptionHandler(value = FebsException.class)
    public FebsResponse handleFebsException(FebsException e) {
        log.error("系统错误", e);
        return new FebsResponse().code(500).message(e.getMessage());
    }
}
