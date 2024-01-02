package com.cp.dao;


import com.cp.pojo.Student;

import java.util.List;

public interface StudentDao {
    public Integer addStudent(Student s) ;
    public Integer updateStudent(Student s) ;
    public Integer deleteStudent(Integer studentid) ;
    public List<Student> query() ;
    public Student get(Integer studentid);
    public List<Student> getAllstudent(String dormitory) ;
}

