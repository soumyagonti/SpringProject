package com.examples.filters;

import javax.servlet.*;
import java.io.IOException;

public class CustomFilter implements Filter
{
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("Custom Filter Method is Triggered");
        filterChain.doFilter(servletRequest,servletResponse);
    }
}
