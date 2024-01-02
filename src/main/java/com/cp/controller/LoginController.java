package com.cp.controller;

import com.cp.pojo.Admin;
import com.cp.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

    @Autowired
    AdminService adminService;

    @PostMapping("/login")
    public ResponseEntity<?>login(@RequestParam String username,@RequestParam String password){

        System.out.println(username+" "+password);
        Admin admin =new Admin(username,password);
        Integer result = adminService.login(admin);
        System.out.println(result);
        //0-不存在 1--成功  2--密码错误
        if(result==0){
            return ResponseEntity.ok().body("0");
        }else if(result==2){
            return ResponseEntity.ok().body("2");
        }
        return ResponseEntity.ok().body("1");
    }
}
