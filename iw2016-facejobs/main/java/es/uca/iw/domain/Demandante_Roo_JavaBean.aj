// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.Demandante;
import es.uca.iw.domain.Formaciondemandante;
import es.uca.iw.domain.Inscripcion;
import es.uca.iw.domain.Puesto;
import es.uca.iw.domain.Usuario;
import java.util.Date;

privileged aspect Demandante_Roo_JavaBean {
    
    public String Demandante.getNombre() {
        return this.nombre;
    }
    
    public void Demandante.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public Date Demandante.getFacNac() {
        return this.facNac;
    }
    
    public void Demandante.setFacNac(Date facNac) {
        this.facNac = facNac;
    }
    
    public Integer Demandante.getSexo() {
        return this.sexo;
    }
    
    public void Demandante.setSexo(Integer sexo) {
        this.sexo = sexo;
    }
    
    public String Demandante.getDireccion() {
        return this.direccion;
    }
    
    public void Demandante.setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
    public String Demandante.getEmail() {
        return this.email;
    }
    
    public void Demandante.setEmail(String email) {
        this.email = email;
    }
    
    public String Demandante.getTelefono() {
        return this.telefono;
    }
    
    public void Demandante.setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    public Integer Demandante.getIdusuario() {
        return this.idusuario;
    }
    
    public void Demandante.setIdusuario(Integer idusuario) {
        this.idusuario = idusuario;
    }
    
    public String Demandante.getResumenTray() {
        return this.resumenTray;
    }
    
    public void Demandante.setResumenTray(String resumenTray) {
        this.resumenTray = resumenTray;
    }
    
    public String Demandante.getFoto() {
        return this.foto;
    }
    
    public void Demandante.setFoto(String foto) {
        this.foto = foto;
    }
    
    public String Demandante.getTrabajosDisp() {
        return this.trabajosDisp;
    }
    
    public void Demandante.setTrabajosDisp(String trabajosDisp) {
        this.trabajosDisp = trabajosDisp;
    }
    
    public String Demandante.getExperiencia() {
        return this.experiencia;
    }
    
    public void Demandante.setExperiencia(String experiencia) {
        this.experiencia = experiencia;
    }
    
    public Usuario Demandante.getIdusuarioDem() {
        return this.idusuarioDem;
    }
    
    public void Demandante.setIdusuarioDem(Usuario idusuarioDem) {
        this.idusuarioDem = idusuarioDem;
    }
    
    public Inscripcion Demandante.getIdInscripcionDemandante() {
        return this.idInscripcionDemandante;
    }
    
    public void Demandante.setIdInscripcionDemandante(Inscripcion idInscripcionDemandante) {
        this.idInscripcionDemandante = idInscripcionDemandante;
    }
    
    public Demandante Demandante.getIdExperienciaDemandante() {
        return this.idExperienciaDemandante;
    }
    
    public void Demandante.setIdExperienciaDemandante(Demandante idExperienciaDemandante) {
        this.idExperienciaDemandante = idExperienciaDemandante;
    }
    
    public Puesto Demandante.getIdPuestoDemandante() {
        return this.idPuestoDemandante;
    }
    
    public void Demandante.setIdPuestoDemandante(Puesto idPuestoDemandante) {
        this.idPuestoDemandante = idPuestoDemandante;
    }
    
    public Formaciondemandante Demandante.getIdFormacionDemandanteDemandante() {
        return this.idFormacionDemandanteDemandante;
    }
    
    public void Demandante.setIdFormacionDemandanteDemandante(Formaciondemandante idFormacionDemandanteDemandante) {
        this.idFormacionDemandanteDemandante = idFormacionDemandanteDemandante;
    }
    
}
