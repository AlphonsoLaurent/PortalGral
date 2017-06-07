package com.mx.portal.daoifz;

import java.util.List;

import com.mx.portal.entity.Catalogo;
import com.mx.portal.vo.CatalogoVO;

public interface CatalogosDAO extends OperacionesBasicIfz {
	public List<CatalogoVO> getCatalogo(Catalogo entidad);
	public CatalogoVO findByDescription(String entidad);
	List<CatalogoVO> getListCatalogos();
}
