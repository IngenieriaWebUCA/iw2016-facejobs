// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.Empresa;
import es.uca.iw.domain.Sede;

privileged aspect Sede_Roo_JavaBean {
    
    public String Sede.getNombre() {
        return this.nombre;
    }
    
    public void Sede.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String Sede.getCiudad() {
        return this.ciudad;
    }
    
    public void Sede.setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }
    
    public Empresa Sede.getIdEmpresa() {
        return this.idEmpresa;
    }
    
    public void Sede.setIdEmpresa(Empresa idEmpresa) {
        this.idEmpresa = idEmpresa;
    }
    
}
