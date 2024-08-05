package com.examples.handlers;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.Date;
import java.util.Random;

public class CustomSuccessHandler implements AuthenticationSuccessHandler
{

    JdbcTemplate jdbcTemplate;
    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private RedirectStrategy redirectStrategy=new DefaultRedirectStrategy();
    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
        Date loginTime = new Date();
        System.out.println("User '" + userDetails.getUsername() + "' logged in at: " + loginTime);
        System.out.println("onAuthenticationSuccess method is triggered");
        if (authentication.isAuthenticated()) {
            System.out.println("Authentication Success");
            User user = (User) authentication.getPrincipal();
            String username = user.getUsername();
            System.out.println(username+" is logged in");
            int random = new Random().nextInt(10000);
            ServletContext session = httpServletRequest.getServletContext();
            session.setAttribute("random",random);
            int id = jdbcTemplate.queryForObject("select id from user where username = ?",Integer.class,username);
            Date date = new Date();
            jdbcTemplate.update("insert into user_login (id,username,random,login_time) values (?,?,?,?)",id,username,random,new Timestamp(date.getTime()));
            Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
            for (GrantedAuthority grantedAuthority : authorities) {

                if (grantedAuthority.getAuthority().equals("ROLE_USER"))
                    redirectStrategy.sendRedirect(httpServletRequest, httpServletResponse, "/afterLogin");
                else if(grantedAuthority.getAuthority().equals("ROLE_ADMIN"))
                    redirectStrategy.sendRedirect(httpServletRequest, httpServletResponse, "/admin");
                else
                    redirectStrategy.sendRedirect(httpServletRequest, httpServletResponse, "/std");

            }
        }
    }
}

