package org.wayne.febs.system.service;


import com.baomidou.mybatisplus.extension.service.IService;
import org.wayne.febs.system.entity.UserRole;

import java.util.List;


public interface IUserRoleService extends IService<UserRole> {

    /**
     * 通过角色 id 删除
     *
     * @param roleIds 角色 id
     */
    void deleteUserRolesByRoleId(List<String> roleIds);

    /**
     * 通过用户 id 删除
     *
     * @param userIds 用户 id
     */
    void deleteUserRolesByUserId(List<String> userIds);
}
