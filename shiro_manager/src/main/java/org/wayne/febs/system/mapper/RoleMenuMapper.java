package org.wayne.febs.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.wayne.febs.system.entity.RoleMenu;


public interface RoleMenuMapper extends BaseMapper<RoleMenu> {
    /**
     * 递归删除菜单/按钮
     *
     * @param menuId menuId
     */
    void deleteRoleMenus(String menuId);
}
