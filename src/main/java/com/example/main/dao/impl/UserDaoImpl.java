package com.example.main.dao.impl;

import com.example.main.dao.UserDao;
import com.example.main.entity.User;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

public class UserDaoImpl implements UserDao{
    @Override
    public int deleteByPrimaryKey(Object key) {
        return 0;
    }

    @Override
    public int delete(User record) {
        return 0;
    }

    @Override
    public int insert(User record) {
        return 0;
    }

    @Override
    public int insertSelective(User record) {
        return 0;
    }

    @Override
    public boolean existsWithPrimaryKey(Object key) {
        return false;
    }

    @Override
    public List<User> selectAll() {
        return null;
    }

    @Override
    public User selectByPrimaryKey(Object key) {
        return null;
    }

    @Override
    public int selectCount(User record) {
        return 0;
    }

    @Override
    public List<User> select(User record) {
        return null;
    }

    @Override
    public User selectOne(User record) {

        return null;
    }

    @Override
    public int updateByPrimaryKey(User record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKeySelective(User record) {
        return 0;
    }

    @Override
    public List<User> selectByCondition(Object condition) {
        return null;
    }

    @Override
    public int deleteByExample(Object example) {
        return 0;
    }

    @Override
    public List<User> selectByExample(Object example) {
        return null;
    }

    @Override
    public int selectCountByExample(Object example) {
        return 0;
    }

    @Override
    public User selectOneByExample(Object example) {
        return null;
    }

    @Override
    public int updateByExample(User record, Object example) {
        return 0;
    }

    @Override
    public int updateByExampleSelective(User record, Object example) {
        return 0;
    }

    @Override
    public int deleteByIds(String ids) {
        return 0;
    }

    @Override
    public List<User> selectByIds(String ids) {
        return null;
    }

    @Override
    public List<User> selectByExampleAndRowBounds(Object example, RowBounds rowBounds) {
        return null;
    }

    @Override
    public List<User> selectByRowBounds(User record, RowBounds rowBounds) {
        return null;
    }

    @Override
    public int insertList(List<User> recordList) {
        return 0;
    }

    @Override
    public int insertUseGeneratedKeys(User record) {
        return 0;
    }
}
