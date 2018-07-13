package com.example.main.util;

import tk.mybatis.mapper.common.IdsMapper;
import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;
import tk.mybatis.mapper.common.condition.SelectByConditionMapper;

public interface BaseMapper<T> extends Mapper<T>, MySqlMapper<T>, IdsMapper<T>, SelectByConditionMapper<T> {
    // TODO
    // FIXME 特别注意，该接口不能被扫描到，否则会出错
}