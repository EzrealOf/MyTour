package com.ezreal.service;

import com.ezreal.beans.NationBean;

/**
 * Created by Ezreal# on 2017/4/29.
 */
public interface INationService {

    public NationBean selectNationByName(String nationname) throws Exception;
}
