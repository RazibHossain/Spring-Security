package com.razib.security.userdetailsservice.services;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.List;

public class InmemoryUserDetailsService implements UserDetailsService {

    List<UserDetails> users;
    public InmemoryUserDetailsService(List<UserDetails> users){
        this.users=users;
    }


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
       return users.stream()
                .filter(
                        u->u.getUsername().equals(username))
                .findFirst()
                .orElseThrow(
                        ()->new UsernameNotFoundException("User Not Found")
                );
    }
}
