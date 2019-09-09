package org.wayne.febs.system.controller;



import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.wayne.febs.common.annotation.Log;
import org.wayne.febs.common.controller.BaseController;
import org.wayne.febs.common.entity.FebsResponse;
import org.wayne.febs.common.entity.MenuTree;
import org.wayne.febs.common.exception.FebsException;
import org.wayne.febs.system.entity.Menu;
import org.wayne.febs.system.entity.User;
import org.wayne.febs.system.service.IMenuService;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;


@Slf4j
@RestController
@RequestMapping("menu")
public class MenuController extends BaseController {

    @Autowired
    private IMenuService menuService;

    @GetMapping("{username}")
    public FebsResponse getUserMenus(@NotBlank(message = "{required}") @PathVariable String username) throws FebsException {
        User currentUser = getCurrentUser();
        if (!StringUtils.equalsIgnoreCase(username, currentUser.getUsername()))
            throw new FebsException("您无权获取别人的菜单");
        MenuTree<Menu> userMenus = this.menuService.findUserMenus(username);
        return new FebsResponse().data(userMenus);
    }

    @GetMapping("tree")
    public FebsResponse getMenuTree(Menu menu) throws FebsException {
        try {
            MenuTree<Menu> menus = this.menuService.findMenus(menu);
            return new FebsResponse().success().data(menus.getChilds());
        } catch (Exception e) {
            String message = "获取菜单树失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("新增菜单/按钮")
    @PostMapping
    @RequiresPermissions("menu:add")
    public FebsResponse addMenu(@Valid Menu menu) throws FebsException {
        try {
            this.menuService.createMenu(menu);
            return new FebsResponse().success();
        } catch (Exception e) {
            String message = "新增菜单/按钮失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除菜单/按钮")
    @GetMapping("delete/{menuIds}")
    @RequiresPermissions("menu:delete")
    public FebsResponse deleteMenus(@NotBlank(message = "{required}") @PathVariable String menuIds) throws FebsException {
        try {
            this.menuService.deleteMeuns(menuIds);
            return new FebsResponse().success();
        } catch (Exception e) {
            String message = "删除菜单/按钮失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改菜单/按钮")
    @PostMapping("update")
    @RequiresPermissions("menu:update")
    public FebsResponse updateMenu(@Valid Menu menu) throws FebsException {
        try {
            this.menuService.updateMenu(menu);
            return new FebsResponse().success();
        } catch (Exception e) {
            String message = "修改菜单/按钮失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

}
