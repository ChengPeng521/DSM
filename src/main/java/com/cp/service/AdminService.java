package com.cp.service;


import com.cp.pojo.Admin;

import java.util.List;

public interface AdminService {

    public Integer addAdmin(Admin d) ;
    public Integer updateAdmin(Admin d) ;
    public Integer deleteAdmin(Integer id) ;
    public List<Admin> query() ;
    public Admin get(String username);
    int login(Admin admin);
    boolean reg(Admin admin);
}
