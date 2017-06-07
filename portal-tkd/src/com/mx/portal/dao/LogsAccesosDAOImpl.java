package com.mx.portal.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.transform.Transformers;

import com.mx.portal.daoifz.LogsAccesosDAO;
import com.mx.portal.entity.LogsAcceso;
import com.mx.portal.vo.LogsAccesoVO;

public class LogsAccesosDAOImpl extends GeneralBaseDAO implements LogsAccesosDAO{
	public List<LogsAccesoVO> getListLogs(){
		List<LogsAccesoVO> listOfLogs = null; 
		ProjectionList projectionList = Projections.projectionList();
		Criteria criteria =  getSession().createCriteria(LogsAcceso.class);	 
		projectionList.add(Projections.property("id"),"id"); 
		projectionList.add(Projections.property("ippublica"),"ippublica"); 
		projectionList.add(Projections.property("ipprivada"),"ipprivada");
		projectionList.add(Projections.property("activo"),"activo");
		projectionList.add(Projections.property("usuariocreacion"),"usuariocreacion"); 
		projectionList.add(Projections.property("usuariomodificacion"),"usuariomodificacion"); 
		projectionList.add(Projections.property("fechacreacion"),"fechacreacion"); 
		projectionList.add(Projections.property("fechamodificacion"),"fechamodificacion"); 
		criteria.setProjection(projectionList);
		criteria.setResultTransformer(Transformers.aliasToBean(LogsAccesoVO.class));
		listOfLogs = criteria.list();
		return listOfLogs; 
	}
}
