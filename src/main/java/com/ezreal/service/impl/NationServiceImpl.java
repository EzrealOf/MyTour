package com.ezreal.service.impl;

import com.ezreal.beans.NationBean;
import com.ezreal.mapper.NationMapper;
import com.ezreal.service.INationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Ezreal# on 2017/4/29.
 */
@Service
public class NationServiceImpl implements INationService{

    @Resource
    private NationMapper nationMapper;
    @Override
    public NationBean selectNationByName(String nationname) throws Exception {

        return nationMapper.selectNationByName(nationname);
    }
}
