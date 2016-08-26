// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.FormacionDataOnDemand;
import es.uca.iw.domain.Tipoformacion;
import es.uca.iw.domain.TipoformacionDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect TipoformacionDataOnDemand_Roo_DataOnDemand {
    
    declare @type: TipoformacionDataOnDemand: @Component;
    
    private Random TipoformacionDataOnDemand.rnd = new SecureRandom();
    
    private List<Tipoformacion> TipoformacionDataOnDemand.data;
    
    @Autowired
    FormacionDataOnDemand TipoformacionDataOnDemand.formacionDataOnDemand;
    
    public Tipoformacion TipoformacionDataOnDemand.getNewTransientTipoformacion(int index) {
        Tipoformacion obj = new Tipoformacion();
        setNombre(obj, index);
        return obj;
    }
    
    public void TipoformacionDataOnDemand.setNombre(Tipoformacion obj, int index) {
        String nombre = "nombre_" + index;
        obj.setNombre(nombre);
    }
    
    public Tipoformacion TipoformacionDataOnDemand.getSpecificTipoformacion(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Tipoformacion obj = data.get(index);
        Long id = obj.getId();
        return Tipoformacion.findTipoformacion(id);
    }
    
    public Tipoformacion TipoformacionDataOnDemand.getRandomTipoformacion() {
        init();
        Tipoformacion obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Tipoformacion.findTipoformacion(id);
    }
    
    public boolean TipoformacionDataOnDemand.modifyTipoformacion(Tipoformacion obj) {
        return false;
    }
    
    public void TipoformacionDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Tipoformacion.findTipoformacionEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Tipoformacion' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Tipoformacion>();
        for (int i = 0; i < 10; i++) {
            Tipoformacion obj = getNewTransientTipoformacion(i);
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
