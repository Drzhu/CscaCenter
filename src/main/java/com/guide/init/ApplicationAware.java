package com.guide.init;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ApplicationAware {

	@Bean
	public SpringContextUtils springContextUtils(){
		return new SpringContextUtils();
	}
}
