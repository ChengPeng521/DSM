package com.cp.dao.impl;

import com.cp.dao.AdminDao;
import com.cp.pojo.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AdminDaoImpl implements AdminDao {

    @Autowired
    JdbcTemplate jdbcTemplate;
    @Override
    public Integer addAdmin(Admin d) {
        return jdbcTemplate.update("INSERT INTO admin(username,password,issuper,sex,age,phone) values(?,?,?,?,?,?)", d.getUsername(), d.getPassword(), d.getIssuper(), d.getSex(), d.getAge(), d.getPhone());
    }
    @Override
    public Integer updateAdmin(Admin d) {
        return jdbcTemplate.update("UPDATE admin set username=?, password=?, issuper=?,sex=? ,age=? , phone=? where id=?", d.getUsername(), d.getPassword(), d.getIssuper(), d.getSex(), d.getAge(), d.getPhone(), d.getId());
    }

    @Override
    public Integer deleteAdmin(Integer id) {
        return jdbcTemplate.update("delete from admin where id=?", id);
    }

    @Override
    public List<Admin> query() {
        //将数据库查询结果转换为Java类对象
        return jdbcTemplate.query("select * from Admin", new BeanPropertyRowMapper<Admin>(Admin.class));
    }

    @Override
    public Admin get(String username) {

        try {
            return jdbcTemplate.queryForObject("select * from  Admin where username=?", new BeanPropertyRowMapper<Admin>(Admin.class), username);
        }catch (Exception e){
            return null;
        }
    }
}
