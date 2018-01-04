package com.wme.ttmall.service.impl;

import com.wme.ttmall.dao.TbUserMapper;
import com.wme.ttmall.pojo.po.TbUser;
import com.wme.ttmall.service.ITbUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TbUserService implements ITbUserService {

    @Autowired
    private TbUserMapper dao;

    @Override
    public TbUser selectTbUserById(Long id) {
        TbUser user = dao.selectByPrimaryKey(id);
        return user;
    }
}
