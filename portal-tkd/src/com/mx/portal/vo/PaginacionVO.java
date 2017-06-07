package com.mx.portal.vo;

import java.io.Serializable;

public class PaginacionVO implements Serializable{
	private int bloquesRegistros;
	private int paginar;
	public int getBloquesRegistros() {
		return bloquesRegistros;
	}
	public void setBloquesRegistros(int bloquesRegistros) {
		this.bloquesRegistros = bloquesRegistros;
	}
	public int getPaginar() {
		return paginar;
	}
	public void setPaginar(int paginar) {
		this.paginar = paginar;
	}
}
