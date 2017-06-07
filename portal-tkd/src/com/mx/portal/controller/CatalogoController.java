package com.mx.portal.controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mx.portal.ejb.CatalogoBean;
import com.mx.portal.util.Constante;
import com.mx.portal.util.ResponseVO;
import com.mx.portal.vo.CatalogoVO;
@Controller
public class CatalogoController {
	private static final Logger logger = LoggerFactory.getLogger(CatalogoController.class); 
	
	@EJB
	private CatalogoBean catalogoBean;
	
	@RequestMapping(value = "/getListCatalogos", method = {RequestMethod.GET, RequestMethod.POST}, headers = {Constante.ACCEPT_JSON}) 
	public  @ResponseBody ResponseVO getListCatalogs(HttpServletRequest request)
			throws Exception {
		logger.info("gettings catalogs of catalogs...");
		ResponseVO response = new ResponseVO();
		response.setEstatus("OK");
		response.setMsgExito("Es un exito");
		response.setLstResponse((List)catalogoBean.getListCatalogos()); 
		return response;
	}
	
	@RequestMapping(value = "/saveCatalogo", method = {RequestMethod.GET, RequestMethod.POST}, headers = {Constante.ACCEPT_JSON}) 
	public  @ResponseBody ResponseVO saveCatalogo(HttpServletRequest request, @Valid @RequestBody CatalogoVO catalogoVO)
			throws Exception {
		logger.info("Guardando un catalogo detalle...");
		catalogoBean.saveOrUpdate(catalogoVO);
		ResponseVO response = new ResponseVO();
		response.setEstatus("OK");
		response.setMsgExito("Es un exito");
		response.setLstResponse((List)catalogoBean.getListCatalogos());
		return response;
	}
	
	
	@RequestMapping(value = "/deleteCatalogo", method = {RequestMethod.GET, RequestMethod.POST}, headers = {Constante.ACCEPT_JSON}) 
	public  @ResponseBody ResponseVO deleteCatalogo(HttpServletRequest request, @Valid @RequestBody CatalogoVO catalogoVO)
			throws Exception {
		logger.info("Guardando un catalogo detalle...");
		catalogoVO.setUsuariocreacion("usrdesa");
		catalogoVO.setUsuariomodificacion("usrdesa");
		catalogoVO.setActivo(null);
		catalogoBean.delete(catalogoVO);
		ResponseVO response = new ResponseVO();
		response.setEstatus("OK");
		response.setMsgExito("Es un exito");
		response.setLstResponse((List)catalogoBean.getListCatalogos());
		return response;
	}
	
}
