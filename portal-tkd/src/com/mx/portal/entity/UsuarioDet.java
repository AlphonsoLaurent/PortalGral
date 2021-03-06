/*
 * Created on 4 may 2017 ( Time 11:16:38 )
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
 * Persistent class for entity stored in table "usuario_det"
 *
 * @author Telosys Tools Generator
 *
 */

@Entity
@Table(name="usuario_det", schema="loggin", catalog="TAKEDA" )
// Define named queries here
@NamedQueries ( {
  @NamedQuery ( name="UsuarioDet.countAll", query="SELECT COUNT(x) FROM UsuarioDet x" )
} )
public class UsuarioDet implements Serializable {

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
    @Column(name="telefono1")
    private String     telefono1    ;

    @Column(name="telefono2")
    private String     telefono2    ;

    @Column(name="telcelular1")
    private String     telcelular1  ;

    @Column(name="telcelular2")
    private String     telcelular2  ;

    @Column(name="calle")
    private String     calle        ;

    @Column(name="colonia")
    private String     colonia      ;

    @Column(name="estado")
    private String     estado       ;

    @Column(name="delegacion_municipio")
    private String     delegacionMunicipio ;

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
    public UsuarioDet() {
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
    //--- DATABASE MAPPING : telefono1 ( nvarchar ) 
    public void setTelefono1( String telefono1 ) {
        this.telefono1 = telefono1;
    }
    public String getTelefono1() {
        return this.telefono1;
    }

    //--- DATABASE MAPPING : telefono2 ( nvarchar ) 
    public void setTelefono2( String telefono2 ) {
        this.telefono2 = telefono2;
    }
    public String getTelefono2() {
        return this.telefono2;
    }

    //--- DATABASE MAPPING : telcelular1 ( nvarchar ) 
    public void setTelcelular1( String telcelular1 ) {
        this.telcelular1 = telcelular1;
    }
    public String getTelcelular1() {
        return this.telcelular1;
    }

    //--- DATABASE MAPPING : telcelular2 ( nvarchar ) 
    public void setTelcelular2( String telcelular2 ) {
        this.telcelular2 = telcelular2;
    }
    public String getTelcelular2() {
        return this.telcelular2;
    }

    //--- DATABASE MAPPING : calle ( nvarchar ) 
    public void setCalle( String calle ) {
        this.calle = calle;
    }
    public String getCalle() {
        return this.calle;
    }

    //--- DATABASE MAPPING : colonia ( nvarchar ) 
    public void setColonia( String colonia ) {
        this.colonia = colonia;
    }
    public String getColonia() {
        return this.colonia;
    }

    //--- DATABASE MAPPING : estado ( nvarchar ) 
    public void setEstado( String estado ) {
        this.estado = estado;
    }
    public String getEstado() {
        return this.estado;
    }

    //--- DATABASE MAPPING : delegacion_municipio ( nvarchar ) 
    public void setDelegacionMunicipio( String delegacionMunicipio ) {
        this.delegacionMunicipio = delegacionMunicipio;
    }
    public String getDelegacionMunicipio() {
        return this.delegacionMunicipio;
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
        sb.append(telefono1);
        sb.append("|");
        sb.append(telefono2);
        sb.append("|");
        sb.append(telcelular1);
        sb.append("|");
        sb.append(telcelular2);
        sb.append("|");
        sb.append(calle);
        sb.append("|");
        sb.append(colonia);
        sb.append("|");
        sb.append(estado);
        sb.append("|");
        sb.append(delegacionMunicipio);
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
