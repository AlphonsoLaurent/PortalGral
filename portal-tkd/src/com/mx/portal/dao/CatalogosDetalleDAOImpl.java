package com.mx.portal.dao;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.Transformers;
import org.springframework.dao.support.DataAccessUtils;

import com.mx.portal.daoifz.CatalogosDetalleDAO;
import com.mx.portal.entity.CatalogoDetalle;
import com.mx.portal.vo.CatalogoDetalleVO;

public class CatalogosDetalleDAOImpl extends GeneralBaseDAO implements CatalogosDetalleDAO {
 
	@Override
	public List<CatalogoDetalleVO> getCatalogo(CatalogoDetalle entidad) {
		// TODO Auto-generated method stub
		List<CatalogoDetalleVO> listOfCatalogs1 = new ArrayList<CatalogoDetalleVO>(); 
		ProjectionList projectionList = Projections.projectionList();
		Criteria criteria =  getSession().createCriteria(CatalogoDetalle.class);	 
		criteria.add(Restrictions.eq("catalogo.idCatalogo", entidad.getCatalogo().getIdCatalogo())); 
		projectionList.add(Projections.property("catalogo.idCatalogo"),"idCatalogo");
		projectionList.add(Projections.property("idCatDetalle"),"idCatDetalle"); 
		projectionList.add(Projections.property("clave"),"clave");
		projectionList.add(Projections.property("descripcion"),"descripcion"); 
		criteria.setProjection(projectionList);
		criteria.setResultTransformer(Transformers.aliasToBean(CatalogoDetalleVO.class));
		List<CatalogoDetalleVO> listOfCatalogs = criteria.list();
		return listOfCatalogs; 
	}

	@SuppressWarnings("unchecked")
	@Override
	public CatalogoDetalleVO findById(Integer id) { 
		CatalogoDetalleVO cdVO = null;
		DetachedCriteria maxId = DetachedCriteria.forClass(CatalogoDetalle.class)
				.setProjection(Projections.max("idCatDetalle"))
				.add(Restrictions.eq("idCatDetalle", id));
		CatalogoDetalle cd= (CatalogoDetalle) DataAccessUtils.uniqueResult(this.getHibernateTemplate().findByCriteria(
				DetachedCriteria.forClass(CatalogoDetalle.class)
		        .add(Property.forName("idCatDetalle").eq(maxId))
				));
		
		if(cd != null){
			try {
				cdVO = new CatalogoDetalleVO();
				BeanUtils.copyProperties(cdVO, cd);
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
		return cdVO;
	}
 
}
