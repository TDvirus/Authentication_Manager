package org.wayne.febs.common.runner;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;
import org.wayne.febs.common.properties.FebsProperties;
import org.wayne.febs.monitor.service.IRedisService;

import java.net.InetAddress;

@Slf4j
@Component
public class ManagerStartedRunner implements ApplicationRunner {

    @Autowired
    private ConfigurableApplicationContext context;
    @Autowired
    private FebsProperties febsProperties;
    @Autowired
    private IRedisService redisService;

    @Value("${server.port:8080}")
    private String port;
    @Value("${server.servlet.context-path:}")
    private String contextPath;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        try {
            redisService.exists("febs_test");
        } catch (Exception e) {
            log.error("系统启动失败，{}", e.getMessage());
            log.error("Redis连接异常，请检查Redis连接配置并确保Redis服务已启动");
            context.close();
        }

        if (context.isActive()) {
            InetAddress address = InetAddress.getLocalHost();
            String url = String.format("http://%s:%s", address.getHostAddress(), port);
            String loginUrl = febsProperties.getShiro().getLoginUrl();
            if (StringUtils.isNoneBlank(contextPath))
                url += contextPath;
            if (StringUtils.isNoneBlank(loginUrl))
                url += loginUrl;
            log.info("权限系统启动完毕，地址: {}", url);
        }
    }
}
