// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.Usuario;
import es.uca.iw.domain.UsuarioDataOnDemand;
import es.uca.iw.reference.TipoUsu;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect UsuarioDataOnDemand_Roo_DataOnDemand {
    
    declare @type: UsuarioDataOnDemand: @Component;
    
    private Random UsuarioDataOnDemand.rnd = new SecureRandom();
    
    private List<Usuario> UsuarioDataOnDemand.data;
    
    public Usuario UsuarioDataOnDemand.getNewTransientUsuario(int index) {
        Usuario obj = new Usuario();
        setIdTipoUsu(obj, index);
        setLogin(obj, index);
        setPassword(obj, index);
        return obj;
    }
    
    public void UsuarioDataOnDemand.setIdTipoUsu(Usuario obj, int index) {
        TipoUsu idTipoUsu = TipoUsu.class.getEnumConstants()[0];
        obj.setIdTipoUsu(idTipoUsu);
    }
    
    public void UsuarioDataOnDemand.setLogin(Usuario obj, int index) {
        String login = "login_" + index;
        obj.setLogin(login);
    }
    
    public void UsuarioDataOnDemand.setPassword(Usuario obj, int index) {
        String password = "password_" + index;
        obj.setPassword(password);
    }
    
    public Usuario UsuarioDataOnDemand.getSpecificUsuario(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Usuario obj = data.get(index);
        Long id = obj.getId();
        return Usuario.findUsuario(id);
    }
    
    public Usuario UsuarioDataOnDemand.getRandomUsuario() {
        init();
        Usuario obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Usuario.findUsuario(id);
    }
    
    public boolean UsuarioDataOnDemand.modifyUsuario(Usuario obj) {
        return false;
    }
    
    public void UsuarioDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Usuario.findUsuarioEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Usuario' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Usuario>();
        for (int i = 0; i < 10; i++) {
            Usuario obj = getNewTransientUsuario(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
