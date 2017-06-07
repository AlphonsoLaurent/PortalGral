package com.mx.portal.dao;

import java.lang.reflect.InvocationTargetException;
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

import com.mx.portal.daoifz.CatalogosDAO;
import com.mx.portal.entity.Catalogo;
import com.mx.portal.vo.CatalogoVO;

public class CatalogosDAOImpl extends GeneralBaseDAO implements CatalogosDAO {
	@SuppressWarnings("unchecked")
	@Override
	public List<CatalogoVO> getCatalogo(Catalogo entidad) {
		// TODO Auto-generated method stub
		List<CatalogoVO> listOfCatalogs = null; 
		ProjectionList projectionList = Projections.projectionList();
		Criteria criteria =  getSession().createCriteria(Catalogo.class);	 
		criteria.add(Restrictions.eq("idCatalogo", entidad.getIdCatalogo())); 
		projectionList.add(Projections.property("descripcion"),"descripcion"); 
		projectionList.add(Projections.property("idCatalogo"),"idCatalogo"); 
		projectionList.add(Projections.property("fechacreacion"),"fechacreacion"); 
		projectionList.add(Projections.property("fechamodificacion"),"fechamodificacion"); 
		criteria.setProjection(projectionList);
		criteria.setResultTransformer(Transformers.aliasToBean(CatalogoVO.class));
		listOfCatalogs = criteria.list();
		return listOfCatalogs; 
	}
 

	@SuppressWarnings("unchecked")
	@Override
	public List<CatalogoVO> getListCatalogos() {
		// TODO Auto-generated method stub
		List<CatalogoVO> listOfCatalogs = null; 
		ProjectionList projectionList = Projections.projectionList();
		Criteria criteria =  getSession().createCriteria(Catalogo.class);	 
		projectionList.add(Projections.property("descripcion"),"descripcion"); 
		projectionList.add(Projections.property("idCatalogo"),"idCatalogo");
		projectionList.add(Projections.property("fechacreacion"),"fechacreacion"); 
		projectionList.add(Projections.property("fechamodificacion"),"fechamodificacion"); 
		criteria.setProjection(projectionList);
		criteria.setResultTransformer(Transformers.aliasToBean(CatalogoVO.class));
		listOfCatalogs = criteria.list();
		return listOfCatalogs; 
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public CatalogoVO findByDescription(String entidad) {
		CatalogoVO catVO = null;
		DetachedCriteria maxId = DetachedCriteria.forClass(Catalogo.class)
				.setProjection(Projections.max("idCatalogo"))
				.add(Restrictions.eq("descripcion", entidad));
		Catalogo catalogo = (Catalogo) DataAccessUtils.uniqueResult(this.getHibernateTemplate().findByCriteria(
				DetachedCriteria.forClass(Catalogo.class)
		        .add(Property.forName("idCatalogo").eq(maxId))
				));
		
		if(catalogo != null){
			try {
				catVO = new CatalogoVO();
				BeanUtils.copyProperties(catVO, catalogo);
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
		return catVO;
	}

 
}
