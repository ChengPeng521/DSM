package com.cp.service.impl;

import com.cp.dao.AdminDao;
import com.cp.pojo.Admin;
import com.cp.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminDao adminDao;

    @Override
    public Integer addAdmin(Admin d) {
        return adminDao.addAdmin(d);
    }

    @Override
    public Integer updateAdmin(Admin d) {
        return adminDao.updateAdmin(d);
    }

    @Override
    public Integer deleteAdmin(Integer id) {
        return adminDao.deleteAdmin(id);
    }

    @Override
    public List<Admin> query() {
        return adminDao.query();
    }

    @Override
    public Admin get(String username) {
        return adminDao.get(username);
    }

    @Override
    public int login(Admin admin) {
        Admin findAdmin = adminDao.get(admin.getUsername());

        //System.out.println(admin.getUsername() + "  "+admin.getPassword());
        if(findAdmin == null){
            return 0;
        }else{
            if(!findAdmin.getPassword().equals(admin.getPassword())){
                return 2;
            }
        }
        return 1;
    }
    @Override
    public boolean reg(Admin admin) {
        Admin findAdmin = adminDao.get(admin.getUsername());
        if(findAdmin == null){
            return false;
        }
        return true;
    }
}
