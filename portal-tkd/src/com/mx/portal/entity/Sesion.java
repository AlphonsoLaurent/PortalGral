/*
 * Created on 4 may 2017 ( Time 11:16:37 )
 * Generated by Telosys Tools Generator ( version 2.1.1 )
 */
// This Bean has a basic Primary Key (not composite) 

package com.mx.portal.entity;

import java.io.Serializable;

//import javax.validation.constraints.* ;
//import org.hibernate.validator.constraints.* ;

import java.util.Date;

import javax.persistence.*;

/**
 * Persistent class for entity stored in table "sesion"
 *
 * @author Telosys Tools Generator
 *
 */

@Entity
@Table(name="sesion", schema="loggin", catalog="TAKEDA" )
// Define named queries here
@NamedQueries ( {
  @NamedQuery ( name="Sesion.countAll", query="SELECT COUNT(x) FROM Sesion x" )
} )
public class Sesion implements Serializable {

    private static final long serialVersionUID = 1L;

    //----------------------------------------------------------------------
    // ENTITY PRIMARY KEY ( BASED ON A SINGLE FIELD )
    //----------------------------------------------------------------------
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="id", nullable=false)
    private Integer    id           ;


    //----------------------------------------------------------------------
    // ENTITY DATA FIELDS 
    //----------------------------------------------------------------------    
    @Column(name="sesion")
    private String     sesion       ;

    @Column(name="activo")
    private Byte       activo       ;

    @Column(name="usuariocreacion")
    private String     usuariocreacion ;

    @Column(name="usuariomodificacion")
    private String     usuariomodificacion ;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="fechacreacion")
    private Date       fechacreacion ;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="fechamodificacion", nullable=false)
    private Date       fechamodificacion ;

	// "idusuario" (column "idusuario") is not defined by itself because used as FK in a link 


    //----------------------------------------------------------------------
    // ENTITY LINKS ( RELATIONSHIP )
    //----------------------------------------------------------------------
    @ManyToOne
    @JoinColumn(name="idusuario", referencedColumnName="id")
    private Usuario usuario     ;


    //----------------------------------------------------------------------
    // CONSTRUCTOR(S)
    //----------------------------------------------------------------------
    public Sesion() {
		super();
    }
    
    //----------------------------------------------------------------------
    // GETTER & SETTER FOR THE KEY FIELD
    //----------------------------------------------------------------------
    public void setId( Integer id ) {
        this.id = id ;
    }
    public Integer getId() {
        return this.id;
    }

    //----------------------------------------------------------------------
    // GETTERS & SETTERS FOR FIELDS
    //----------------------------------------------------------------------
    //--- DATABASE MAPPING : sesion ( nvarchar ) 
    public void setSesion( String sesion ) {
        this.sesion = sesion;
    }
    public String getSesion() {
        return this.sesion;
    }

    //--- DATABASE MAPPING : activo ( tinyint ) 
    public void setActivo( Byte activo ) {
        this.activo = activo;
    }
    public Byte getActivo() {
        return this.activo;
    }

    //--- DATABASE MAPPING : usuariocreacion ( nvarchar ) 
    public void setUsuariocreacion( String usuariocreacion ) {
        this.usuariocreacion = usuariocreacion;
    }
    public String getUsuariocreacion() {
        return this.usuariocreacion;
    }

    //--- DATABASE MAPPING : usuariomodificacion ( nvarchar ) 
    public void setUsuariomodificacion( String usuariomodificacion ) {
        this.usuariomodificacion = usuariomodificacion;
    }
    public String getUsuariomodificacion() {
        return this.usuariomodificacion;
    }

    //--- DATABASE MAPPING : fechacreacion ( datetime ) 
    public void setFechacreacion( Date fechacreacion ) {
        this.fechacreacion = fechacreacion;
    }
    public Date getFechacreacion() {
        return this.fechacreacion;
    }

    //--- DATABASE MAPPING : fechamodificacion ( datetime ) 
    public void setFechamodificacion( Date fechamodificacion ) {
        this.fechamodificacion = fechamodificacion;
    }
    public Date getFechamodificacion() {
        return this.fechamodificacion;
    }


    //----------------------------------------------------------------------
    // GETTERS & SETTERS FOR LINKS
    //----------------------------------------------------------------------
    public void setUsuario( Usuario usuario ) {
        this.usuario = usuario;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }


    //----------------------------------------------------------------------
    // toString METHOD
    //----------------------------------------------------------------------
    public String toString() { 
        StringBuffer sb = new StringBuffer(); 
        sb.append("["); 
        sb.append(id);
        sb.append("]:"); 
        sb.append(sesion);
        sb.append("|");
        sb.append(activo);
        sb.append("|");
        sb.append(usuariocreacion);
        sb.append("|");
        sb.append(usuariomodificacion);
        sb.append("|");
        sb.append(fechacreacion);
        sb.append("|");
        sb.append(fechamodificacion);
        return sb.toString(); 
    } 

}