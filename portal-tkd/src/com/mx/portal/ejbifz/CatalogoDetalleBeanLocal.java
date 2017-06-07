package com.mx.portal.ejbifz;

import java.util.List;

import javax.ejb.Local;

import com.mx.portal.entity.Catalogo;
import com.mx.portal.entity.CatalogoDetalle;
import com.mx.portal.vo.CatalogoDetalleVO;
import com.mx.portal.vo.CatalogoVO;

@Local
public interface CatalogoDetalleBeanLocal {
	public boolean save(CatalogoDetalleVO elemento);
	public boolean saveOrUpdate(CatalogoDetalleVO elemento);
	public boolean update(CatalogoDetalleVO elemento);
	public List<CatalogoDetalleVO> getCatalogo(CatalogoDetalleVO elemento);
	public CatalogoDetalleVO findById(Integer id);
	public List<CatalogoVO> getCatalogo(Catalogo elemento); 
	public CatalogoVO findByDescription(String entidad);
}
