package com.mx.portal.daoifz;

public interface OperacionesBasicIfz {
	public boolean save(Object entidad); 
	public boolean saveOrUpdate(Object entidad);
	public boolean update(Object entidad);
	public boolean delete(Object entidad);
}
