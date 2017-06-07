/**
 * 
 */
package com.mx.portal.controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mx.portal.ejbifz.CatalogoDetalleBeanLocal;
import com.mx.portal.util.Constante;
import com.mx.portal.util.ResponseVO;
import com.mx.portal.vo.CatalogoDetalleVO;
import com.mx.portal.vo.CatalogoVO;

/**
 * @author sk3214
 *
 */
@Controller
public class CatalogoDetalleController {
	private static final Logger logger = LoggerFactory.getLogger(CatalogoController.class); 
	@EJB 
	private CatalogoDetalleBeanLocal catalogoDetalleBean;
	
	@RequestMapping(value = "/listDetalles", method = {RequestMethod.GET, RequestMethod.POST}, headers = {Constante.ACCEPT_JSON})
	public  @ResponseBody ResponseVO listDetalles(HttpServletRequest request, @RequestParam(value="tipoDeCatalogos") String tipoDeCatalogos)
			throws Exception {
		logger.info("This methods gettings all catalogs...");
		CatalogoDetalleVO swtCatalogoDetalle = new CatalogoDetalleVO();
		CatalogoVO catalogo = new CatalogoVO();	
		BeanUtils.copyProperties(catalogo, catalogoDetalleBean.findByDescription(tipoDeCatalogos));
		swtCatalogoDetalle.setIdCatalogo(catalogo.getIdCatalogo());
		ResponseVO response = new ResponseVO();
		response.setEstatus("OK");
		response.setMsgExito("Es un exito");
		response.setLstResponse((List)catalogoDetalleBean.getCatalogo(swtCatalogoDetalle)); 
		return response;
	}
	
	@RequestMapping(value = "/findCdById", method = {RequestMethod.GET, RequestMethod.POST}, headers = {Constante.ACCEPT_JSON}) 
	public  @ResponseBody CatalogoDetalleVO findCdById(HttpServletRequest request, @RequestParam(value="idCatDetalle") Integer idCatDetalle)
			throws Exception {
		logger.info("Buscando un catalogo detalle por Id...");
		return catalogoDetalleBean.findById(idCatDetalle);
	}
	
	
	@RequestMapping(value = "/saveCatalogoDetalle", method = {RequestMethod.GET, RequestMethod.POST}, headers = {Constante.ACCEPT_JSON}) 
	public  @ResponseBody CatalogoDetalleVO saveCd(HttpServletRequest request, @RequestParam(value="catDetalle") CatalogoDetalleVO catDetalle)
			throws Exception {
		logger.info("Guardando un catalogo detalle...");
			catalogoDetalleBean.save(catDetalle);
		return catDetalle;
	}
	
}
