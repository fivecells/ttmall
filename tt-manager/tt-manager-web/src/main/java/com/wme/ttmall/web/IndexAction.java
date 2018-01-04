package com.wme.ttmall.web;

import com.wme.ttmall.pojo.po.TbUser;

import com.wme.ttmall.service.ITbUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexAction {
    @Autowired
    private ITbUserService service;

    @RequestMapping("/item")
    @ResponseBody
    public TbUser selectItem(){
        TbUser user = service.selectTbUserById(3l);
        return user;
    }
}
