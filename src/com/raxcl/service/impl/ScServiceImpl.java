package com.raxcl.service.impl;

import com.raxcl.base.BaseDao;
import com.raxcl.base.BaseServiceImpl;
import com.raxcl.mapper.ScMapper;
import com.raxcl.po.Sc;
import com.raxcl.service.ScService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScServiceImpl extends BaseServiceImpl<Sc> implements ScService {
    @Autowired
    private ScMapper scMapper;

    @Override
    public BaseDao<Sc> getBaseDao() {
        return scMapper;
    }
}
