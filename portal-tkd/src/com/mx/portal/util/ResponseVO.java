package com.mx.portal.util;

import java.util.List;

public class ResponseVO {
	private String estatus;
	private String msgExito;
	private List<Object> lstResponse;
	public String getEstatus() {
		return estatus;
	}
	public void setEstatus(String estatus) {
		this.estatus = estatus;
	}
	public String getMsgExito() {
		return msgExito;
	}
	public void setMsgExito(String msgExito) {
		this.msgExito = msgExito;
	}
	public List<Object> getLstResponse() {
		return lstResponse;
	}
	public void setLstResponse(List<Object> lstResponse) {
		this.lstResponse = lstResponse;
	}
}
