package com.razib.security.Basic.Security.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
public class SecurityConfig {

    @Bean
    //ei bean ekta validate user k load kore return kore dei
    public UserDetailsService userDetailsService(){
        InMemoryUserDetailsManager userDetails = new InMemoryUserDetailsManager();
        //ekta user create kore nilam in-memory
        UserDetails user=User.withUsername("admin")
                .password("admin")
                .authorities("read")
                .build();
        UserDetails user2=User.withUsername("admin1234")
                .password("admin1234")
                .authorities("read")
                .build();
        userDetails.createUser(user);
        userDetails.createUser(user2);
        return userDetails;
    }

    @Bean
   public PasswordEncoder passwordEncoder(){
        return NoOpPasswordEncoder.getInstance();
    }

//    @Bean
//    public BCryptPasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }

}
