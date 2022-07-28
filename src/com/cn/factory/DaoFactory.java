package com.cn.factory;

import com.cn.dao.proxy.UserinfoDaoProxy;
import com.cn.dao1.IUserinfoDao;

public class DaoFactory {
	 public static IUserinfoDao getIEmpDAOInstance() throws Exception{
  	   return new UserinfoDaoProxy();
}
}
