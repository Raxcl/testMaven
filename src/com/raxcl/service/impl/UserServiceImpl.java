package com.raxcl.service.impl;

import com.raxcl.base.BaseDao;
import com.raxcl.base.BaseServiceImpl;
import com.raxcl.mapper.UserMapper;
import com.raxcl.po.User;
import com.raxcl.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public BaseDao<User> getBaseDao() {
        return userMapper;
    }
}
