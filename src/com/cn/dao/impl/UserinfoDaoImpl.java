package com.cn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.cn.dao1.IUserinfoDao;
import com.cn.pojo.Userinfo;

public class UserinfoDaoImpl implements IUserinfoDao{
	private Connection con=null;
	private PreparedStatement pstmt=null;
	
    public UserinfoDaoImpl(Connection con) {
    	this.con=con;
    }
    @Override
	public boolean insert(Userinfo userinfo) throws Exception {
		boolean flag=false;
		String sql="insert into userinfo(username,password) values(?,?)";
		pstmt=this.con.prepareStatement(sql);
		this.pstmt.setString(1,userinfo.getUsername());
		this.pstmt.setString(2,userinfo.getPassword());
		if(this.pstmt.executeUpdate()>0) {
			flag=true;
		}
		return flag;
	}
    @Override
	public List<Userinfo> findAll(String keyWord) throws Exception {
		List<Userinfo> all=new ArrayList<Userinfo>();
		String sql="select * from userinfo where username like ?";
		pstmt=this.con.prepareStatement(sql);
		this.pstmt.setString(1,"%"+keyWord+"%");
		ResultSet rs=this.pstmt.executeQuery();
		Userinfo user=null;
		while(rs.next()) {
			user=new Userinfo();
			user.setUsername(rs.getString(1));
			user.setPassword(rs.getString(2));
			all.add(user);
		}
		return all;
	}
    @Override

    public boolean exist(Userinfo existornot) throws Exception {
    	boolean rt=false;
    	Userinfo ui=new Userinfo();
		String sql="select * from Userinfo where username=? and password=?";
		pstmt=this.con.prepareStatement(sql);
		this.pstmt.setString(1,existornot.getUsername());
		this.pstmt.setString(2,existornot.getPassword());
		ResultSet rs=this.pstmt.executeQuery();
		rs.last();
		int count =rs.getRow();
		if(count==0) {
			rt=false;
		}else {
			rt=true;
		}
		return rt;
    }
}

