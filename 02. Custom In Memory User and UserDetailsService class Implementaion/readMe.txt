//Inmemory User class and Userdetails Service

Flow:

Spring Security te 2 ta term ache UserDetails and UserDetailsService.

UserDetails: User er information rakhe like username,password,authority,expired,enable etc.
UserDetailsService: Ekta interface jeitate shudu matro ektai interface ache jar kaj hocche login form theke user niye 
check kore(from db,inmemory,hardcoded). If login user is valid then it load to context and return the user.

Amader moto custom User class jeita UserDetails k implemnt kore and InmemoryUserDetailsService Class jeita UsereDetailsService
k implements kore. Erpor amader moto custom logic likhe customize korte pari.

InmemoryUserDetailsService.Java
Ekta empty List<UserDetails> users list declare kora ache and ekta constructor define kora ache. Ei class er kono object
create korte gele list of Userdetails pass korte hobe jeita users list a set hobe. Jokhon login er shomoi loadUserByUsername
method call hobe tokhon users list a check korbe oi username a keu ache kina thakle user return korbe other wise exeption dibe.

SecurityConfig.java
Custom UserDetailsService class likhle ta bean hishebe config class a bole dite hobe. SecurityConfig class a ekta method 
likhlam jeita ekta UserDetailsService class er object return kore. Ei method a ekta user class er object create kore ta
list a add kore InmemoryUserDetailsClass k call kore user load kore nei. Ja build in UserDetailsService er moto kaj korbe
amader custom UserdetailsService
