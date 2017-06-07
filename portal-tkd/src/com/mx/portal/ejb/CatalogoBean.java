package com.mx.portal.ejb;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import org.springframework.beans.factory.annotation.Autowired;

import com.mx.portal.daoifz.CatalogosDAO;
import com.mx.portal.ejbifz.CatalogoBeanLocal;
import com.mx.portal.entity.Catalogo;
import com.mx.portal.vo.CatalogoVO;

/**
 * Session Bean implementation class CatalogoBean
 */
@Stateless
@LocalBean
public class CatalogoBean implements CatalogoBeanLocal {
	
	@Autowired
	CatalogosDAO catalogosDAO;
    /**
     * Default cons	tructor. 
     */
    public CatalogoBean() {
        // TODO Auto-generated constructor stub
    }
 
	@Override
	public boolean saveOrUpdate(CatalogoVO elemento) {
//		Catalogo catalogo = (Catalogo) TransformarUtil.transformar(elemento);
		
		Catalogo catalogo = new Catalogo();
		catalogo.setIdCatalogo(elemento.getIdCatalogo());
		catalogo.setActivo(elemento.getActivo());
		catalogo.setDescripcion(elemento.getDescripcion());
		catalogo.setFechacreacion(elemento.getFechacreacion());
		catalogo.setFechamodificacion(elemento.getFechamodificacion());
		catalogo.setUsuariocreacion(elemento.getUsuariocreacion());
		catalogo.setUsuariomodificacion(elemento.getUsuariomodificacion());
		catalogosDAO.saveOrUpdate(catalogo);
		return false;
	}

	 
	@Override
	public List<CatalogoVO> getCatalogo(CatalogoVO elemento) {
		return catalogosDAO.getListCatalogos();
	}

	@Override
	public CatalogoVO findByDescription(String entidad) {
		// TODO Auto-generated method stub
		return catalogosDAO.findByDescription(entidad);
	}

	@Override
	public List<CatalogoVO> getListCatalogos() {
		return catalogosDAO.getListCatalogos();
	}

	@Override
	public boolean delete(CatalogoVO elemento) {
		Catalogo catalogo = new Catalogo();
		catalogo.setIdCatalogo(elemento.getIdCatalogo());
		catalogo.setActivo(elemento.getActivo());
		catalogo.setDescripcion(elemento.getDescripcion());
		catalogo.setFechacreacion(elemento.getFechacreacion());
		catalogo.setFechamodificacion(elemento.getFechamodificacion());
		catalogo.setUsuariocreacion(elemento.getUsuariocreacion());
		catalogo.setUsuariomodificacion(elemento.getUsuariomodificacion());
		return catalogosDAO.delete(catalogo);
	}
 
}
