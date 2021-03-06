// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.domain;

import es.uca.iw.domain.DemandanteDataOnDemand;
import es.uca.iw.domain.ExperienciaDataOnDemand;
import es.uca.iw.domain.OfertaDataOnDemand;
import es.uca.iw.domain.Puesto;
import es.uca.iw.domain.PuestoDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect PuestoDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PuestoDataOnDemand: @Component;
    
    private Random PuestoDataOnDemand.rnd = new SecureRandom();
    
    private List<Puesto> PuestoDataOnDemand.data;
    
    @Autowired
    DemandanteDataOnDemand PuestoDataOnDemand.demandanteDataOnDemand;
    
    @Autowired
    ExperienciaDataOnDemand PuestoDataOnDemand.experienciaDataOnDemand;
    
    @Autowired
    OfertaDataOnDemand PuestoDataOnDemand.ofertaDataOnDemand;
    
    public Puesto PuestoDataOnDemand.getNewTransientPuesto(int index) {
        Puesto obj = new Puesto();
        return obj;
    }
    
    public Puesto PuestoDataOnDemand.getSpecificPuesto(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Puesto obj = data.get(index);
        Long id = obj.getId();
        return Puesto.findPuesto(id);
    }
    
    public Puesto PuestoDataOnDemand.getRandomPuesto() {
        init();
        Puesto obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Puesto.findPuesto(id);
    }
    
    public boolean PuestoDataOnDemand.modifyPuesto(Puesto obj) {
        return false;
    }
    
    public void PuestoDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Puesto.findPuestoEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Puesto' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Puesto>();
        for (int i = 0; i < 10; i++) {
            Puesto obj = getNewTransientPuesto(i);
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
