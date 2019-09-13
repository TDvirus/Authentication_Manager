## 本项目参考FEBS权限管理系统，原地址戳[这里](https://github.com/wuyouzhuguli/FEBS-Shiro)

--------


### 在原项目基础上删掉其他多余功能,只保留了核心功能，登录认证及权限管理。后端权限管理框架使用Shiro。


### 项目克隆到本地之后，打开application.yml和application-dev.yml并将其中内容修改为自己的mysql和redis连接配置。之后打开redis服务器即可成功运行项目。（注：编辑器需安装lombok插件！！！否则启动会报错！）


### 系统登录账户可查看shiro_manager/sql/db.sql下的user表获取登录用户名和密码。


### 数据访问层使用mybatis-plus，使用到了它的通用CRUD、SQL条件构造器以及分页插件功能。项目引入thymeleaf-extras-shiro依赖，实现页面按钮级权限控制。


未完待续...
