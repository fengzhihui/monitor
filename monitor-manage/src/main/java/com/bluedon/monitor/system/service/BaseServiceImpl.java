package com.bluedon.monitor.system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bluedon.monitor.common.dao.IBaseDao;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;

/**
 * @author  : jason
 * @date    : 2015年3月10日
 * @module  : 系统模块 
 * @comment : 逻辑处理基础实现类
 */
@Service("baseServiceImpl")
@Transactional(propagation= Propagation.REQUIRED)
public class BaseServiceImpl implements IBaseService {
	
	@Autowired
	@Qualifier("hibernateDao")
	private IBaseDao<?> baseHibernateDao;
	
	/**
	 * 通用添加方法
	 */
	public boolean add(Object obj) {
		this.baseHibernateDao.save(obj);
		return true;
	}

	/**
	 * 通用删除方法
	 */
	public boolean del(Object obj) {
		this.baseHibernateDao.delete(obj);
		return true;
	}
	
	/**
	 * 通用修改方法
	 */
	public boolean update(Object obj) {
		this.baseHibernateDao.update(obj);
		return true;
	}

	public Object loadById(Class clazz, Serializable id) {

		return this.baseHibernateDao.queryById(clazz,id);
	}
	
}
