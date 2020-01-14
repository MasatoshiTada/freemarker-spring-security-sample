package com.example;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import javax.annotation.PostConstruct;
import java.util.Collections;

@Configuration
public class MyFreeMarkerConfig {

    private final FreeMarkerConfigurer freeMarkerConfigurer;

    public MyFreeMarkerConfig(FreeMarkerConfigurer freeMarkerConfigurer) {
        this.freeMarkerConfigurer = freeMarkerConfigurer;
    }

    @PostConstruct
    public void init() {
        freeMarkerConfigurer.getTaglibFactory().setClasspathTlds(
                Collections.singletonList("/META-INF/security.tld"));
    }
}
