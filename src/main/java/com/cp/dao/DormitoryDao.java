package com.cp.dao;


import com.cp.pojo.Dormitory;

import java.util.List;

public interface DormitoryDao {
    public Integer addDormitory(Dormitory d) ;
    public Integer updateDormitory(Dormitory d) ;
    public Integer deleteDormitory(Integer dormitoryid) ;
    public List<Dormitory> query() ;
    public Dormitory get(String dormitoryid);
}
