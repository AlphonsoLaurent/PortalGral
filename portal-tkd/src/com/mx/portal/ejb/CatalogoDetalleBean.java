package com.mx.portal.ejb;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.mx.portal.daoifz.CatalogosDAO;
import com.mx.portal.daoifz.CatalogosDetalleDAO;
import com.mx.portal.ejbifz.CatalogoDetalleBeanLocal;
import com.mx.portal.entity.Catalogo;
import com.mx.portal.entity.CatalogoDetalle;
import com.mx.portal.vo.CatalogoDetalleVO;
import com.mx.portal.vo.CatalogoVO;

/**
 * Session Bean implementation class CatalogoDetalleBean
 */
@Stateless
@LocalBean
public class CatalogoDetalleBean implements CatalogoDetalleBeanLocal {
	
	@Autowired
	CatalogosDAO catalogosDAO;
	
	@Autowired
	CatalogosDetalleDAO catalogosDetalleDAO;	
    /**
     * Default constructor. 
     */
    public CatalogoDetalleBean() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public boolean save(CatalogoDetalleVO elemento) {
		CatalogoDetalle catalogoDetalle = new CatalogoDetalle();
		BeanUtils.copyProperties(catalogoDetalle, elemento); 
		return catalogosDetalleDAO.save(catalogoDetalle);
	}

	@Override
	public boolean saveOrUpdate(CatalogoDetalleVO elemento) {
		CatalogoDetalle catalogoDetalle = new CatalogoDetalle();
		BeanUtils.copyProperties(catalogoDetalle, elemento); 
		return catalogosDetalleDAO.saveOrUpdate(catalogoDetalle);
	}

	@Override
	public boolean update(CatalogoDetalleVO elemento) {
		CatalogoDetalle catalogoDetalle = new CatalogoDetalle();
		BeanUtils.copyProperties(catalogoDetalle, elemento); 
		return catalogosDetalleDAO.update(catalogoDetalle);
	}

	@Override
	public List<CatalogoDetalleVO> getCatalogo(CatalogoDetalleVO elemento) {
		CatalogoDetalle catalogoDetalle = new CatalogoDetalle();
//		BeanUtils.copyProperties(catalogoDetalle, elemento);
		Catalogo catalogo = new Catalogo();
		catalogo.setIdCatalogo(elemento.getIdCatalogo());
//		BeanUtils.copyProperties(elemento.getIdCatalogo(), catalogo);
		catalogoDetalle.setCatalogo(catalogo);
		return catalogosDetalleDAO.getCatalogo(catalogoDetalle);
	}

	@Override
	public List<CatalogoVO> getCatalogo(Catalogo elemento) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CatalogoVO findByDescription(String entidad) {
		System.out.println("public Catalogo findByDescription(String entidad) ");
		return catalogosDAO.findByDescription(entidad);
	}

	@Override
	public CatalogoDetalleVO  findById(Integer id) {
		return catalogosDetalleDAO.findById(id);
	}
 
}
