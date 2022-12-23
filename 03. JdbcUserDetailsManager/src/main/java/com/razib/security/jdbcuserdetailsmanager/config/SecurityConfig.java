package com.razib.security.jdbcuserdetailsmanager.config;

//import com.razib.security.userdetailsservice.models.User;
//import com.razib.security.userdetailsservice.services.InmemoryUserDetailsService;
import com.razib.security.jdbcuserdetailsmanager.models.User;
import com.razib.security.jdbcuserdetailsmanager.services.InmemoryUserDetailsService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

//import org.springframework.security.core.userdetails.User;

@Configuration
public class SecurityConfig {

    @Bean
    public UserDetailsService userDetailsService(DataSource dataSource){
        return new JdbcUserDetailsManager(dataSource);
    }

//    @Bean
//    public UserDetailsService userDetailsService(){
//        UserDetails u = new User("admin","admin","read");
//        List<UserDetails> users = new ArrayList<>();
//        users.add(u);
//        return new InmemoryUserDetailsService(users);
//    }

    @Bean
   public PasswordEncoder passwordEncoder(){
        return NoOpPasswordEncoder.getInstance();
    }

//    @Bean
//    public BCryptPasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }

}
