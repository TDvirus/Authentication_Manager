package org.wayne.febs.system.controller;



import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.wayne.febs.common.annotation.Log;
import org.wayne.febs.common.controller.BaseController;
import org.wayne.febs.common.entity.FebsResponse;
import org.wayne.febs.common.entity.QueryRequest;
import org.wayne.febs.common.exception.FebsException;
import org.wayne.febs.system.entity.Role;
import org.wayne.febs.system.service.IRoleService;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.Map;


@Slf4j
@RestController
@RequestMapping("role")
public class RoleController extends BaseController {

    @Autowired
    private IRoleService roleService;

    @GetMapping
    public FebsResponse getAllRoles(Role role) {
        return new FebsResponse().success().data(roleService.findRoles(role));
    }

    @GetMapping("list")
    @RequiresPermissions("role:view")
    public FebsResponse roleList(Role role, QueryRequest request) {
        Map<String, Object> dataTable = getDataTable(this.roleService.findRoles(role, request));
        return new FebsResponse().success().data(dataTable);
    }

    @Log("新增角色")
    @PostMapping
    @RequiresPermissions("role:add")
    public FebsResponse addRole(@Valid Role role) throws FebsException {
        try {
            this.roleService.createRole(role);
            return new FebsResponse().success();
        } catch (Exception e) {
            String message = "新增角色失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除角色")
    @GetMapping("delete/{roleIds}")
    @RequiresPermissions("role:delete")
    public FebsResponse deleteRoles(@NotBlank(message = "{required}") @PathVariable String roleIds) throws FebsException {
        try {
            this.roleService.deleteRoles(roleIds);
            return new FebsResponse().success();
        } catch (Exception e) {
            String message = "删除角色失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改角色")
    @PostMapping("update")
    @RequiresPermissions("role:update")
    public FebsResponse updateRole(Role role) throws FebsException {
        try {
            this.roleService.updateRole(role);
            return new FebsResponse().success();
        } catch (Exception e) {
            String message = "修改角色失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

}
