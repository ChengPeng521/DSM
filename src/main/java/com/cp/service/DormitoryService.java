package com.cp.service;


import com.cp.pojo.Dormitory;

import java.util.List;

public interface DormitoryService {
    public Integer addDormitory(Dormitory d) ;
    public Integer updateDormitory(Dormitory d) ;
    public Integer deleteDormitory(Integer dormitoryid) ;
    public List<Dormitory> query() ;
    public Dormitory get(String dormitoryid);
}



