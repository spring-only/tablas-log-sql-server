package com.springonly.tablaslog.entity;


import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name="persona")
public class PersonaEntity {
    public PersonaEntity(Long ID, String nombres, String apellidos, String lugarNacimiento, String estadoCivil, Date fechaModificacion) {
        this.ID = ID;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.lugarNacimiento = lugarNacimiento;
        this.estadoCivil = estadoCivil;
        this.fechaModificacion = fechaModificacion;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ID;

    private String nombres;

    private String apellidos;

    private String lugarNacimiento;

    private String estadoCivil;

    private Date fechaModificacion;

    public PersonaEntity() {
    }

    public Long getID() {
        return ID;
    }

    public void setID(Long ID) {
        this.ID = ID;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getLugarNacimiento() {
        return lugarNacimiento;
    }

    public void setLugarNacimiento(String lugarNacimiento) {
        this.lugarNacimiento = lugarNacimiento;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public Date getFechaModificacion() {
        return fechaModificacion;
    }

    public void setFechaModificacion(Date fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
}
