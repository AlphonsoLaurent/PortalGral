package com.mx.portal.ejbifz;

import java.util.List;

import javax.ejb.Local;

import com.mx.portal.vo.CatalogoVO;

@Local
public interface CatalogoBeanLocal { 
	boolean saveOrUpdate(CatalogoVO elemento); 
	List<CatalogoVO> getCatalogo(CatalogoVO elemento); 
	CatalogoVO findByDescription(String entidad);
	List<CatalogoVO> getListCatalogos();
	boolean delete(CatalogoVO elemento);
}
