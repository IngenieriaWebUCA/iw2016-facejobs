// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.Demandante;
import es.uca.iw.domain.Inscripcion;
import es.uca.iw.domain.Oferta;

privileged aspect Inscripcion_Roo_JavaBean {
    
    public Integer Inscripcion.getIdoferta() {
        return this.idoferta;
    }
    
    public void Inscripcion.setIdoferta(Integer idoferta) {
        this.idoferta = idoferta;
    }
    
    public Integer Inscripcion.getEstado() {
        return this.estado;
    }
    
    public void Inscripcion.setEstado(Integer estado) {
        this.estado = estado;
    }
    
    public Demandante Inscripcion.getIdDemandante() {
        return this.idDemandante;
    }
    
    public void Inscripcion.setIdDemandante(Demandante idDemandante) {
        this.idDemandante = idDemandante;
    }
    
    public Oferta Inscripcion.getIdOferta() {
        return this.idOferta;
    }
    
    public void Inscripcion.setIdOferta(Oferta idOferta) {
        this.idOferta = idOferta;
    }
    
}
