package es.uca.iw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Formaciondemandante {

	/**
     */
    @ManyToOne
    private Formacion idFormacionDemandanteFormacion;

	/**
     */
    @ManyToOne
    private Demandante idFormacionDemandanteDemandante;

	
	/**
     */
    @ManyToOne
	private Centro idFormacionDemandanteCentro; 

   
}
