package com.cn.dao1;

import java.util.List;

import com.cn.pojo.Userinfo;

public interface IUserinfoDao {
	public boolean insert(Userinfo userinfo) throws Exception;
	 public List<Userinfo> findAll(String keyWord) throws Exception;
	boolean exist(Userinfo existornot) throws Exception;
}
