// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.Usuario;
import es.uca.iw.reference.TipoUsu;

privileged aspect Usuario_Roo_JavaBean {
    
    public String Usuario.getLogin() {
        return this.login;
    }
    
    public void Usuario.setLogin(String login) {
        this.login = login;
    }
    
    public String Usuario.getPassword() {
        return this.password;
    }
    
    public void Usuario.setPassword(String password) {
        this.password = password;
    }
    
    public TipoUsu Usuario.getIdTipoUsu() {
        return this.idTipoUsu;
    }
    
    public void Usuario.setIdTipoUsu(TipoUsu idTipoUsu) {
        this.idTipoUsu = idTipoUsu;
    }
    
}
