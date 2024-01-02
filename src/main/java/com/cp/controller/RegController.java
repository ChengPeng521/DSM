package com.cp.controller;

import com.cp.pojo.Admin;
import com.cp.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RegController {

    @Autowired
    AdminService adminService;

    @PostMapping("/reg")
    public ResponseEntity<?>reg(@RequestParam String username, @RequestParam String password1,@RequestParam String password2, @RequestParam String phone){

        System.out.println(username+" "+password1+" "+password2+" "+phone);

        if(!password1.equals(password2)){
            return ResponseEntity.ok().body("0");
        }else{
            System.out.println("密码一样");
            Admin admin =new Admin(username,password1);
            admin.setPhone(phone);
            admin.setIssuper(0);
            admin.setAge(30);
            admin.setSex("男");
            boolean result = adminService.reg(admin);
            System.out.println(result);
            if(result){
                return ResponseEntity.ok().body("2");
            }else {
                adminService.addAdmin(admin);
                return ResponseEntity.ok().body("1");
            }
        }


    }
}
