package com.guide.init;

import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

import com.alibaba.druid.support.http.WebStatFilter;

/**
 * druid过滤器.
 * 
 * @author Administrator
 *
 */
@WebFilter(filterName = "druidWebStatFilter", urlPatterns = "/*", initParams = {
		@WebInitParam(name = "exclusions", value = "*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/font-awesome-4.6.3/*,/druid/*")// 忽略资源
})
public class DruidStatFilter extends WebStatFilter {

}