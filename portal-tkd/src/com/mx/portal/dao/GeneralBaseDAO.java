package com.mx.portal.dao;

import com.mx.portal.daoifz.OperacionesBasicIfz;

public class GeneralBaseDAO extends BaseDAO implements OperacionesBasicIfz{
	  
	@Override
	public boolean save(Object entidad) {
		this.getHibernateTemplate().save(entidad);
		return true;
	}

	@Override
	public boolean saveOrUpdate(Object entidad) {
		this.getHibernateTemplate().saveOrUpdate(entidad);
		return true;
	}

	@Override
	public boolean update(Object entidad) {
		this.getHibernateTemplate().update(entidad);
		return true;
	}

	@Override
	public boolean delete(Object entidad) {
		this.getHibernateTemplate().delete(entidad);
		return true;
	} 
	
	 
}
