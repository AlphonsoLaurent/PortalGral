package com.mx.portal.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoadJSPController {
	private static final Logger logger = LoggerFactory.getLogger(LoadJSPController.class);
	private static final String ACCEPT_JSON = "Accept=*/*";
	
	@RequestMapping(value = "/aplicaciones", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String aplicaciones(HttpServletRequest request) throws Exception {
		logger.info("gettings catalogo general");
		return "configuration/catalogs/aplicaciones";
	}
	
	@RequestMapping(value = "/catalogogral", method = {RequestMethod.POST,RequestMethod.GET}, headers = {"Accept=text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}) 
	public String catalogoGeneral(HttpServletRequest request) throws Exception {
		logger.info("gettings catalogo general");
		return "configuration/catalogs/catalogo";
	}
	
	@RequestMapping(value = "/catalogodet", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String catalogodet(HttpServletRequest request) throws Exception {
		logger.info("gettings catalogo general");
		return "configuration/catalogs/catalogodet";
	}
	
	@RequestMapping(value = "/detalleUsuario", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String detalleUsuario(HttpServletRequest request) throws Exception {		logger.info("gettings catalogo general");
		return "configuration/catalogs/detalle-usuario";
	}
	
	@RequestMapping(value = "/excepcionAplicaciones", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String excepcionUplicaciones(HttpServletRequest request) throws Exception {
		logger.info("gettings catalogo general");
		return "configuration/catalogs/excepcion-aplicaciones";
	}
	
	@RequestMapping(value = "/historialPassword", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String historialPassword(HttpServletRequest request) throws Exception {
		logger.info("gettings catalogo general");
		return "configuration/catalogs/historial-password";
	}
	
	@RequestMapping(value = "/logsAccesos", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String logsAccesos(HttpServletRequest request) throws Exception {
		logger.info("gettings catalogo general");
		return "configuration/catalogs/logs-accesos";
	}
	
	@RequestMapping(value = "/permisos", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String permisos(HttpServletRequest request) throws Exception {
		logger.info("gettings catalogo general");
		return "configuration/catalogs/permisos";
	}

	@RequestMapping(value = "/respuestasPreguntasSecretas", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String respuestasPreguntasSecretas(HttpServletRequest request) throws Exception {
		logger.info("gettings catalogo general");
		return "configuration/catalogs/respuestas-preg-secretas";
	}
	
	@RequestMapping(value = "/roles", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String roles(HttpServletRequest request) throws Exception {
		logger.info("gettings catalogo roles");
		return "configuration/catalogs/roles";
	}
	
	@RequestMapping(value = "/session", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String session(HttpServletRequest request) throws Exception {
		logger.info("gettings catalog session");
		return "configuration/catalogs/session";
	}
	
	@RequestMapping(value = "/usuarios", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String usuarios(HttpServletRequest request) throws Exception {
		logger.info("gettings catalog session");
		return "configuration/catalogs/usuarios";
	}
}
