package com.mx.portal.daoifz;

import java.util.List;

import com.mx.portal.entity.CatalogoDetalle;
import com.mx.portal.vo.CatalogoDetalleVO;

public interface CatalogosDetalleDAO extends OperacionesBasicIfz {
	public List<CatalogoDetalleVO> getCatalogo(CatalogoDetalle entidad);
	public CatalogoDetalleVO findById(Integer id);
}
