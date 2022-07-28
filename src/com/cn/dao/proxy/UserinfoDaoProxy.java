package com.cn.dao.proxy;

import java.util.List;

import com.cn.dao.impl.UserinfoDaoImpl;
import com.cn.dao1.IUserinfoDao;
import com.cn.db.DataBaseConnection;
import com.cn.pojo.Userinfo;

public class UserinfoDaoProxy implements IUserinfoDao {
	 private DataBaseConnection dbc=null;
     private IUserinfoDao dao=null;
     
     public UserinfoDaoProxy() throws Exception{
    	 this.dbc=new DataBaseConnection();
    	 this.dao=new UserinfoDaoImpl(this.dbc.getConnection());
     }
     
     @Override
	public boolean insert(Userinfo userinfo) throws Exception {
		boolean flag=false;
		try {
			flag=this.dao.insert(userinfo);
		}catch(Exception e) {
			throw e;
		}finally {
			this.dbc.close();
		}
		return flag;
	
	}

	@Override
	public List<Userinfo> findAll(String keyWord) throws Exception {
		List<Userinfo> all=null;
		try {
			all=this.dao.findAll(keyWord);   
		}catch(Exception e) {
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}

	@Override
	public boolean exist(Userinfo existornot) throws Exception {
		boolean flag=false;
		try {
			flag=this.dao.exist(existornot);
		}catch(Exception e) {
			throw e;
		}finally {
			this.dbc.close();
		}
		return flag;
	
	}
}
