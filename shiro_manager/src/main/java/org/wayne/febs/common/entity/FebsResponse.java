package org.wayne.febs.common.entity;

import org.springframework.http.HttpStatus;

import java.util.HashMap;

public class FebsResponse extends HashMap<String, Object> {

    public static final long serialVersionUID = 7855152686302009553L;

    public FebsResponse code(int status) {
        this.put("code", status);
        return this;
    }

    public FebsResponse data(Object data) {
        this.put("data", data);
        return this;
    }

    public FebsResponse message(String data) {
        this.put("data", data);
        return this;
    }

    public FebsResponse success() {
        this.code(200);
        return this;
    }

    public FebsResponse fail() {
        this.code(500);
        return this;
    }

    @Override
    public FebsResponse put(String key, Object value) {
        super.put(key, value);
        return this;
    }
}
