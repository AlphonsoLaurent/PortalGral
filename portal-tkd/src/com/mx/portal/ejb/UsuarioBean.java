package com.mx.portal.ejb;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import com.mx.portal.ejbifz.UsuarioLocal;

/**
 * Session Bean implementation class Usuario
 */
@Stateless
@LocalBean
public class UsuarioBean implements UsuarioLocal {

    /**
     * Default constructor. 
     */
    public UsuarioBean() {
        // TODO Auto-generated constructor stub
    }

}
